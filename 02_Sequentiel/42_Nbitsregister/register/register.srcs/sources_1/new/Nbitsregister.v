`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2026 19:52:31
// Design Name: 
// Module Name: Nbitsregister
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


module Nbitsregister #(parameter N=32)(
    input [N-1:0] in,
    output reg [N-1:0] out,
    input clk,rst
    );
    
    always @(posedge clk) 
        begin
        if (rst)
        out <= {N{1'b0}};
        else 
        out <= in;
        
    end 
endmodule
