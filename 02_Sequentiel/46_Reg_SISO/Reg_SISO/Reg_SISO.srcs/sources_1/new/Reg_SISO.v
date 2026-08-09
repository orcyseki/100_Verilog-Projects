`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2026 19:56:21
// Design Name: 
// Module Name: Reg_SISO
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

module Reg_SISO(
    input E,
    input clk,
    output S
    );
   
    wire [2:0] q;
    D_flipflop dff_0(E,clk,q[0]);
    D_flipflop dff_1(q[0],clk,q[1]);
    D_flipflop dff_2(q[1],clk,q[2]);
    D_flipflop dff_3(q[2],clk,S);
endmodule
