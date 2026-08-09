`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 08:46:43
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
reg [2:0] in;
wire [2:0] out;

bin_to_gray #(.N(3)) dut(in,out); 

initial begin
in =3'd0; #10;
in =3'd4; #10;
in =3'd2; #10;
in =3'd1; #10;
in =3'd6; #10;
$finish;
end
endmodule
