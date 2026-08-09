`timescale 1ns / 1ps

module tb;
reg clk;
reg e0,e1,e2,e3;
wire q0,q1,q2,q3;

Reg_PIPO dut(clk,e0,e1,e2,e3,q0,q1,q2,q3);

//generation de l'horloge
initial clk=0;
always #(10) clk=~clk;

initial
begin
    e0=0;e1=0;e2=0;e3=0;#10;
    e0=1;e1=0;e2=1;e3=0;#10;
    e0=0;e1=0;e2=1;e3=1;#10;
    e0=1;e1=1;e2=0;e3=0;#10;
    e0=1;e1=1;e2=1;e3=1;#10;
    #50 $stop;
end
endmodule 