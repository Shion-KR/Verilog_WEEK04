`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/24 03:13:12
// Design Name: 
// Module Name: D_flipflop_tb
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


module D_flipflop_tb();
    reg d,clk;
    wire q;
    D_flipflop c1(d, clk, q); 
    initial begin
        clk <= 0;
        #40 d <= 0;
        #40 d <= 1;
        #40 d <= 0;
        #40 d <= 1;
        #40 d <= 0;
        #40 d <= 1;
    end
    always begin
        #3 clk <= ~clk;
    end
endmodule
