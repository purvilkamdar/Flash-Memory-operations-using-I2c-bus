`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:19 04/25/2016 
// Design Name: 
// Module Name:    ShiftReg 
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
module ShiftReg(
    input ShiftIn,
    input ShiftOut,
    input LoadShift,
    input [7:0] ShiftRegIn,
    output reg [7:0] ShiftRegOut,
    input SCL,
    inout SDA,
    input SDAIn,
    input SDAOut,
	 input din
    );
	 reg hold;
	 assign SDA = (ShiftIn==1 && SDAIn==1)?din:'bz;
	 assign SDA = (ShiftIn==0 && SDAIn==0 && ShiftOut==0 && SDAOut==0)?din:'bz;
	 assign SDA = (ShiftOut==1 && SDAOut==1)?hold:'bz;
	always@(negedge SCL)
	begin
		//assign SDA = (ShiftOut==1 && SDAOut==1)?ShiftRegOut[0]:'bz;
	   if(ShiftOut==1 && SDAOut==1)
		begin
			hold = ShiftRegOut[0];
			ShiftRegOut[0]=ShiftRegOut[1];
			ShiftRegOut[1]=ShiftRegOut[2];
			ShiftRegOut[2]=ShiftRegOut[3];
			ShiftRegOut[3]=ShiftRegOut[4];
			ShiftRegOut[4]=ShiftRegOut[5];
			ShiftRegOut[5]=ShiftRegOut[6];
			ShiftRegOut[6]=ShiftRegOut[7];
			ShiftRegOut[7]=1'bx;
				
			
			
			
			
			
			
		end
		
		if(ShiftIn==1 && SDAIn==1)
		begin
			ShiftRegOut[0]=ShiftRegOut[1];
			ShiftRegOut[1]=ShiftRegOut[2];
			ShiftRegOut[2]=ShiftRegOut[3];
			ShiftRegOut[3]=ShiftRegOut[4];
			ShiftRegOut[4]=ShiftRegOut[5];
			ShiftRegOut[5]=ShiftRegOut[6];
			ShiftRegOut[6]=ShiftRegOut[7];
			ShiftRegOut[7]=SDA;
			
			
			
			
			
			
			
		end
		if(LoadShift==1)
	 begin
	 				ShiftRegOut[0]=ShiftRegIn[0];
					ShiftRegOut[1]=ShiftRegIn[1];
					ShiftRegOut[2]=ShiftRegIn[2];
					ShiftRegOut[3]=ShiftRegIn[3];
					ShiftRegOut[4]=ShiftRegIn[4];
					ShiftRegOut[5]=ShiftRegIn[5];
					ShiftRegOut[6]=ShiftRegIn[6];
					ShiftRegOut[7]=ShiftRegIn[7];
	end
	
	end
	
	 	 
endmodule