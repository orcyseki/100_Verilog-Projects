`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2026 02:04:12
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
    reg [3:0] IN;
    wire [1:0] OUT;
    
    encodeur_prioritaire uut(IN,OUT);
    
    initial
    begin
    IN=4'b0000;#10;
    IN=4'b0001;#10;
    IN=4'b0110;#10;
    IN=4'b1001;#10;
    IN=4'b0100;#10;
    IN=4'b0010;#10;
    $finish;
    end
endmodule
