`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2026 00:44:12
// Design Name: 
// Module Name: JK_flipflop
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


module JK_flipflop(
    input J,K,clk,
    output reg Q
    );
    
    always @(posedge clk) 
    begin
        case({J,K})
       
        2'd1 : Q <= 0; // reset
        2'd2 : Q <= 1; // set
        2'd3 : Q <= ~Q; // toogle
        default: Q <= Q; // mémoire 
        endcase
    end
endmodule

