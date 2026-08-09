`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 23:00:16
// Design Name: 
// Module Name: CODEUR42
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


module CODEUR42(
    input [3:0] IN,
    output [1:0] OUT
    
    );
    
    assign OUT= (IN==4'b0001)?2'd0:
                (IN==4'b0010)?2'd1:
                (IN==4'b0100)?2'd2:
                (IN==4'b1000)?2'd3:
                2'dx;
    
endmodule
