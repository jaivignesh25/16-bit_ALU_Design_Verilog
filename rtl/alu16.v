`timescale 1ns / 1ps

module alu16(
    input  [15:0] A,
    input  [15:0] B,
    input  [3:0] opcode,

    output reg [15:0] Result,
    output reg Carry,
    output reg Zero,
    output reg Overflow,
    output reg Negative
);

reg [16:0] temp;

always @(*) begin

    Result = 16'd0;
    Carry = 1'b0;
    Overflow = 1'b0;

    case(opcode)

        4'b0000:
        begin
            temp = A + B;
            Result = temp[15:0];
            Carry = temp[16];
        end

        4'b0001:
        begin
            temp = A - B;
            Result = temp[15:0];
            Carry = temp[16];
        end

        4'b0010:
            Result = A & B;

        4'b0011:
            Result = A | B;

        4'b0100:
            Result = A ^ B;

        4'b0101:
            Result = ~A;

        4'b0110:
            Result = A << 1;

        4'b0111:
            Result = A >> 1;

        4'b1000:
            Result = A + 1;

        4'b1001:
            Result = A - 1;

        4'b1010:
        begin
            if(A>B)
                Result = 16'd1;
            else if(A==B)
                Result = 16'd0;
            else
                Result = 16'hFFFF;
        end

        4'b1011:
            Result = ~(A&B);

        4'b1100:
            Result = ~(A|B);

        4'b1101:
            Result = ~(A^B);

        4'b1110:
            Result = A;

        4'b1111:
            Result = B;

    endcase

    Zero = (Result==16'd0);

    Negative = Result[15];

    if(opcode==4'b0000)
        Overflow=(A[15]==B[15])&&(Result[15]!=A[15]);

    else if(opcode==4'b0001)
        Overflow=(A[15]!=B[15])&&(Result[15]!=A[15]);

    else
        Overflow=0;

end

endmodule
