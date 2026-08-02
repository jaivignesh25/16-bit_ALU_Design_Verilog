`timescale 1ns / 1ps

module alu16_tb;
reg [15:0] A;
reg [15:0] B;
reg [3:0] opcode;

wire [15:0] Result;
wire Carry;
wire Zero;
wire Overflow;
wire Negative;

alu16 uut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .Result(Result),
    .Carry(Carry),
    .Zero(Zero),
    .Overflow(Overflow),
    .Negative(Negative)
);

initial
begin

    $display("--------------------------------------------------------------");
    $display(" Time\tOpcode\tA\tB\tResult\tCarry\tZero\tOverflow\tNegative");
    $display("--------------------------------------------------------------");

    $monitor("%0t\t%b\t%d\t%d\t%d\t%b\t%b\t%b\t\t%b",
             $time, opcode, A, B, Result, Carry, Zero, Overflow, Negative);

    A = 16'd15;
    B = 16'd10;
    opcode = 4'b0000;
    #10;
    
    A = 16'd25;
    B = 16'd5;
    opcode = 4'b0001;
    #10;
    
    A = 16'd12;
    B = 16'd10;
    opcode = 4'b0010;
    #10;

    opcode = 4'b0011;
    #10;

    opcode = 4'b0100;
    #10;
    
    A = 16'd15;
    opcode = 4'b0101;
    #10;
    
    A = 16'd8;
    opcode = 4'b0110;
    #10;

    opcode = 4'b0111;
    #10;

    A = 16'd100;
    opcode = 4'b1000;
    #10;

    opcode = 4'b1001;
    #10;

    A = 16'd20;
    B = 16'd10;
    opcode = 4'b1010;
    #10;

    opcode = 4'b1011;
    #10;
    
    opcode = 4'b1100;
    #10;
    
    opcode = 4'b1101;
    #10;
    
    opcode = 4'b1110;
    #10;

    
    opcode = 4'b1111;
    #10;

    
    A = 16'd10;
    B = 16'd10;
    opcode = 4'b0001;
    #10;

    
    A = 16'hFFFF;
    B = 16'd1;
    opcode = 4'b0000;
    #10;
    
    A = 16'h7FFF;
    B = 16'd1;
    opcode = 4'b0000;
    #10;

    $display("---------------- Simulation Finished ----------------");
    $finish;

end

endmodule