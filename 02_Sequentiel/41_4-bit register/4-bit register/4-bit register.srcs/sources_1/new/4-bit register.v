`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2026 02:36:14
// Design Name: 
// Module Name: 4-bit register
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


module register(
    input [3:0] D,
    input clk,rst, //reset synchrone
    output reg [3:0] Q
    );
    
    always @(posedge clk) 
    begin
    if (rst)
        Q <= 4'b0000;
    else
        Q <= D;
    end
endmodule
