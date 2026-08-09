`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2026 03:21:57
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
    reg [1:0] a,b;
    wire [3:0]s; 
    
    multiplication #(.N(2)) mult(a,b,s);
    
    initial
    begin
    a=2'b00;b=2'b00;#10;
    a=2'b00;b=2'b01;#10;
    a=2'b00;b=2'b10;#10;
    a=2'b00;b=2'b11;#10;
    a=2'b01;b=2'b00;#10;
    a=2'b01;b=2'b01;#10;
    a=2'b01;b=2'b10;#10;
    a=2'b01;b=2'b11;#10;
    a=2'b10;b=2'b00;#10;
    a=2'b10;b=2'b01;#10;
    a=2'b10;b=2'b10;#10;
    a=2'b10;b=2'b11;#10;
    a=2'b11;b=2'b00;#10;
    a=2'b11;b=2'b01;#10;
    a=2'b11;b=2'b10;#10;
    a=2'b11;b=2'b11;#10;
    $finish;
    end
endmodule

