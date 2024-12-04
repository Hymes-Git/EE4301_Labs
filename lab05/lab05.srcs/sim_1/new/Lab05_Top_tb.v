`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 10:41:01 AM
// Design Name: 
// Module Name: Lab05_Top_tb
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


module Lab05_Top_tb();

    reg clk;
    reg PCIncrement;
    wire [15:0] led;
    
    Lab05_Top test (clk, PCIncrement, led);
    
    initial begin
    
        PCIncrement = 1;
        clk = 0;
    
    end    
    
    
    always begin
    
        #20 clk = 1;
        #20 clk = 0;
    
    end

endmodule
