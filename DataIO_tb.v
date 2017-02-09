`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:39:24 04/26/2016
// Design Name:   DataIO
// Module Name:   D:/Xproject/FlashI2C/DataIO_tb.v
// Project Name:  FlashI2C
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataIO
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DataIO_tb;

	// Inputs
	reg SelData;
	reg SelAA;
	reg Sel55;
	reg SelB0;
	reg SelC0;
	reg SelD0;
	reg SelE0;
	reg Sel00;
	reg [7:0] ShiftRegOut;
	reg EnDataOut;
	reg EnDataIn;
	reg SCL;

	// Outputs
	wire [7:0] ShiftRegIn;
	wire [7:0] IO;

	// Instantiate the Unit Under Test (UUT)
	DataIO uut (
		.SelData(SelData), 
		.SelAA(SelAA), 
		.Sel55(Sel55), 
		.SelB0(SelB0), 
		.SelC0(SelC0), 
		.SelD0(SelD0), 
		.SelE0(SelE0), 
		.Sel00(Sel00), 
		.ShiftRegOut(ShiftRegOut), 
		.EnDataOut(EnDataOut), 
		.EnDataIn(EnDataIn), 
		.ShiftRegIn(ShiftRegIn), 
		.IO(IO), 
		.SCL(SCL)
	);
	always
	#10 SCL=~SCL;

	initial begin
		// Initialize Inputs
		SelData = 0;
		SelAA = 0;
		Sel55 = 0;
		SelB0 = 0;
		SelC0 = 0;
		SelD0 = 0;
		SelE0 = 0;
		Sel00 = 0;
		ShiftRegOut = 8'b11110000;;
		EnDataOut = 0;
		EnDataIn = 0;
		SCL = 0;

		// Wait 100 ns for global reset to finish
		#20 EnDataOut=1;
      #20 SelData=1;
		#20 SelAA=1;SelData=0;
		#20 Sel55=1;SelAA=0;
		#20 SelB0=1;Sel55=0;
		#20 SelC0=1;SelB0=0;
		#20 SelD0=1;SelC0=0;
		#20 SelE0=1;SelD0=0;
		#20 Sel00=1;SelE0=0;
		#20 EnDataOut=0;EnDataIn=1;Sel00=0;
		// Add stimulus here

	end
   endmodule

