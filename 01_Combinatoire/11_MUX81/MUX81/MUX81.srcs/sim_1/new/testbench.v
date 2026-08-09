`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 05:06:39
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
reg [1:0] in0,in1,in2,in3,in4,in5,in6,in7;
reg [2:0] A;
wire [1:0] Y;

MUX81 #(.N(2)) mux(in0,in1,in2,in3,in4,in5,in6,in7,A,Y);

initial begin
in0=$random;
in1=$random;
in2=$random;
in3=$random;
in4=$random;
in5=$random;
in6=$random;
in7=$random;
A = 3'd0; #10;
A = 3'd1; #10;
A = 3'd2; #10;
A = 3'd3; #10;
A = 3'd4; #10;
A = 3'd5; #10;
A = 3'd6; #10;
A = 3'd7; #10;
$finish;
end
endmodule
