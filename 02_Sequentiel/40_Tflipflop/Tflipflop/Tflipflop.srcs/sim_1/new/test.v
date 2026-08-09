`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2026 01:37:08
// Design Name: 
// Module Name: test
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


module test;
reg T, clk, reset;
wire Q;

Tflipflop u0(T,clk,reset,Q);

always #2 clk = ~clk;

initial 
begin
  clk = 0; T = 0; reset = 1;#5; 
  reset = 0;#10; 
  T = 0;#10;
  T = 1;#20; 
  T = 0;#10;
  T = 1;

$stop; 
end
endmodule
