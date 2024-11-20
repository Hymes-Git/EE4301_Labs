`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 10:35:45 AM
// Design Name: 
// Module Name: Casino
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


module Casino(
    output reg [1:0] status,
    input [7:0] q,
    input roll,
    input rst,
    input clock
    );
    
    reg start = 1;
    reg between = 0;
    reg win = 0;
    reg lose = 0;
    reg [4:0] target;
    
    wire [4:0] sum;  

    assign sum = q[3:0] + q[7:4];
    
    always @ (posedge clock) begin
    
        if (rst) begin
        
            start <= 1'b1;
            between <= 1'b0;
            win <= 1'b0;
            lose <= 1'b0;
            status <= 2'b00;
        
        end
    
        if (roll) begin
            
            if (start) begin
            
                if (sum > 25) begin // you have won!! :D
                    start <= 1'b0;
                    win <= 1'b1;
                    status <= 2'b01;
                end
                
                else if (sum < 5) begin // you have lost :(
                    start <= 1'b0;
                    lose <= 1'b1;
                    status <= 2'b10;
                end            
               
                else begin // go to the middle state and grab target
                    start <= 1'b0;
                    between <= 1'b1;
                    status <= 2'b11;
                    target <= sum;
                end
            end
            
            else if (between) begin
                
                if (sum > 25) begin // you have lost :(
                    between <= 1'b0;
                    lose <= 1'b1;
                    status <= 2'b10;                 
                end
                
                else if (sum >= target) begin // you have won!! :D
                    between <= 1'b0;
                    win <= 1'b1;
                    status <= 1'b01;
                end
            
            end
                    
        end
        
    end
        
endmodule
