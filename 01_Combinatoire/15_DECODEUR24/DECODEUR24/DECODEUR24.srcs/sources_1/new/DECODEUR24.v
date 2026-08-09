`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 17:35:30
// Design Name: 
// Module Name: DECODEUR24
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


module DECODEUR24(
    input [1:0]in,
    output reg [3:0]S
    );
    
    always @(*)
    begin
    case(in)
        2'd0:S=4'b0001;
        2'd1:S=4'b0010;
        2'd2:S=4'b0100;
        2'd3:S=4'b1000;
    endcase
    end
endmodule
