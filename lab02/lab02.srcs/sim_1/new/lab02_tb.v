`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2024 10:25:31 AM
// Design Name: 
// Module Name: lab02_tb
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


module lab02_tb();
    
    reg rst;
    reg clk;
    wire [7:0] q;
    reg [7:0] seed;
    
    lfsr test (q, seed, clk, rst);
   
    initial begin
        
        seed = 8'b10101010;
        rst = 0;
        #50;
        rst = 1;
        #15;
        rst = 0;
        #200;
        seed = 8'b01010101;
        #10;
        rst = 1;
        #15;
        rst = 0;
        #200;
             
    end
    
    always begin
        
        clk = 1;
        # 5;
        clk = 0;
        # 5;
    end
    
endmodule
