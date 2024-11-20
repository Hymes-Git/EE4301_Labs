`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 11:59:58 AM
// Design Name: 
// Module Name: sevenseg_tb
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


module sevenseg_tb();

    reg [7:0] q;
    reg [1:0] status;
    reg clk;
    
    wire [3:0] leftanode;
    wire [3:0] rightanode;
    wire [6:0] leftcathode;
    wire [6:0] rightcathode;
    
    sevenseg test (leftanode, rightanode, leftcathode, rightcathode, q, status, clk);
    
    always begin
        
        #5 clk <= 0;
        #5 clk <= 1;
    
    end
    
    initial begin
        
        clk <= 0;  
        
        q <= 0;
        status <= 0;
        #50
        status <= 1;
        
        #50
        status <= 2;
        #50
        status <= 3;  
           
    
    end
    

endmodule
