`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 23:20:14
// Design Name: 
// Module Name: RippleCounter
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


module RippleCounter(
    input clk,rst,
    output [3:0] out
    );
    wire d0,d1,d2,d3; 
    wire q0,q1,q2,q3; 
    
    
    Dflipflop dff_0(rst,clk,d0,q0,d0);
    Dflipflop dff_1(rst,q0,d1,q1,d1);
    Dflipflop dff_2(rst,q1,d2,q2,d2);
    Dflipflop dff_3(rst,q2,d3,q3,d3);
    

    assign out = {q3, q2, q1, q0};
endmodule
