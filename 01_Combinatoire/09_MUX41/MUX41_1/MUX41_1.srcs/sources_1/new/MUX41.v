`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 22:04:48
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


module MUX41#(parameter N=32)(
    input [N-1:0] in0,in1,in2,in3,
    input [1:0] A,
    input E,
    output reg [N-1:0] Y
    );
    
    always @(*) begin
    if (E==0)
        case(A)
            2'd0:Y=in0;
            2'd1:Y=in1;
            2'd2:Y=in2;
            2'd3:Y=in3;
            default: Y = {N{1'b0}};
        endcase
    else
        Y={N{1'b0}};
    end
endmodule
