`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2024 10:04:16 AM
// Design Name: 
// Module Name: 7seg
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


module sevenseg(leftanode, rightanode, leftcathode, rightcathode, Q, status, clock);

    output reg [3:0] leftanode;
    output reg [3:0] rightanode;
    output reg [6:0] leftcathode;
    output reg [6:0] rightcathode;
    input [7:0] Q;
    input [1:0] status;
    input clock;
    reg digit; // 0 is left side, 1 is right side
    reg [6:0] conversion [15:0];
    reg [6:0] leftStatusConversion[3:0];
    reg [6:0] rightStatusConversion [3:0];
    
    initial begin
    
        digit = 1'b0;
        conversion[15] = 7'b1000111;
        conversion[14] = 7'b1001111;
        conversion[13] = 7'b0111101;
        conversion[12] = 7'b1001110;
        conversion[11] = 7'b0011111;
        conversion[10] = 7'b1110111;
        conversion[9] = 7'b1110011;
        conversion[8] = 7'b1111111;
        conversion[7] = 7'b1110000;
        conversion[6] = 7'b1011111;
        conversion[5] = 7'b1011011;
        conversion[4] = 7'b0110011;
        conversion[3] = 7'b1111001;
        conversion[2] = 7'b1101101;
        conversion[1] = 7'b0110000;
        conversion[0] = 7'b1111110;
        
        leftStatusConversion[0] = 7'b0000000; // all off
        leftStatusConversion[1] = 7'b0111110; // UI
        leftStatusConversion[2] = 7'b0001110; // LO
        leftStatusConversion[3] = 7'b1110111; // Ao
        
        rightStatusConversion[0] = 7'b0000000; // all off
        rightStatusConversion[1] = 7'b0000110; // UI
        rightStatusConversion[2] = 7'b1111110; // LO
        rightStatusConversion[3] = 7'b0011101; // Ao
    end
    
    always @ (posedge clock) begin   
        digit <= ~digit;
        
        // left side number and left side status
        if (digit) begin
        
            leftanode[0] <= 1'b1;
            leftanode[1] <= 1'b0;
            leftanode[2] <= 1'b1;
            leftanode[3] <= 1'b1;
            leftcathode <= ~conversion[Q[7:4]];
            
            rightanode[0] <= 1'b1;
            rightanode[1] <= 1'b0;
            rightanode[2] <= 1'b1;
            rightanode[3] <= 1'b1;
            rightcathode <= ~leftStatusConversion[status];            
        end
        
        // right side number and right side status
        else begin
         
            leftanode[0] <= 1'b0;
            leftanode[1] <= 1'b1;
            leftanode[2] <= 1'b1;
            leftanode[3] <= 1'b1;
            leftcathode <= ~conversion[Q[3:0]];
            
            rightanode[0] <= 1'b0;
            rightanode[1] <= 1'b1;
            rightanode[2] <= 1'b1;
            rightanode[3] <= 1'b1;
            rightcathode <= ~rightStatusConversion[status];
                        
        end
       
    end
    
endmodule