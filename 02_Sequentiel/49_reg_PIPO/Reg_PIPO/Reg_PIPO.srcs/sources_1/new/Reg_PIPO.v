`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2026 12:15:44
// Design Name: 
// Module Name: Reg_PIPO
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


module Reg_PIPO(
    input clk,
    input e0,e1,e2,e3,
    output q0,q1,q2,q3
    );
    
    Dflipflop dff_0(e0,clk,q0);
    Dflipflop dff_1(e1,clk,q1);
    Dflipflop dff_2(e2,clk,q2);
    Dflipflop dff_3(e3,clk,q3);
endmodule
