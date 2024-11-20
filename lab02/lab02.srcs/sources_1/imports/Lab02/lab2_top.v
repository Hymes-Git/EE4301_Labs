`timescale 1ns / 1ps

module lab2_top(
output [7:0] q,
input clk,
input rst,
output [3:0] anode,
output [6:0] cathode
);
 

reg [7:0] seed = 8'b00000001;
wire cout;
wire displayclock;

sevenseg display (anode, cathode, q, displayclock);
clock_divider #(84) CDIV (clk,cout);
clock_divider #(10) CVID2 (clk, displayclock);
lfsr LFSR (q,seed,cout,rst);

endmodule