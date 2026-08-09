`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2026 03:02:19
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
    reg [7:0] in;
    wire [2:0] out;
    
    encodeur_prioritaire_8_3 dut(in,out);
    
    initial
    begin
    in=7'b00000000;#10;
    in=7'b00000011;#10;
    in=7'b00010011;#10;
    in=7'b00001111;#10;
    in=7'b10000011;#10;
    in=7'b01100011;#10;
    $finish;
    end
    
endmodule
