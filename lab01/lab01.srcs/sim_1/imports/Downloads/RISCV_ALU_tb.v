`timescale 1ns / 1ps

module RISCVALU_tb();

reg [7:0] A;
reg [7:0] B;
reg [3:0] ALUctl;
wire [15:0] ALUout;

RISCVALU uut(ALUctl, A, B, ALUout);

initial
begin
A = 8'b00000101; 
B = 8'b00000100;


ALUctl = 4'b0000; // A + B

#10
ALUctl = 4'b0001; // A - B

#10
ALUctl = 4'b0010; // A & B

#10
ALUctl = 4'b0100; // A | B

#10
ALUctl = 4'b1000; // A < B ? 1:0

#10
ALUctl = 4'b0011; // ~(A | B)

#10
ALUctl = 4'b0101; // A >> 2

#10
ALUctl = 4'b1001; // A << 2

#10
ALUctl = 4'b1110;   // Not defined state in the code



end

endmodule