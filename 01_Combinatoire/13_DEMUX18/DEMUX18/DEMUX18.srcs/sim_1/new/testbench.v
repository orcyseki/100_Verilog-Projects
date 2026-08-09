`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 16:22:13
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
    reg [3:0] A;
    wire [1:0] S0,S1,S2,S3,S4,S5,S6,S7;
    
    DEMUX18 #(.N(2)) dut(in,A,S0,S1,S2,S3,S4,S5,S6,S7);
    
    initial
    begin
    A=3'd0;
    in=2'd0;#10;
    in=2'd1;#10;
    in=2'd2;#10;
    in=2'd3;#10;

    A=3'd1;
    in=2'd0;#10;
    in=2'd1;#10;
    in=2'd2;#10;
    in=2'd3;#10;  
    
    A=3'd2;
    in=2'd0;#10;
    in=2'd1;#10;
    in=2'd2;#10;
    in=2'd3;#10;

    A=3'd3;
    in=2'd0;#10;
    in=2'd1;#10;
    in=2'd2;#10;
    in=2'd3;#10;

    A=3'd4;
    in=2'd0;#10;
    in=2'd1;#10;
    in=2'd2;#10;
    in=2'd3;#10;

    A=3'd5;
    in=2'd0;#10;
    in=2'd1;#10;
    in=2'd2;#10;
    in=2'd3;#10;
    
    A=3'd6;
    in=2'd0;#10;
    in=2'd1;#10;
    in=2'd2;#10;
    in=2'd3;#10;
    
    A=3'd7;
    in=2'd0;#10;
    in=2'd1;#10;
    in=2'd2;#10;
    in=2'd3;#10;
    $finish;
    end
endmodule
