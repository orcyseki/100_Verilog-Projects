`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 09:00:42
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
    reg [2:0] g;
    wire [2:0] b;
    
    gray_to_bin #(.N(3)) dut (g,b);
    
    initial 
    begin
    g=3'd0;#10;
    g=3'd3;#10;
    g=3'd1;#10;
    g=3'd6;#10;
    g=3'd8;#10;
    $finish;
    end
endmodule
