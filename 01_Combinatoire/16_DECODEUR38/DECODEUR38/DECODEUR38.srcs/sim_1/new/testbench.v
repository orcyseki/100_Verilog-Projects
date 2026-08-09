`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 19:14:19
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
reg [2:0]in;
wire [7:0] out;

DECODEUR38 uut(in,out);

initial
begin
    in=3'd0;#10;
    in=3'd1;#10;
    in=3'd2;#10;
    in=3'd3;#10;
    in=3'd4;#10;
    in=3'd5;#10;
    in=3'd6;#10;
    in=3'd7;#10;
$finish;
end
endmodule
