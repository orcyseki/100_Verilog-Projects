`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2026 20:11:58
// Design Name: 
// Module Name: shiftbireg
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


module shiftbireg #(parameter N=32)(
    input clk,in,
    input sel,
    output reg [N-1:0] out
    );
    
    always @(posedge clk) 
    begin
    if(sel)
    out <= {out[N-2:0],in};
    else
    out <= {in,out[N-1:1]};
    end
endmodule
