`timescale 1ns / 1ps

module lab2_top(
output [7:0] q,
output [1:0] status,
input clk,
input rst,
input roll,
output [3:0] leftanode,
output [3:0] rightanode,
output [6:0] leftcathode,
output [6:0] rightcathode
);
 

reg [7:0] seed = 8'b00000001;
wire cout;
wire displayclock;
wire gameclock;

wire [1:0] status;


Casino game (status, q, roll, rst, gameclock);
sevenseg display (leftanode, rightanode, leftcathode, rightcathode, q, status, displayclock);
clock_divider #(84) CDIV (clk,cout);
clock_divider #(20) CDIV2 (clk, displayclock);
clock_divider #(50) CDIV3 (clk, gameclock);
lfsr LFSR (q,seed,cout,rst);

endmodule