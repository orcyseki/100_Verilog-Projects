`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2026 08:55:56
// Design Name: 
// Module Name: substractor_N_bit
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


module substractor_N_bit #(parameter N=32)(
    input [N-1:0] a,b,
    input bin,
    output [N-1:0] d,
    output bout
    );
   wire [N:0] borrow;
   assign borrow[0] = bin;
   
   genvar i;
   generate 
   for (i = 0; i < N; i = i + 1)
   begin : SUB

        substractor sub (
            .a(a[i]),
            .b(b[i]),
            .bin(borrow[i]),
            .d(d[i]),
            .bout(borrow[i+1]));
   
   end
   endgenerate
   assign bout = borrow[N];
endmodule
