`timescale 1ns / 1ps

module tb;
reg rst,clk;
wire [3:0] out;

RippleCounter count (clk,rst,out); 

always #10 clk = ~clk;

initial 
begin
clk = 0;


rst = 1;
#20;

 
 rst = 0;

 #200;

 $finish;
end
endmodule