`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:43:41 05/25/2014 
// Design Name: 
// Module Name:    pin 
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
module pin( input [255:0] arr,output reg [255:0] next,input clk,input rst
    );
	 reg [3:0] add =4'b0;
	 integer i,j;
	 always@(posedge clk,posedge rst) begin
	 if(rst) begin
//	 next  <= 64'b0000000000000000000000000000000001110000001110000000000000000000;

	next [255:240] <= 16'b0000000000000000;
	next [239:224] <= 16'b0000000000000000;
	next [223:208] <= 16'b0000000000000000;	
	next [207:192] <= 16'b0000000000000000;
	next [191:176] <= 16'b0000000000000000;
	next [175:160] <= 16'b0000000000000000;	
	next [159:144] <= 16'b0000000001100000;
	next [143:128] <= 16'b0000000011000000;
	next [127:112] <= 16'b0000000001000000;
	next [111:96]  <= 16'b0000000000000000;
	next [95:80]   <= 16'b0000000000000000;
	next [79:64]   <= 16'b0000000000000000;
	next [63:48]   <= 16'b0000000000000000;
	next [47:32]   <= 16'b0000000000000000;
	next [31:16]   <= 16'b0000000000000000;
	next [15:0]    <= 16'b0000000000000000;
	/*next[0] <= 1'b0;
next[1] <= 1'b0;
next[2] <= 1'b0;
next[3] <= 1'b0;
next[4] <= 1'b0;
next[5] <= 1'b0;
next[6] <= 1'b0;
next[7] <= 1'b0;
next[8] <= 1'b0;
next[15] <= 1'b0;
next[16] <= 1'b0;
next[23] <= 1'b0;
next[24] <= 1'b0;
next[31] <= 1'b0;
next[32] <= 1'b0;
next[39] <= 1'b0;
next[40] <= 1'b0;
next[47] <= 1'b0;
next[48] <= 1'b0;
next[55] <= 1'b0;
next[56] <= 1'b0;
next[57] <= 1'b0;
next[58] <= 1'b0;
next[59] <= 1'b0;
next[60] <= 1'b0;	
next[61] <= 1'b0;
next[62] <= 1'b0;
next[63] <= 1'b0;	 */

	 end else begin
	 for(i=0;i<16;i=i+1) begin
for(j=0;j<16;j=j+1) begin

if ( i===0 && j===0)
begin
add = arr[1]+arr[16]+arr[17]+arr[15]+arr[31]+arr[240]+arr[241]+arr[255];
end
else if ( i===0 && j===15)
begin
add = arr[14]+arr[30]+arr[31]+arr[254]+arr[255]+arr[240]+arr[0]+arr[16];
end 
else if ( i===15 && j===15)
begin
add = arr[0]+arr[15]+arr[14]+arr[224]+arr[240]+arr[238]+arr[239]+arr[254];
end 
else if ( i===15 && j===0)
begin
add = arr[224]+arr[225]+arr[241]+arr[239]+arr[255]+arr[0]+arr[1]+arr[15];
end 
else if ( i===0 && j!==15 && j!==0)
begin
add = arr[j-1] + arr[j+1] + arr[16+j] + arr[15+j] +arr[j+17]+arr[240+j] + arr[241+j] + arr[239+j];
end 
else if ( i===15 && j!=15 && j!=0)
begin
add = arr[15*16+j-1] + arr[15*16+j+1] + arr[14*16+j] + arr[14*16+j-1] +arr[14*16+j+1]+arr[1+j] + arr[j] + arr[j-1];
end 
else if ( j===0 && i!=15 && i!=0)
begin
add = arr[(i-1)*16] + arr[(i+1)*16] + arr[i*16+1] + arr[(i-1)*16+1] +arr[(i+1)*16+1]+arr[(i-1)*16+15] + arr[(i+1)*16+15] + arr[i*16+15];
end 
else if ( j===15 && i!=15 && i!=0)
begin
add = arr[(i-1)*16+14] + arr[(i+1)*16+14] + arr[i*16+14] + arr[(i-1)*16+15] +arr[(i+1)*16+15]+arr[(i-1)*16] + arr[(i+1)*16] + arr[i*16];
end 
else begin
add = arr[i*16+j-1]+ arr[i*16+j+1]+ arr[(i-1)*16+j]+ arr[(i-1)*16+j-1]+ arr[(i-1)*16+j+1]+ arr[(i+1)*16+j]+ 
arr[(i+1)*16+j-1]+ arr[(i+1)*16+j+1]; 
end

if (arr[i*16+j]===1'b1) begin
if(add===4'b0010||add===4'b0011) begin
next[i*16+j] <= 1'b1;
end else begin
next[i*16+j] <= 1'b0;
end end 
else begin 
if(add===4'b0011) begin
next [i*16+j] <= 1'b1; end
else begin next[i*16+j] <= 1'b0; end
end end end
end 
end
endmodule
