`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2026 19:35:39
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
    reg R, S, clk;
    wire Q;
    
    RS_flipflop RS(R, S, clk,Q);
    
     always #2 clk = ~clk;
     initial begin
     clk = 0; R =0;S=0;
  
 	#10;
        R =0;S=1; #10;
        R =1;S=0; #10;
        R =1;S=1; #10;
        R =0;S=1; #10;
        R =0;S=0; #10;
        $finish;
    end

endmodule
