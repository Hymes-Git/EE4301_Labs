`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2024 10:17:28 AM
// Design Name: 
// Module Name: RISCV_ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module RISCVALU(ALUctl, A, B, ALUout); 
    input [7:0] A;
    input [7:0] B;
    input [3:0] ALUctl;
    output reg [15:0] ALUout;

reg [2:0] ALUop;

always @(*)
begin
case (ALUctl)
        4'b0000: ALUop = 3'b000;  // no button pressed
        4'b0001: ALUop = 3'b001;  // button 0 pressed
        4'b0010: ALUop = 3'b010;  // button 1 pressed
        4'b0100: ALUop = 3'b011;  // button 2 pressed
        4'b1000: ALUop = 3'b100;  // button 3 pressed
        4'b0011: ALUop = 3'b101;  // button 0 and button 1 pressed
        4'b0101: ALUop = 3'b110;  // button 0 and button 2 pressed
        4'b1001: ALUop = 3'b111;  // button 0 and button 3 pressed
//        default: ALUop = 3'b000;  
    endcase
  end


always @(*)
begin
   case (ALUop)
   3'b000: ALUout <= A + B;
   3'b001: ALUout <= A - B;
   3'b010: ALUout <= A & B;
   3'b011: ALUout <= A | B;
   3'b100: ALUout <= A < B ? 1:0;
   3'b101: ALUout <= ~(A | B);
   3'b110: ALUout <= A >> 2;
   3'b111: ALUout <= A << 2;
//   default: ALUout <= 0;
   endcase 
end
    
endmodule
