`timescale 1ns / 1ps

module lfsr (output reg [7:0] q, 
    input [7:0] seed,
    input clock, 
    input rst
    );
 
    wire din;
    assign din = q[1]^q[2]^q[3]^q[7];
 
    always @ (posedge clock)
    begin
    
    // Please write your Verilog code for 8-bit shift register here
    
        if (rst) begin
            q <= seed; 
        end
        else begin
            q[0] <= din;
            q[1] <= q[0];
            q[2] <= q[1];
            q[3] <= q[2];
            q[4] <= q[3];
            q[5] <= q[4];
            q[6] <= q[5];
            q[7] <= q[6];    
        end   
    end
 



endmodule
