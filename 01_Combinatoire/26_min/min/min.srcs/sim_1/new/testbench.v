`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 21:12:11
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

    reg [1:0] A,B;
    wire [1:0] S;
    
    min #(.N(2)) u0(A,B,S);
    
    initial
    begin 
    A=2'b00;B=2'b00;#10;
    A=2'b10;B=2'b00;#10;
    A=2'b10;B=2'b01;#10;
    A=2'b11;B=2'b00;#10;
    end
endmodule
