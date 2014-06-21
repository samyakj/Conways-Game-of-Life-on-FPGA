`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:22 06/13/2014 
// Design Name: 
// Module Name:    vga 
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
module vga(input clk, input [9:0] CounterX, input [8:0] CounterY, output vga_HS, output vga_VS
    );
reg vga_HS, vga_VS;
always @(posedge clk)
begin
  vga_HS <= (CounterX>=640&&CounterX<737);   // active for 96 clocks
  vga_VS <= (CounterY>=480&&CounterY<483);   // active for 2 clocks
end
endmodule
