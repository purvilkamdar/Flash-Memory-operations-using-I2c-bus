`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:06:00 04/27/2016
// Design Name:   Controller
// Module Name:   D:/Xproject/FlashI2C/Controller_tb.v
// Project Name:  FlashI2C
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Controller_tb;

	// Inputs
	reg WR;
	reg START;
	reg STOP;
	reg SCL;

	// Outputs
	wire ShiftIn;
	wire ShiftOut;
	wire LoadShift;
	wire LoadDevId;
	wire LoadAddrLSB;
	wire LoadAddrMSB;
	wire IncrAddr;
	wire SelAddr;
	wire Sel5555;
	wire SelAAAA;
	wire SelHOLD;
	wire SelXXXX;
	wire SelData;
	wire Sel55;
	wire SelAA;
	wire SelB0;
	wire SelC0;
	wire SelD0;
	wire SelE0;
	wire Sel00;
	wire EnDataIn;
	wire EnDataOut;
	wire EnSDAOut;
	wire SDAIn;
	wire SDAOut;
	wire ENbar;
	wire WEbar;
	wire REbar;
	wire SelAux;
	wire [5:0] count;
	// Instantiate the Unit Under Test (UUT)
	Controller uut (
		.WR(WR), 
		.START(START), 
		.STOP(STOP), 
		.ShiftIn(ShiftIn), 
		.ShiftOut(ShiftOut), 
		.LoadShift(LoadShift), 
		.LoadDevId(LoadDevId), 
		.LoadAddrLSB(LoadAddrLSB), 
		.LoadAddrMSB(LoadAddrMSB), 
		.IncrAddr(IncrAddr), 
		.SelAddr(SelAddr), 
		.Sel5555(Sel5555), 
		.SelAAAA(SelAAAA), 
		.SelHOLD(SelHOLD), 
		.SelXXXX(SelXXXX), 
		.SelData(SelData), 
		.Sel55(Sel55), 
		.SelAA(SelAA), 
		.SelB0(SelB0), 
		.SelC0(SelC0), 
		.SelD0(SelD0), 
		.SelE0(SelE0), 
		.Sel00(Sel00), 
		.EnDataIn(EnDataIn), 
		.EnDataOut(EnDataOut), 
		.EnSDAOut(EnSDAOut), 
		.SDAIn(SDAIn), 
		.SDAOut(SDAOut), 
		.ENbar(ENbar), 
		.WEbar(WEbar), 
		.REbar(REbar), 
		.SelAux(SelAux), 
		.SCL(SCL),
		.count(count)
	);
   initial
	begin
		#10 SCL=1;
		forever
		#10 SCL=~SCL;
	end
	initial begin
		// Initialize Inputs
		WR = 'bx;
		START = 0;
		STOP = 0;
		SCL = 1;
		
		// Wait 100 ns for global reset to finish
		#10 START=1;
		#170 WR=1;
        
		// Add stimulus here

	end
      
endmodule

