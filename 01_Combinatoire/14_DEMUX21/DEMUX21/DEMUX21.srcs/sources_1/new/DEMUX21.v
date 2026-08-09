`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 07:22:58
// Design Name: 
// Module Name: DEMUX12
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


module DEMUX12 #(parameter N=32) (
    input [N-1:0] in,
    input A,
    output [N-1:0] S0,S1
    );
    
    assign S0 =A ?in: {N{1'b0}};
    assign S1 = A ?{N{1'b0}}:in ;   
endmodule
