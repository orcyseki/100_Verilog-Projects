`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2026 13:10:52
// Design Name: 
// Module Name: substractor
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


module substractor(
    input a,b,bin,
    output bout,d
    );
    
    assign d=a^b^bin;
    assign bout = (~a & b) | (~a & bin) | (b & bin);
    
endmodule

