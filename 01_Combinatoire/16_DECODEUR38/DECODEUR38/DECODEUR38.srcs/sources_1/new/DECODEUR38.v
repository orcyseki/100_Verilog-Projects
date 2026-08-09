`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 18:48:43
// Design Name: 
// Module Name: DECODEUR38
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


module DECODEUR38(
    input [2:0] in,
    output [7:0] out
    );
    
   assign out = 8'h1 << in;
endmodule
