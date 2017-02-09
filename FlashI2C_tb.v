`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:16:32 04/27/2016
// Design Name:   FlashI2C
// Module Name:   D:/Xproject/FlashI2C/FlashI2C_tb.v
// Project Name:  FlashI2C
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FlashI2C
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FlashI2C_tb;

	// Inputs
	reg SCL;
	reg din;
	reg START;
	reg STOP;

	// Outputs
	wire ShiftIn;
	wire ShiftOut;
	wire LoadShift;
	wire LoadDevId;
	wire WR;
	wire LoadAddrLSB;
	wire LoadAddrMSB;
	wire SelAddr;
	wire Sel5555;
	wire SelXXXX;
	wire SelAAAA;
	wire SelHOLD;
	wire SelData;
	wire Sel55;
	wire SelAA;
	wire Sel00;
	wire SelB0;
	wire SelC0;
	wire SelD0;
	wire SelE0;
	wire EnDataIn;
	wire EnDataOut;
	wire EnSDAOut;
	wire SDAIn;
	wire SDAOut;
	wire ENbar;
	wire WEbar;
	wire REbar;
	wire SelAux;
	wire [7:0] ShiftRegOut;
	wire [7:0] ShiftRegIn;
	wire [7:0] IO;
	wire [15:0] Addr;
   wire [5:0] count;
	// Bidirs
	wire SDA;

	// Instantiate the Unit Under Test (UUT)
	FlashI2C uut (
		.SCL(SCL), 
		.din(din), 
		.START(START), 
		.STOP(STOP), 
		.ShiftIn(ShiftIn), 
		.ShiftOut(ShiftOut), 
		.LoadShift(LoadShift), 
		.LoadDevId(LoadDevId), 
		.WR(WR), 
		.LoadAddrLSB(LoadAddrLSB), 
		.LoadAddrMSB(LoadAddrMSB), 
		.SelAddr(SelAddr), 
		.Sel5555(Sel5555), 
		.SelXXXX(SelXXXX), 
		.SelAAAA(SelAAAA), 
		.SelHOLD(SelHOLD), 
		.SelData(SelData), 
		.Sel55(Sel55), 
		.SelAA(SelAA), 
		.Sel00(Sel00), 
		.SelB0(SelB0), 
		.SelC0(SelC0), 
		.SelD0(SelD0), 
		.SelE0(SelE0), 
		.SDA(SDA), 
		.EnDataIn(EnDataIn), 
		.EnDataOut(EnDataOut), 
		.EnSDAOut(EnSDAOut), 
		.SDAIn(SDAIn), 
		.SDAOut(SDAOut), 
		.ENbar(ENbar), 
		.WEbar(WEbar), 
		.REbar(REbar), 
		.SelAux(SelAux), 
		.ShiftRegOut(ShiftRegOut), 
		.ShiftRegIn(ShiftRegIn), 
		.IO(IO), 
		.Addr(Addr),
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
		SCL = 1;
		din = 1;
		START = 0;
		STOP = 0;
		#10 START=1;din=0;
		#10 din=1;
		#20 din=1;
		#20 din=0;
		
		// Wait 100 ns for global reset to finish
		repeat(14)
		begin
			#20 din=1;
			#20 din=0;
			#20 din=0;
		end 
      #35 din=1;
		// Add stimulus here

	end
      
endmodule

