`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/24 05:03:39
// Design Name: 
// Module Name: JK_Flipflop
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


module JK_Flipflop(j, k, clk, q, qb);
    input j, k, clk;
    output reg q = 0, qb = 1;
    always @ (posedge clk)
    begin
        case({j,k})
            2'b00: q = q;
            2'b01: q = 1'b0;
            2'b10: q = 1'b1;
            2'b11: q = ~q;
        endcase
        qb = ~q;
    end
endmodule
