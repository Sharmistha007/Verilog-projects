`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2024 15:11:45
// Design Name: 
// Module Name: FA
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


module FA(a,b,c,s,c_out);
input a,b,c;
output s,c_out;
wire t1,t2,t3;
half_adder ha1(.a(a),.b(b),.sum(t1),.carry(t2));
half_adder ha2(.a(t1),.b(c),.sum(s),.carry(t3));
or(c_out,t2,t3);
endmodule
