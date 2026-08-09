`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2026 08:44:27
// Design Name: 
// Module Name: tb
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


module tb;
    reg a,b,bin;
    wire d,bout;
    
    substractor u0(a,b,bin,bout,d);
    
    initial
    begin
        a=0;b=0;bin=0;#10;
        a=0;b=0;bin=1;#10;
        a=0;b=1;bin=0;#10;
        a=0;b=1;bin=1;#10;
        a=1;b=0;bin=0;#10;
        a=1;b=0;bin=1;#10;
        a=1;b=1;bin=0;#10;
        a=1;b=1;bin=1;#10;
    $finish;
    end
endmodule
