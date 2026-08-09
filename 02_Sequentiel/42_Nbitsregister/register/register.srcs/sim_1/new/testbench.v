`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2026 20:04:40
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


module testbench();
    reg [2:0] in;
    wire [2:0] out;
    reg clk,rst;
   
    Nbitsregister #(.N(3)) dut (in,out,clk,rst);
   
     always #10 clk = ~clk;
     
     initial
     begin
     in=3'b000;
     rst=1;
     clk=0;
     #5 rst=0; 
     
     #10 in=3'b001;
     #10 in=3'b010;
     #10 in=3'b011;
     #10 in=3'b100;
     #10 in=3'b101;
     #10 in=3'b111;
     #10 in=3'b110;

     #20 $stop;
     end
endmodule
