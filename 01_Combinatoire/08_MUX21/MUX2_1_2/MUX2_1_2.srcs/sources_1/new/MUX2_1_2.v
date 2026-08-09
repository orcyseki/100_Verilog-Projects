`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 19:52:24
// Design Name: 
// Module Name: MUX2_1_2
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

//Multipexeur 2 vers 1 avec entrée d'activation avec operateur ternaire

module MUX2_1_2 #(parameter N=32)(
    input A,
    input E,
    input [N-1:0] in1,in0,
    output [N-1:0] Y
    );
    assign Y = E ? {N{1'b0}}:
               (A?in0:in1);
endmodule
