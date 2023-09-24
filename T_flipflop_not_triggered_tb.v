`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/24 06:17:48
// Design Name: 
// Module Name: T_flipflop_not_triggered_tb
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


module T_flipflop_not_triggered_tb();
reg clk, rst, T;
wire Q;

T_flipflop_not_triggered R(clk, rst, T, Q);
initial begin
    clk <= 0;
    rst <= 1;
    #10 rst <= 0;
    #10 rst <= 1;
    #80 T <= 0;
    #100 T <= 1;
    #120 T <= 0;
    #140 T <= 1;
    #160 T <= 0;
    #180 T <= 1;
end
always begin
    #5 clk <= ~clk;
end
endmodule
