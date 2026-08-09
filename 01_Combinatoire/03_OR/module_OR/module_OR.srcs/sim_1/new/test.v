`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2026 06:54:19
// Design Name: 
// Module Name: test
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


module test;
    reg [0:0] a,b;
    wire [0:0]s;
    
    MODULE_OR #(.N(1)) dut (
        .A(a),
        .B(b),
        .S(s)
    );
    
    initial begin
        a=0;b=1;
        #10;
        a=1;b=1;
        #10;   
        a=1;b=0;
        #10;
        $finish;
    end;
   
endmodule
