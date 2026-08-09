`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 18:23:27
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
    reg [1:0]in;
    wire [3:0]S;
    
    DECODEUR24 dut(in,S);
    
    initial
    begin
    in =2'd0;#10;
    in =2'd3;#10;
    in =2'd1;#10;
    in =2'd2;#10;
    $finish;
    end
endmodule
