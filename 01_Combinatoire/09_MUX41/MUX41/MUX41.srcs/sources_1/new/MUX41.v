`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 21:04:18
// Design Name: 
// Module Name: MUX41
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


module MUX41#(parameter N=32) (
    input [N-1:0] in0,in1,in2,in3,
    input [1:0] A,
    output reg [N-1:0] Y
    );
    
    always @(*) begin
    case(A)
    2'd0:Y=in0;
    2'd1:Y=in1;
    2'd2:Y=in2;
    2'd3:Y=in3;
    endcase
    end
endmodule
