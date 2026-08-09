`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2026 07:20:40
// Design Name: 
// Module Name: NOT_GATE
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


module NOT_GATE #(parameter N= 32)(
    input [N-1:0] in,
    output [N-1:0] out
    );
    assign out = ~in;
endmodule
