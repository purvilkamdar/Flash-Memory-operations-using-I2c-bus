`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:57:18 04/26/2016
// Design Name:   Address
// Module Name:   D:/Xproject/FlashI2C/Address_tb.v
// Project Name:  FlashI2C
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Address
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Address_tb;

	// Inputs
	reg [7:0] ShiftRegOut;
	reg LoadAddrLSB;
	reg LoadAddrMSB;
	reg IncrAddr;
	reg SelAddr;
	reg Sel5555;
	reg SelAAAA;
	reg SelHOLD;
	reg SelXXXX;
	reg SCL;

	// Outputs
	wire [15:0] Addr;

	// Instantiate the Unit Under Test (UUT)
	Address uut (
		.ShiftRegOut(ShiftRegOut), 
		.LoadAddrLSB(LoadAddrLSB), 
		.LoadAddrMSB(LoadAddrMSB), 
		.IncrAddr(IncrAddr), 
		.SelAddr(SelAddr), 
		.Sel5555(Sel5555), 
		.SelAAAA(SelAAAA), 
		.SelHOLD(SelHOLD), 
		.SelXXXX(SelXXXX), 
		.SCL(SCL), 
		.Addr(Addr)
	);

	initial begin
		// Initialize Inputs
		ShiftRegOut = 8'b01011010;
		LoadAddrLSB = 0;
		LoadAddrMSB = 0;
		IncrAddr = 0;
		SelAddr = 0;
		Sel5555 = 0;
		SelAAAA = 0;
		SelHOLD = 0;
		SelXXXX = 0;
		SCL = 0;

		// Wait 100 ns for global reset to finish
		#40 LoadAddrLSB=1;
		#40 ShiftRegOut=8'b11111111;LoadAddrMSB=1;LoadAddrLSB=0;
		#40 LoadAddrMSB=0;SelAddr=1;
		#40 SelAddr=1;IncrAddr=1;
		#40 SelAddr=0;Sel5555=1;
		#40 Sel5555=0;SelAAAA=1;
		#40 SelAAAA=0;SelHOLD=1;
		#40 SelHOLD=0;SelXXXX=1;
        
		// Add stimulus here

	end
   always
#10 SCL=~SCL;   
endmodule

