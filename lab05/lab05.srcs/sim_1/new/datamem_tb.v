`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:03:07 PM
// Design Name: 
// Module Name: datamem_tb
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


module datamem_tb();

    reg pretendClock;
    reg [7:0] address;
    reg [31:0] writeData;
    reg writeMem;
    wire [31:0] readData;
    
    DataMemory test (pretendClock, address, writeData, writeMem, readData);
    
    initial begin
        pretendClock <= 0;
        address <= 80;
        writeMem <= 0;
        writeData <= 0;
        
        #20 address <= 80;
        #20 address <= 84;
        
        
    end
    
    always begin
        #5 pretendClock <= 1;
        #5 pretendClock <= 0;
    end
    

endmodule
