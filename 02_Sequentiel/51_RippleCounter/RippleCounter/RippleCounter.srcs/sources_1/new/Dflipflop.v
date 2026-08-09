`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 23:30:08
// Design Name: 
// Module Name: Dflipflop
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


module Dflipflop(
    input rst,clk,
    input d,
    output reg q,
    output qn
    );
    
    always @(posedge clk or posedge rst)
    begin
    if(rst)
        q <=0;
    else
        q <= d;
    end
    assign qn = ~q;
endmodule
