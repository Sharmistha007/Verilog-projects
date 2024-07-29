module mux4to1(in,sel,f);
input [3:0]in;
input [1:0]sel;
output f;
wire t1,t2;

mux2to1 m1(in[0],in[1],sel[0],t1);
mux2to1 m2(in[2],in[3],sel[0],t2);
mux2to1 m3(t1,t2,sel[1],f);


endmodule