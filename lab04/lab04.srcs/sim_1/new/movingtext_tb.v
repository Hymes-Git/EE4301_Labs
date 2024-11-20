`timescale 1ns / 1ps

module movingtext_tb();

    wire [3:0] leftAnode;
    wire [3:0] rightAnode;
    wire [7:0] leftCathode;
    wire [7:0] rightCathode;
    reg clk;
    reg [10:0] sw;

MovingText test (leftAnode, rightAnode, leftCathode, rightCathode, clk, sw);

initial begin

    clk <= 1'b0;
    sw <= 11'b00000000000;
    
    #100 sw <= 11'b01000000000;
    #100 sw <= 11'b11000000000;
    #100 sw <= 11'b11000001111;
    #100 sw <= 11'b11100001111;
    #100 sw <= 11'b11000001111;
    #100 sw <= 11'b11000010001;
    #100 sw <= 11'b11100010001;
    #100 sw <= 11'b00000010001;
    #100;

end

always begin

    #1 clk <= 1'b1;
    #1 clk <= 1'b0;

end

endmodule
