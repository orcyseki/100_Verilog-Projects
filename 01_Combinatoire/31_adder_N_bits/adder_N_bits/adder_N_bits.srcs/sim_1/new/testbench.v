`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2026 05:01:49
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
reg cin;
wire [1:0] s;
wire cout;

adder_N_bits #(.N(2)) u0(a,b,cin,cout,s);

initial 
begin
    a=2'b00;b=2'b00;cin=2'b00;#10;
    a=2'b00;b=2'b00;cin=2'b01;#10;
    a=2'b00;b=2'b00;cin=2'b10;#10;
    a=2'b00;b=2'b00;cin=2'b11;#10;
    a=2'b00;b=2'b01;cin=2'b00;#10;
    a=2'b00;b=2'b01;cin=2'b01;#10;
    a=2'b00;b=2'b01;cin=2'b10;#10;
    a=2'b00;b=2'b01;cin=2'b11;#10;
    a=2'b00;b=2'b10;cin=2'b00;#10;
    a=2'b00;b=2'b10;cin=2'b01;#10;
    a=2'b00;b=2'b10;cin=2'b11;#10;
    a=2'b00;b=2'b11;cin=2'b00;#10;
    a=2'b00;b=2'b11;cin=2'b01;#10;
    a=2'b00;b=2'b11;cin=2'b10;#10;
    a=2'b00;b=2'b11;cin=2'b11;#10;
    a=2'b01;b=2'b00;cin=2'b00;#10;
    a=2'b01;b=2'b01;cin=2'b01;#10;
    a=2'b10;b=2'b10;cin=2'b10;#10;
    a=2'b11;b=2'b11;cin=2'b11;#10;
end
endmodule
