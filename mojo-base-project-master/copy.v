`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:35 05/27/2014 
// Design Name: 
// Module Name:    copy 
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
module copy(input clk, input[255:0] next,output reg [255:0]arr,input rst
    );
	 integer i,j,k;
always@(posedge clk) begin
for(i=0;i<256;i=i+1) begin
arr[i] <= next[i];
end
 end
endmodule
