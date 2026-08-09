`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2026 03:34:02
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
    reg d,clk;
    wire q;
   
    
    Dflipflop dff(d,clk,q);
    
    //generation de l'horloge
    initial clk=0;
    always #(10) clk=~clk;
    
    initial
    begin
    d=0;#10;
    d=1;#10;
    d=0;#10;
    d=0;#10;
    d=1;#10;
    $stop;
    end
endmodule
