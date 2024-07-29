`timescale 1s / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2024 15:01:49
// Design Name: 
// Module Name: counter
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


module counter(out,clk,rst,en);
input clk,rst,en;
output reg [7:0]out;
reg [24:0]Tclk;

always@(posedge clk)
begin
if(rst)
    Tclk<=25'b0;
else Tclk<=Tclk+1;
end

always@(posedge Tclk[20])
begin 
if(rst)
    out<=8'b00000001;
else if(en)
begin
    out<=out<<1;
    out[0]<=out[7];
end
end
endmodule
