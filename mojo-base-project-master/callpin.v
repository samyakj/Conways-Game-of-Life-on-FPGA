`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:13 05/26/2014 
// Design Name: 
// Module Name:    callpin 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module callpin(input clk,output [63:0] next,input [63:0] arr
    );
	 reg [2:0] i,j;
always@(posedge clk) begin
for(i=1;i<7;i=i+1) begin
for(j=1;j<7;j=j+1) begin
pin pn(
.arr22(arr[i*8+j]) ,
.arr12(arr[(i-1)*8+j]),
 .arr32(arr[(i+1)*8+j]),
 .arr23(arr[i*8+(j+1)]),
. arr21(arr[i*8+(j-1)]),
. arr11(arr[(i-1)*8+(j-1)]),
. arr13(arr[(i-1)*8+j+1]),
. arr33(arr[(i+1)*8+j+1]),
.next22(next[i*8+j]) ,
.arr31(arr[(i+1)*8+j-1]),
.clk(c1)
//.R[i](R[i])
);


end end 

 

end

endmodule
