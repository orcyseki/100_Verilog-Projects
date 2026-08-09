`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2026 01:02:58
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
   reg J,K,clk;
   wire Q;
   JK_flipflop u0(J,K,clk,Q);
   
   always #2 clk = ~clk;
   
   initial
   begin
   clk = 0; J =0;K=0; #10;
   J =0;K=1; #10;
   J =1;K=0; #10;
   J =1;K=1; #10;
   J =0;K=1; #10;
   J =0;K=0; #10;
   $finish;
   end
endmodule
