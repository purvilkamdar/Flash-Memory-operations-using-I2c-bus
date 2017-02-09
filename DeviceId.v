`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:18:57 04/25/2016 
// Design Name: 
// Module Name:    DeviceId 
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
module DeviceId(
    input [7:0] ShiftRegOut,
    input LoadDeviceId,
    input SCL,
    output reg WR
    );
	 reg [7:0] devid;
	always@(negedge SCL)
	begin
		if(LoadDeviceId==1)
		begin
			devid[0]=ShiftRegOut[0];
			devid[1]=ShiftRegOut[1];
			devid[2]=ShiftRegOut[2];
			devid[3]=ShiftRegOut[3];
			devid[4]=ShiftRegOut[4];
			devid[5]=ShiftRegOut[5];
			devid[6]=ShiftRegOut[6];
			devid[7]=ShiftRegOut[7];
			WR=ShiftRegOut[7];
		end
	end

endmodule
