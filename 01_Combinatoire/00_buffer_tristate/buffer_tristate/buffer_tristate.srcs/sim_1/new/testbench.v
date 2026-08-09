`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 08:04:27
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
reg [1:0] in;
reg E;
wire [1:0] out;

buffer #(.N(2)) u0(in,out,E);

initial 
begin
in =2'd0; E=0;#10;
in =2'd1; E=1;#10;
in =2'd2; E=0;#10;
in =2'd3; E=1;#10;
$finish;
end

endmodule
