`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 10:44:28 AM
// Design Name: 
// Module Name: casino_tb
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


module casino_tb();

    wire [1:0] status;
    reg [7:0] q;
    reg roll;
    reg rst;
    reg clock;

    Casino test(status, q, roll, rst, clock);
    
    initial begin
    
        clock <= 1'b0; // initial status
        rst <= 1'b1;
        roll <= 1'b0;
        q <= 8'b0;
                
        #6 rst <= 1'b0;
        #5 q <= 8'hFF; // test win
        #5 roll <= 1'b1;
        #10 roll <= 1'b0;
        #25 rst <= 1'b1;
        #5 rst <= 1'b0;
        #5 q <= 8'h04; // test lose
        #5 roll <= 1'b1;
        #10 roll <= 1'b0;
        #25 rst <= 1'b1;
        #5 rst <= 1'b0;
        #5 q <= 8'h0F; // test A0 then lose
        #5 roll <= 1'b1;
        #10 roll <= 1'b0;
        #5 q <= 8'hFF;
        #5 roll <= 1'b1;
        #10 roll <= 1'b0;
        #25 rst <= 1'b1;
        #5 rst <= 1'b0;
        #5 q <= 8'h0F; // test A0 then win
        #5 roll <= 1'b1;
        #10 roll <= 1'b0;
        #5 q <= 8'hAA;
        #5 roll <= 1'b1;
        #10 roll <= 1'b0;    
    end
        
    always begin    
        #5 clock <= 1'b1;
        #5 clock <= 1'b0;    
    end
    
endmodule
