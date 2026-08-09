`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2026 06:51:54
// Design Name: 
// Module Name: MODULE_OR
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


module MODULE_OR #(parameter N=32)(
    input [N-1:0] A,B,
    output [N-1:0] S
    );
    assign S = A | B;
endmodule
