`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 04:49:38
// Design Name: 
// Module Name: MUX81
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


module MUX81#(parameter N=32)(
    input [N-1:0] in0,in1,in2,in3,in4,in5,in6,in7,
    input [2:0] A,
    output reg [N-1:0] Y
    );
    
    always @(*)
    begin
        case(A)
        3'd0: Y=in0;
        3'd1: Y=in1;
        3'd2: Y=in2;
        3'd3: Y=in3;
        3'd4: Y=in4;
        3'd5: Y=in5;
        3'd6: Y=in6;
        3'd7: Y=in7;
        endcase;
    end;
endmodule
