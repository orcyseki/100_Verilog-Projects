`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2026 14:38:01
// Design Name: 
// Module Name: N_bit_counter
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


module N_bit_counter #(parameter N = 32)(
    input clk,rst,
    output reg [N-1:0] out
    );
    always @(posedge clk)
    begin
        if (rst)
        out <= 0;
        else
        out <= out + 1 ;
    end
endmodule 
