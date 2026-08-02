# 16-bit Arithmetic Logic Unit (ALU) Design using Verilog HDL

A synthesizable **16-bit Arithmetic Logic Unit (ALU)** designed in **Verilog HDL** and verified using **Xilinx Vivado**. The ALU performs multiple arithmetic, logical, shift, and comparison operations based on a 4-bit opcode and generates status flags for processor-style computation. 


## Project Overview

The Arithmetic Logic Unit (ALU) is one of the fundamental building blocks of a processor. This project implements a 16-bit combinational ALU capable of performing **16 different operations** selected using a **4-bit opcode**.

The design is written in Verilog HDL, verified through simulation, and synthesized using Xilinx Vivado.

## Features

- 16-bit ALU Design
- Synthesizable Verilog HDL
- 16 Arithmetic & Logical Operations
- Carry Flag Generation
- Zero Flag Generation
- Overflow Detection
- Negative Flag Generation
- Behavioral Simulation
- RTL Schematic Generation
- Vivado Compatible


## Supported Operations

| Opcode | Operation |
|---------|-----------|
|0000|Addition|
|0001|Subtraction|
|0010|AND|
|0011|OR|
|0100|XOR|
|0101|NOT|
|0110|Left Shift|
|0111|Right Shift|
|1000|Increment|
|1001|Decrement|
|1010|Compare|
|1011|NAND|
|1100|NOR|
|1101|XNOR|
|1110|Pass A|
|1111|Pass B|


## Project Structure

16-bit_ALU_Design_Verilog/
│
├── alu16.v
├── alu16_tb.v
├── Block_Diagram.png
├── Internal_Architecture.png
├── RTL_Schematic.png
├── Simulation_Waveform.png
├── Documentation.pdf
└── README.md



## Inputs

| Signal | Width |
|---------|------|
|A|16-bit|
|B|16-bit|
|Opcode|4-bit|


## Outputs

| Signal | Width |
|---------|------|
|Result|16-bit|
|Carry|1-bit|
|Zero|1-bit|
|Overflow|1-bit|
|Negative|1-bit|


## Software Used

- Xilinx Vivado
- Verilog HDL
- Windows 10/11


## Simulation

Behavioral simulation verifies all supported operations using a dedicated Verilog testbench.

Example:

A = 15
B = 10
Opcode = 0000

Result = 25
Carry = 0

## RTL Design

The project generates an RTL schematic after synthesis, confirming that the design is fully synthesizable.


## Applications

- Processor Design
- FPGA Development
- Digital Electronics
- Computer Architecture
- Embedded Systems
- VLSI Design Education


## Future Enhancements

- 32-bit ALU
- 64-bit ALU
- Barrel Shifter
- Multiplier Unit
- Divider Unit
- Floating Point ALU
- RISC-V Processor Integration


## Author

**Jaivignesh M**

B.E. Electronics and Communication Engineering

University College of Engineering Kanchipuram

Interested in VLSI Design | Digital Design | FPGA | Verilog HDL


## License

This project is available for educational and learning purposes.
