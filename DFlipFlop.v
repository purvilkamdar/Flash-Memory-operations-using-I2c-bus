`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:29 04/25/2016 
// Design Name: 
// Module Name:    DFlipFlop 
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
module DFlipFlop(
    input d,
    output reg q,
    input clk
    );
    always@(posedge clk)
			q<=d;

endmodule
