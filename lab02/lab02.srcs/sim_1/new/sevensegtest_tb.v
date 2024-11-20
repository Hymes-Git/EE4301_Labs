`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2024 10:40:16 AM
// Design Name: 
// Module Name: sevensegtest_tb
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


module sevensegtest_tb();
    
    reg clock;
    reg reset;
    wire [7:0] Q;
    wire [6:0] cathode;
    wire [1:0] anode;
    
    lab2_top test (Q, clock, reset, anode, cathode);
    
    initial begin
    
        clock = 0;
        reset = 0;
    
    end
    
    always begin
        
        #5 clock = 1;
        #5 clock = 0;
        
    end
    
    
endmodule
