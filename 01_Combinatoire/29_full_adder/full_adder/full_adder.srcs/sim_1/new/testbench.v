`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 23:51:23
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
reg a,b,cin;
wire cout,S;

full_adder add(a,b,cin,cout,S);

initial
begin
    a=0;b=0;cin=0; #10;
    a=0;b=0;cin=1; #10;
    a=0;b=1;cin=0; #10;
    a=0;b=1;cin=1; #10;
    a=1;b=0;cin=0; #10;
    a=1;b=0;cin=1; #10;
    a=1;b=1;cin=0; #10;
    a=1;b=1;cin=1; #10;
    $finish;
end
endmodule
