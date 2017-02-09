`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:01:10 04/27/2016 
// Design Name: 
// Module Name:    FlashI2C 
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
module FlashI2C(
    input SCL,
    input din,
    input START,
    input STOP,
    output wire ShiftIn,
    output wire ShiftOut,
    output wire LoadShift,
    output wire LoadDevId,
    output wire WR,
    output wire LoadAddrLSB,
    output wire LoadAddrMSB,
    output wire SelAddr,
    output wire Sel5555,
    output wire SelXXXX,
    output wire SelAAAA,
    output wire SelHOLD,
    output wire SelData,
    output wire Sel55,
    output wire SelAA,
    output wire Sel00,
    output wire SelB0,
    output wire SelC0,
    output wire SelD0,
    output wire SelE0,
    inout SDA,
    output wire EnDataIn,
    output wire EnDataOut,
    output wire EnSDAOut,
    output wire SDAIn,
    output wire SDAOut,
    output wire ENbar,
    output wire WEbar,
    output wire REbar,
    output wire SelAux,
    output wire [7:0] ShiftRegOut,
    output wire [7:0] ShiftRegIn,
    output wire [7:0] IO,
    output wire [15:0] Addr,
	 output wire [5:0] count
    );
	 wire w;
	Address adr (
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
		
	DeviceId did (
		.ShiftRegOut(ShiftRegOut), 
		.LoadDeviceId(LoadDevId), 
		.SCL(SCL), 
		.WR(WR)
	);
	
	Controller cntrlr (
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
	
	DataIO dio (
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
	
	
	ShiftReg sreg (
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
   


endmodule
