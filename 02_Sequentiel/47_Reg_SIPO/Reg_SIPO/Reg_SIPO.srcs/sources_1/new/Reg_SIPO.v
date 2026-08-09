`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2026 20:39:07
// Design Name: 
// Module Name: Reg_SIPO
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


module Reg_SIPO(
    input E,clk,
    output [3:0]q
    );
    
    D_flipflop dut_0(E,clk,q[0]);
    D_flipflop dut_1(q[0],clk,q[1]);
    D_flipflop dut_2(q[1],clk,q[2]);
    D_flipflop dut_3(q[2],clk,q[3]);
endmodule
