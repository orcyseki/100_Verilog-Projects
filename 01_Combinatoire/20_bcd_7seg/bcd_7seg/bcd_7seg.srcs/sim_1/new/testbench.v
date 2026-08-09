`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 21:10:17
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
    reg [3:0] in;
    wire [6:0] out;
    
    bcd_7seg dut(in,out);
    
    initial
    begin
    in =4'b0000;#10;
    in =4'b0001;#10;
    in =4'b0010;#10;
    in =4'b0011;#10;
    in =4'b0100;#10;
    in =4'b0101;#10;
    in =4'b0110;#10;
    in =4'b0111;#10;
    in =4'b1000;#10;
    in =4'b1001;#10;
    $finish;
    end
    
    endmodule
