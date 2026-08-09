`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2026 19:36:56
// Design Name: 
// Module Name: XOR_GATE
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


module XOR_GATE #(parameter N=32)(
    input [N-1:0]A,B,
    input [N-1:0]S
    );
    assign S = A^B;
endmodule
