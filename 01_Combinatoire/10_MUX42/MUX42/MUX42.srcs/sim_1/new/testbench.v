`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 03:55:10
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
reg [1:0] in0,in1,in2,in3;
reg A;
wire [1:0] Y1,Y0;

MUX42 #(.N(2)) mux(in0,in1,in2,in3,A,Y1,Y0);

initial begin
    in0=2'd0 ;in1=2'd1;in2=2'd2;in3=2'd3;
    A = 0;#10;
    A = 1;#10;
$finish;
end
endmodule
