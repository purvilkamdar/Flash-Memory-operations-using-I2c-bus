`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:52:52 04/25/2016
// Design Name:   ShiftReg
// Module Name:   D:/Xproject/FlashI2C/ShiftReg_tb.v
// Project Name:  FlashI2C
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ShiftReg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ShiftReg_tb;

	// Inputs
	reg ShiftIn;
	reg ShiftOut;
	reg LoadShift;
	reg [7:0] ShiftRegIn;
	reg SCL;
	reg SDAIn;
	reg SDAOut;
	reg din;

	// Outputs
	wire [7:0] ShiftRegOut;

	// Bidirs
	wire SDA;

	// Instantiate the Unit Under Test (UUT)
	ShiftReg uut (
		.ShiftIn(ShiftIn), 
		.ShiftOut(ShiftOut), 
		.LoadShift(LoadShift), 
		.ShiftRegIn(ShiftRegIn), 
		.ShiftRegOut(ShiftRegOut), 
		.SCL(SCL), 
		.SDA(SDA), 
		.SDAIn(SDAIn), 
		.SDAOut(SDAOut), 
		.din(din)
	);
   
	initial begin
		// Initialize Inputs
		ShiftIn = 1;
		ShiftOut = 0;
		LoadShift = 0;
		ShiftRegIn = 8'b00110010;
		SCL = 0;
		SDAIn = 1;
		SDAOut = 0;
		din = 0;
      // Wait 100 ns for global reset to finish
		
      #20 din=1;
      #20 din=0;
      #20 din=1;
      #20 din=0;		
		#20 din=1;
      #20 din=0;		
		#20 din=1;
      #20 din=0;		
		#10 ShiftIn=0;SDAIn=0;LoadShift=1;
		// Add stimulus here
		#30 LoadShift=0;ShiftOut=1;SDAOut=1;
	end
   always
   #10 SCL=~SCL;
   
	
		   
endmodule

