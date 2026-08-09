`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 22:27:08
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
    reg [1:0]in0,in1,in2,in3;
    reg [1:0] A;
    reg E;
    wire [1:0]Y;
    
    MUX41 #(.N(2)) mux(in0,in1,in2,in3,A,E,Y);
    
    initial begin
    in0 = 2'd0; 
    in1 = 2'd1; 
    in2 = 2'd3; 
    in3 = 2'd2;

    E = 0; A = 2'd0; #10;
    A = 2'd1; #10;
    A = 2'd2; #10;
    A = 2'd3; #10;

    E = 1; A = 2'd0; #10;  
    $finish;
    end
endmodule