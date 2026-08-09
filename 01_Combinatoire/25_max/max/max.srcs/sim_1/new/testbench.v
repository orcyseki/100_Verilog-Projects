`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 11:55:28
// Design Name: 
// Module Name: testbench
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


module testbench;
reg [1:0] A,B;
wire [1:0] out;

max #(.N(2)) u0(A,B,out);

initial
begin
A=2'd0;B=2'd1;#10;
A=2'd1;B=2'd1;#10;
A=2'd1;B=2'd0;#10;
end
endmodule
