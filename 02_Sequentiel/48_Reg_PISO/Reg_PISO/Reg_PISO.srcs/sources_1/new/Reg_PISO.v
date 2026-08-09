`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2026 10:10:37
// Design Name: 
// Module Name: Reg_PISO
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


module Reg_PISO(
    input [3:0] E,
    input clk,
    input load,
    output S
);

    wire q0, q1, q2, q3;
    wire d0, d1, d2, d3;

    // Logique de sélection
    assign d0 = (load) ? E[0] : 1'b0;
    assign d1 = (load) ? E[1] : q0;
    assign d2 = (load) ? E[2] : q1;
    assign d3 = (load) ? E[3] : q2;

    // Bascules D
    Dflipflop dff_0(d0, clk, q0);
    Dflipflop dff_1(d1, clk, q1);
    Dflipflop dff_2(d2, clk, q2);
    Dflipflop dff_3(d3, clk, q3);

    assign S = q3;

endmodule
