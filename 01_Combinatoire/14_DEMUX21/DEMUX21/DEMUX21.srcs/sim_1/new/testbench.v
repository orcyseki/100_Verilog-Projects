`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 01:25:09
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
    reg A;
    wire [1:0] S0,S1;
    
    DEMUX12 #(.N(2)) dut(in, A,S0,S1);
    
    initial
    begin
    A=0;
    in=2'd0; #10;
    in=2'd1; #10;
    in=2'd2; #10;
    in=2'd3; #10;
    A=1;
    in=2'd0; #10;
    in=2'd1; #10;
    in=2'd2; #10;
    in=2'd3; #10;
    end
endmodule
