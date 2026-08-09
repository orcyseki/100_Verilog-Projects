`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2026 03:22:04
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
reg clk;
reg in;
wire [2:0] out;

shiftright_register #(3) dut (clk, in, out);

always #10 clk = ~clk;

initial begin
clk=1;
in=0;


#10 in=0;
#10 in=1;
#10 in=0;
#10 in=1;
#10 in=1;   
#10 in=0;
#20 $stop;
end
endmodule



