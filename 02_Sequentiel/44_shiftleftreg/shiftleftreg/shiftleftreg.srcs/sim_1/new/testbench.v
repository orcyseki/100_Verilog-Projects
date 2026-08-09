`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2026 19:13:48
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

shiftleftreg #(.N(3)) dut (
    .clk(clk),
    .in(in),
    .out(out)
);

always #10 clk = ~clk;

initial begin
in=0;
clk=0;

#10 in=0;
#10 in=1;
#10 in=0;
#10 in=1;
#10 in=1;   
#10 in=0;
#20 $stop;

end
endmodule
