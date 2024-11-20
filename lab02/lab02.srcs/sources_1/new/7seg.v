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


module sevenseg(anode, cathode, Q, clock);

    output reg [3:0] anode;
    output reg [6:0] cathode;
    input [7:0] Q;
    input clock;
    reg digit; // 0 is left side, 1 is right side
    reg [6:0] conversion [15:0];
    
    initial begin
    
        digit = 1'b1;
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
    end
    
    always @ (posedge clock) begin   
        digit <= ~digit;     
        
        // left side
        if (digit) begin
        
            anode[0] <= 1'b1;
            anode[1] <= 1'b0;
            anode[2] <= 1'b1;
            anode[3] <= 1'b1;
            cathode <= ~conversion[Q[7:4]];
        end
        
        // right side
        else begin
            anode[0] <= 1'b0;
            anode[1] <= 1'b1;
            anode[2] <= 1'b1;
            anode[3] <= 1'b1;
            cathode <= ~conversion[Q[3:0]];
        end
    end
    
endmodule