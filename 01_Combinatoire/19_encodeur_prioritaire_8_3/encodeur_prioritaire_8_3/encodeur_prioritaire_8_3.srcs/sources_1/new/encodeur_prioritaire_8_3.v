`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2026 02:46:47
// Design Name: 
// Module Name: encodeur_prioritaire_8_3
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


module encodeur_prioritaire_8_3(
    input [7:0] in,
    output reg [2:0] out
    );
    
    always @(*)
    begin
        
        casez(in)
        8'b1???????:out=3'b111;
        8'b01??????:out=3'b110;
        8'b001?????:out=3'b101;
        8'b0001????:out=3'b101;
        8'b00001???:out=3'b011;
        8'b000001??:out=3'b010;
        8'b0000001?:out=3'b001;
        default:out=3'b000;
        endcase
    end
endmodule
