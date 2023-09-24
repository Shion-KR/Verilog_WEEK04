`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/24 05:04:05
// Design Name: 
// Module Name: JK_Flipflop_tb
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


module JK_Flipflop_tb();
    reg j, k, clk;
    wire q, qb;
    always #5 clk = ~clk;
    JK_Flipflop DUT(.j(j), .k(k), .clk(clk), .q(q), .qb(qb));
    initial
    begin
        clk <= 0;
        j = 0;
        k = 0;
        #20 j = 0;
        k = 1;
        #20 j = 1;
        k = 0;
        #20 j = 1;
        k = 1;
    end
    always #10 clk = ~clk;
endmodule
