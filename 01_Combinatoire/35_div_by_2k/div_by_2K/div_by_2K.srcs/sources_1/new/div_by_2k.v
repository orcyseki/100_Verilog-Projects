`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2026 23:33:07
// Design Name: 
// Module Name: div_by_2k
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

module div_by_2k #(parameter N=32,
    parameter k_max =32)(
    input [N-1:0] e,
    input [k_max-1:0] k,
    output [N-1:0] s
    );
    
    assign s=e >>k;
endmodule
