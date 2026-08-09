`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2026 20:45:27
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
reg clk,in;
reg sel;
wire [1:0] out;

shiftbireg #(2) dut(clk,in,sel,out);

always #10 clk = ~clk;

initial begin
clk=1;
in=0;
sel=0;

#10 in=0; 
#10 in=1;
#10 in=0;
#10 in=1;
#10 in=1;   
#10 in=0;
sel=1;
#10 in=1;
#10 in=0;
#10 in=0;
#10 in=1;  
#20 $stop;
end
endmodule
