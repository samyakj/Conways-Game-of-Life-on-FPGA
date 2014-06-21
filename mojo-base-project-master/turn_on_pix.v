`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:37:43 06/17/2014 
// Design Name: 
// Module Name:    turn_on_pix 
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
module turn_on_pix( input clk,input wire [33599:0] next , output G, input wire [9:0] CounterX, input wire [8:0] CounterY , output reg cursor_on
    );
	 
	integer i,j;
	always@(*) begin
	for(i=0;i<210;i=i+1)
	 begin
		for(j=0;j<160;j=j+1)
		begin
			if(next[210*i+j]==1'b1) begin
				if(((CounterX>=3*i+5)&&(CounterX<3*(i+1)+5))&&((CounterY>=3*j)&&(CounterY<3*(j+1))))
				begin
					cursor_on <= 1'b1;
				end
				else
				begin
					cursor_on <= 1'b0;
				end 
			end
			
			else begin
				cursor_on <= 1'b0;
			end
		
		end
	end
 end
endmodule
