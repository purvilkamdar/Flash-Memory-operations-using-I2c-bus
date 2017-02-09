`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:21:01 04/26/2016
// Design Name:   DeviceId
// Module Name:   D:/Xproject/FlashI2C/DeviceId_tb.v
// Project Name:  FlashI2C
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DeviceId
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DeviceId_tb;

	// Inputs
	reg [7:0] ShiftRegOut;
	reg LoadDeviceId;
	reg SCL;

	// Outputs
	wire WR;

	// Instantiate the Unit Under Test (UUT)
	DeviceId uut (
		.ShiftRegOut(ShiftRegOut), 
		.LoadDeviceId(LoadDeviceId), 
		.SCL(SCL), 
		.WR(WR)
	);

	initial begin
		// Initialize Inputs
		ShiftRegOut = 8'b00110001;
		LoadDeviceId = 0;
		SCL = 0;

		// Wait 100 ns for global reset to finish
		#100 LoadDeviceId=1;
        
		// Add stimulus here

	end
   always
	#10 SCL=~SCL;
endmodule

