`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2026 20:53:38
// Design Name: 
// Module Name: tb
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


module tb;
reg E, clk;
wire S;

Reg_SISO dut(E,clk,S);

initial begin
  clk=0;
  end 
  always #5 clk = ~clk;  



initial
begin
E=0;
#10 E=0;
#10 E=1;
#10 E=0;
#10 E=1;

#50

$finish;

end
endmodule
