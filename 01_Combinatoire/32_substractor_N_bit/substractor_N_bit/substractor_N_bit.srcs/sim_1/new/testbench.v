`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2026 13:31:42
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
   reg [1:0] a,b;
   reg bin;
   wire [1:0] d;
   wire bout;
   
   substractor_N_bit #(.N(2)) u0(a,b,bin,d,bout);
   
   initial
   begin
   a=2'b00;b=2'b00;bin=0;#10;
   a=2'b00;b=2'b01;bin=1;#10;
   a=2'b00;b=2'b10;bin=0;#10;
   a=2'b00;b=2'b11;bin=1;#10;
   a=2'b01;b=2'b00;bin=0;#10;
   a=2'b01;b=2'b01;bin=1;#10;
   a=2'b01;b=2'b10;bin=0;#10;
   $finish;
   end
endmodule
