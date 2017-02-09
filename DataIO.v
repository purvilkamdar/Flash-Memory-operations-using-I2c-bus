`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:00:53 04/26/2016 
// Design Name: 
// Module Name:    DataIO 
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
module DataIO(
    input SelData,
    input SelAA,
    input Sel55,
    input SelB0,
    input SelC0,
    input SelD0,
    input SelE0,
    input Sel00,
    input [7:0] ShiftRegOut,
    input EnDataOut,
    input EnDataIn,
    output reg [7:0] ShiftRegIn,
    output reg [7:0] IO,
    input SCL
    );
		integer i;
		always@(negedge SCL)
		begin
			if(SelData==1 && EnDataOut==1)
			begin
				for(i=0;i<8;i=i+1)
				begin
					IO[i]=ShiftRegOut[i];
				end
			end
			if(SelAA==1 && EnDataOut==1)
			begin
				IO=8'b10101010;
			end
			if(Sel55==1 && EnDataOut==1)
			begin
				IO=8'b01010101;
			end
			if(SelB0==1 && EnDataOut==1)
			begin
				IO=8'b10110000;
			end
			if(SelC0==1 && EnDataOut==1)
			begin
				IO=8'b11000000;
			end
			if(SelD0==1 && EnDataOut==1)
			begin
				IO=8'b11010000;
			end
			if(SelE0==1 && EnDataOut==1)
			begin
				IO=8'b11100000;
			end
			if(Sel00==1 && EnDataOut==1)
			begin
				IO=8'b00000000;
			end
			if(EnDataIn==1 && EnDataOut==0)
			begin
				ShiftRegIn=8'b10100101;
			end
		end

endmodule
