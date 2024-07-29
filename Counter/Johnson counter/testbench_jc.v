`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2024 16:01:19
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


module testbench(
    );
    reg rst,clk,en;
    wire [7:0] out;
    
    counter UUT(out,clk,rst,en);
    
   
    
    initial
    begin
//    $monitor("time=",$time,"out=%b",out);
    rst=1;
    #10 rst = 0;
    #10 en=1;
    #200 rst=1;
    #100 $stop;
    end
    
endmodule
