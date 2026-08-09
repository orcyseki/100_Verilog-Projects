`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 15:39:36
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
    reg [1:0] A;
    wire [1:0] S0, S1, S2, S3;
    
    DEMUX14 #(.N(2)) dut(in,A,S0,S1,S2,S3);
    
    initial
    begin 
    A=2'd0; 
    in =2'd0; #10;
    in =2'd1; #10;
    in =2'd2; #10;
    in =2'd3; #10;
    
    A=2'd1; 
    in =2'd0; #10;
    in =2'd1; #10;
    in =2'd2; #10;
    in =2'd3; #10;  
    
    A=2'd2; 
    in =2'd0; #10;
    in =2'd1; #10;
    in =2'd2; #10;
    in =2'd3; #10;
    
    A=2'd3; 
    in =2'd0; #10;
    in =2'd1; #10;
    in =2'd2; #10;
    in =2'd3; #10;
    end
    
    
endmodule
