`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:34:57 04/27/2016 
// Design Name: 
// Module Name:    Controller 
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
module Controller(
    input WR,
    input START,
    input STOP,
    output reg ShiftIn,
    output reg ShiftOut,
    output reg LoadShift,
    output reg LoadDevId,
    output reg LoadAddrLSB,
    output reg LoadAddrMSB,
    output reg IncrAddr,
    output reg SelAddr,
    output reg Sel5555,
    output reg SelAAAA,
    output reg SelHOLD,
    output reg SelXXXX,
    output reg SelData,
    output reg Sel55,
    output reg SelAA,
    output reg SelB0,
    output reg SelC0,
    output reg SelD0,
    output reg SelE0,
    output reg Sel00,
    output reg EnDataIn,
    output reg EnDataOut,
    output reg EnSDAOut,
    output reg SDAIn,
    output reg SDAOut,
    output reg ENbar,
    output reg WEbar,
    output reg REbar,
    output reg SelAux,
	 output reg [5:0] count,
    input SCL
    );
	initial
	begin
		count=6'b000000;
		ShiftIn=0;
		ShiftOut=0;
		LoadShift=0;
		LoadDevId=0;
		LoadAddrLSB=0;
		LoadAddrMSB=0;
		IncrAddr=0;
		SelAddr=0;
		Sel5555=0;
		SelAAAA=0;
		SelHOLD=0;
		SelXXXX=0;
		SelData=0;
		Sel55=0;
		SelAA=0;
		SelB0=0;
		SelC0=0;
		SelD0=0;
		SelE0=0;
		Sel00=0;
		EnDataIn=0;
		EnDataOut=0;
		EnSDAOut=0;
		SDAIn=0;
		SDAOut=0;
		ENbar=1;
		WEbar=1;
		REbar=1;
		SelAux=0;

	end
	always@(WR)
	begin
		if(WR==0)
			begin
				case(count)
					6'b001010:begin ENbar=0;WEbar=0;ShiftIn=1;SDAIn=1;Sel5555=1;SelAA=1;EnDataOut=1;LoadDevId=0;EnSDAOut=0; end
					6'b001011:begin ENbar=1;WEbar=1;Sel5555=0;SelAA=0;EnDataOut=0;SelHOLD=1;LoadDevId=0; end
					6'b001100:begin ENbar=0;WEbar=0;SelHOLD=0;SelAAAA=1;Sel55=1;EnDataOut=1;LoadDevId=0; end
					6'b001101:begin ENbar=1;WEbar=1;SelHOLD=1;SelAAAA=0;Sel55=0;EnDataOut=0;LoadDevId=0; end
					6'b001110:begin ENbar=0;WEbar=0;Sel5555=1;SelHOLD=0;SelB0=1;EnDataOut=1;LoadDevId=0; end
					6'b001111:begin ENbar=1;WEbar=1;Sel5555=0;SelHOLD=1;SelB0=0;EnDataOut=0; end
					6'b010000:begin ENbar=0;WEbar=0;SelXXXX=1;SelHOLD=0;SelC0=1;EnDataOut=1; end
					6'b010001:begin ENbar=1;WEbar=1;SelXXXX=0;SelC0=0;EnDataOut=0; end
					6'b010010:begin ShiftIn=0;SDAIn=0;EnSDAOut=1;LoadAddrLSB=1; end
					6'b010011:begin ShiftIn=1;SDAIn=1;EnSDAOut=0;LoadAddrLSB=0; end
					6'b010100:begin end
					6'b010101:begin end
					6'b010110:begin end
					6'b010111:begin end
					6'b011000:begin end
					6'b011001:begin end
					6'b011010:begin end
					6'b011011:begin ShiftIn=0;SDAIn=0;EnSDAOut=1;LoadAddrMSB=1; end
					6'b011100:begin ShiftIn=1;SDAIn=1;EnSDAOut=0;LoadAddrMSB=0; end
					6'b011101:begin end
					6'b011110:begin end
					6'b011111:begin end
					6'b100000:begin end
					6'b100001:begin end
					6'b100010:begin end
					6'b100011:begin end
					6'b100100:begin ShiftIn=0;SDAIn=0;EnSDAOut=1;SelAddr=1;SelData=1;ENbar=0;WEbar=0;EnDataOut=1; end
					6'b100101:begin ShiftIn=1;SDAIn=1;EnSDAOut=0;SelAddr=0;SelData=0;ENbar=1;WEbar=1;EnDataOut=0; end
					6'b100110:begin end
					6'b100111:begin end
					6'b101000:begin end
					6'b101001:begin end
					6'b101010:begin end
					6'b101011:begin end
					6'b101100:begin IncrAddr=1;end
					6'b101101:begin ShiftIn=0;SDAIn=0;EnSDAOut=1;SelAddr=1;SelData=1;IncrAddr=0;ENbar=0;WEbar=0;EnDataOut=1; end
					6'b101110:begin EnSDAOut=0;SelAddr=0;SelHOLD=1;SelData=0;ENbar=1;WEbar=1;EnDataOut=0; end
					6'b101111:begin SelXXXX=1;SelHOLD=0;SelD0=1;ENbar=0;WEbar=0;EnDataOut=1;SelAux=1; end
					6'b110000:begin SelXXXX=0;SelHOLD=1;SelD0=0;ENbar=1;WEbar=1;EnDataOut=0;end
					6'b110001:begin SelXXXX=1;SelHOLD=0;SelE0=1;ENbar=0;WEbar=0;EnDataOut=1;end
					6'b110010:begin SelAux=0;end
				endcase
			end
			else if(WR==1)
			begin
				case(count)
					6'b001010:begin ENbar=0;WEbar=0;ShiftIn=1;SDAIn=1;Sel5555=1;SelAA=1;EnDataOut=1;LoadDevId=0;EnSDAOut=0; end
					6'b001011:begin ENbar=1;WEbar=1;Sel5555=0;SelAA=0;EnDataOut=0;SelHOLD=1; end
					6'b001100:begin ENbar=0;WEbar=0;SelHOLD=0;SelAAAA=1;Sel55=1;EnDataOut=1; end
					6'b001101:begin ENbar=1;WEbar=1;SelHOLD=1;SelAAAA=0;Sel55=0;EnDataOut=0; end
					6'b001110:begin ENbar=0;WEbar=0;Sel5555=1;SelHOLD=0;Sel00=1;EnDataOut=1; end
					6'b001111:begin ENbar=1;WEbar=1;Sel5555=0;Sel00=0;EnDataOut=0; end
					6'b010000:begin end
					6'b010001:begin end
					6'b010010:begin ShiftIn=0;SDAIn=0;EnSDAOut=1;LoadAddrLSB=1; end
					6'b010011:begin ShiftIn=1;SDAIn=1;EnSDAOut=0;LoadAddrLSB=0; end
					6'b010100:begin end
					6'b010101:begin end
					6'b010110:begin end
					6'b010111:begin end
					6'b011000:begin end
					6'b011001:begin end
					6'b011010:begin end
					6'b011011:begin ShiftIn=0;SDAIn=0;EnSDAOut=1;LoadAddrMSB=1;SelAddr=1;ENbar=0;REbar=0;LoadShift=1;EnDataIn=1; end
					6'b011100:begin ENbar=1;REbar=1;ShiftOut=1;LoadShift=0;SelAddr=0;EnDataIn=0;SDAOut=1;EnSDAOut=0; end
					6'b011101:begin end
					6'b011110:begin ENbar=0;WEbar=0;Sel5555=1;SelAA=1;EnDataOut=1; end
					6'b011111:begin ENbar=1;WEbar=1;Sel5555=0;SelAA=0;EnDataOut=0;SelHOLD=1; end
					6'b100000:begin ENbar=0;WEbar=0;SelAAAA=1;Sel55=1;EnDataOut=1;SelHOLD=0; end
					6'b100001:begin ENbar=1;WEbar=1;SelAAAA=0;Sel55=0;EnDataOut=0;SelHOLD=1; end
					6'b100010:begin ENbar=0;WEbar=0;Sel5555=1;Sel00=1;EnDataOut=1;SelHOLD=0; end
					6'b100011:begin ENbar=1;WEbar=1;ShiftOut=0;IncrAddr=1;Sel5555=0;Sel00=0;EnDataOut=0;SelHOLD=1; end
					6'b100100:begin ENbar=0;REbar=0;LoadShift=1;IncrAddr=0;SelAddr=1;EnDataIn=1;SDAOut=0;SelHOLD=0; end
					6'b100101:begin ENbar=1;REbar=1;ShiftOut=1;LoadShift=0;SelAddr=0;EnDataIn=0;SDAOut=1; end
					6'b100110:begin end
					6'b100111:begin ENbar=0;WEbar=0;Sel5555=1;SelAA=1;EnDataOut=1; end
					6'b101000:begin ENbar=1;WEbar=1;Sel5555=0;SelAA=0;EnDataOut=0;SelHOLD=1; end
					6'b101001:begin ENbar=0;WEbar=0;SelAAAA=1;Sel55=1;EnDataOut=1;SelHOLD=0; end
					6'b101010:begin ENbar=1;WEbar=1;SelAAAA=0;Sel55=0;EnDataOut=0;SelHOLD=1; end
					6'b101011:begin ENbar=0;WEbar=0;Sel5555=1;Sel00=1;EnDataOut=1;SelHOLD=0; end
					6'b101100:begin ENbar=1;WEbar=1;ShiftOut=0;IncrAddr=1;Sel5555=0;Sel00=0;EnDataOut=0;SelHOLD=1; end
					6'b101101:begin ENbar=0;REbar=0;LoadShift=1;SelAddr=1;EnDataIn=1;SDAOut=0;SelHOLD=0; end
					6'b101110:begin ENbar=1;REbar=1;ShiftOut=1;LoadShift=0;SelAddr=0;EnDataIn=0;SDAOut=1; end
					6'b101111:begin end
					6'b110000:begin ENbar=0;WEbar=0;Sel5555=1;SelAA=1;EnDataOut=1; end
					6'b110001:begin ENbar=1;WEbar=1;Sel5555=0;SelAA=0;EnDataOut=0;SelHOLD=1; end
					6'b110010:begin ENbar=0;WEbar=0;SelAAAA=1;Sel55=1;EnDataOut=1;SelHOLD=0; end
					6'b110011:begin ENbar=1;WEbar=1;SelAAAA=0;Sel55=0;EnDataOut=0;SelHOLD=1; end
					6'b110100:begin ENbar=0;WEbar=0;Sel5555=1;Sel00=1;EnDataOut=1;SelHOLD=0; end
					6'b110101:begin ENbar=1;WEbar=1;ShiftOut=0;IncrAddr=1;Sel5555=0;Sel00=0;EnDataOut=0; end
					6'b110110:begin IncrAddr=0;SDAOut=0; end
				endcase
			end
	end
	always@(negedge SCL)
	begin
		if(START==1)
		begin
			count=count+1;
			case(count)
				6'b000001:begin ShiftIn=1;SDAIn=1; end
				6'b001001:begin ShiftIn=0;LoadDevId=1;SDAIn=0;EnSDAOut=1; end
			endcase
			if(WR==0)
			begin
				case(count)
					6'b001010:begin ENbar=0;WEbar=0;ShiftIn=1;SDAIn=1;Sel5555=1;SelAA=1;EnDataOut=1;LoadDevId=0;EnSDAOut=0; end
					6'b001011:begin ENbar=1;WEbar=1;Sel5555=0;SelAA=0;EnDataOut=0;SelHOLD=1;LoadDevId=0; end
					6'b001100:begin ENbar=0;WEbar=0;SelHOLD=0;SelAAAA=1;Sel55=1;EnDataOut=1;LoadDevId=0; end
					6'b001101:begin ENbar=1;WEbar=1;SelHOLD=1;SelAAAA=0;Sel55=0;EnDataOut=0;LoadDevId=0; end
					6'b001110:begin ENbar=0;WEbar=0;Sel5555=1;SelHOLD=0;SelB0=1;EnDataOut=1;LoadDevId=0; end
					6'b001111:begin ENbar=1;WEbar=1;Sel5555=0;SelHOLD=1;SelB0=0;EnDataOut=0; end
					6'b010000:begin ENbar=0;WEbar=0;SelXXXX=1;SelHOLD=0;SelC0=1;EnDataOut=1; end
					6'b010001:begin ENbar=1;WEbar=1;SelXXXX=0;SelC0=0;EnDataOut=0; end
					6'b010010:begin ShiftIn=0;SDAIn=0;EnSDAOut=1;LoadAddrLSB=1; end
					6'b010011:begin ShiftIn=1;SDAIn=1;EnSDAOut=0;LoadAddrLSB=0; end
					6'b010100:begin end
					6'b010101:begin end
					6'b010110:begin end
					6'b010111:begin end
					6'b011000:begin end
					6'b011001:begin end
					6'b011010:begin end
					6'b011011:begin ShiftIn=0;SDAIn=0;EnSDAOut=1;LoadAddrMSB=1; end
					6'b011100:begin ShiftIn=1;SDAIn=1;EnSDAOut=0;LoadAddrMSB=0; end
					6'b011101:begin end
					6'b011110:begin end
					6'b011111:begin end
					6'b100000:begin end
					6'b100001:begin end
					6'b100010:begin end
					6'b100011:begin end
					6'b100100:begin ShiftIn=0;SDAIn=0;EnSDAOut=1;SelAddr=1;SelData=1;ENbar=0;WEbar=0;EnDataOut=1; end
					6'b100101:begin ShiftIn=1;SDAIn=1;EnSDAOut=0;SelAddr=0;SelData=0;ENbar=1;WEbar=1;EnDataOut=0; end
					6'b100110:begin end
					6'b100111:begin end
					6'b101000:begin end
					6'b101001:begin end
					6'b101010:begin end
					6'b101011:begin end
					6'b101100:begin IncrAddr=1;end
					6'b101101:begin ShiftIn=0;SDAIn=0;EnSDAOut=1;SelAddr=1;SelData=1;IncrAddr=0;ENbar=0;WEbar=0;EnDataOut=1; end
					6'b101110:begin EnSDAOut=0;SelAddr=0;SelHOLD=1;SelData=0;ENbar=1;WEbar=1;EnDataOut=0; end
					6'b101111:begin SelXXXX=1;SelHOLD=0;SelD0=1;ENbar=0;WEbar=0;EnDataOut=1;SelAux=1; end
					6'b110000:begin SelXXXX=0;SelHOLD=1;SelD0=0;ENbar=1;WEbar=1;EnDataOut=0;end
					6'b110001:begin SelXXXX=1;SelHOLD=0;SelE0=1;ENbar=0;WEbar=0;EnDataOut=1;end
					6'b110010:begin SelAux=0;end
				endcase
			end
			else if(WR==1)
			begin
				case(count)
					6'b001010:begin ENbar=0;WEbar=0;ShiftIn=1;SDAIn=1;Sel5555=1;SelAA=1;EnDataOut=1;LoadDevId=0;EnSDAOut=0; end
					6'b001011:begin ENbar=1;WEbar=1;Sel5555=0;SelAA=0;EnDataOut=0;SelHOLD=1; end
					6'b001100:begin ENbar=0;WEbar=0;SelHOLD=0;SelAAAA=1;Sel55=1;EnDataOut=1; end
					6'b001101:begin ENbar=1;WEbar=1;SelHOLD=1;SelAAAA=0;Sel55=0;EnDataOut=0; end
					6'b001110:begin ENbar=0;WEbar=0;Sel5555=1;SelHOLD=0;Sel00=1;EnDataOut=1; end
					6'b001111:begin ENbar=1;WEbar=1;Sel5555=0;Sel00=0;EnDataOut=0; end
					6'b010000:begin end
					6'b010001:begin end
					6'b010010:begin ShiftIn=0;SDAIn=0;EnSDAOut=1;LoadAddrLSB=1; end
					6'b010011:begin ShiftIn=1;SDAIn=1;EnSDAOut=0;LoadAddrLSB=0; end
					6'b010100:begin end
					6'b010101:begin end
					6'b010110:begin end
					6'b010111:begin end
					6'b011000:begin end
					6'b011001:begin end
					6'b011010:begin end
					6'b011011:begin ShiftIn=0;SDAIn=0;EnSDAOut=1;LoadAddrMSB=1;SelAddr=1;ENbar=0;REbar=0;LoadShift=1;EnDataIn=1; end
					6'b011100:begin ENbar=1;REbar=1;ShiftOut=1;LoadShift=0;SelAddr=0;EnDataIn=0;SDAOut=1;EnSDAOut=0; end
					6'b011101:begin end
					6'b011110:begin ENbar=0;WEbar=0;Sel5555=1;SelAA=1;EnDataOut=1; end
					6'b011111:begin ENbar=1;WEbar=1;Sel5555=0;SelAA=0;EnDataOut=0;SelHOLD=1; end
					6'b100000:begin ENbar=0;WEbar=0;SelAAAA=1;Sel55=1;EnDataOut=1;SelHOLD=0; end
					6'b100001:begin ENbar=1;WEbar=1;SelAAAA=0;Sel55=0;EnDataOut=0;SelHOLD=1; end
					6'b100010:begin ENbar=0;WEbar=0;Sel5555=1;Sel00=1;EnDataOut=1;SelHOLD=0; end
					6'b100011:begin ENbar=1;WEbar=1;ShiftOut=0;IncrAddr=1;Sel5555=0;Sel00=0;EnDataOut=0;SelHOLD=1; end
					6'b100100:begin ENbar=0;REbar=0;LoadShift=1;IncrAddr=0;SelAddr=1;EnDataIn=1;SDAOut=0;SelHOLD=0; end
					6'b100101:begin ENbar=1;REbar=1;ShiftOut=1;LoadShift=0;SelAddr=0;EnDataIn=0;SDAOut=1; end
					6'b100110:begin end
					6'b100111:begin ENbar=0;WEbar=0;Sel5555=1;SelAA=1;EnDataOut=1; end
					6'b101000:begin ENbar=1;WEbar=1;Sel5555=0;SelAA=0;EnDataOut=0;SelHOLD=1; end
					6'b101001:begin ENbar=0;WEbar=0;SelAAAA=1;Sel55=1;EnDataOut=1;SelHOLD=0; end
					6'b101010:begin ENbar=1;WEbar=1;SelAAAA=0;Sel55=0;EnDataOut=0;SelHOLD=1; end
					6'b101011:begin ENbar=0;WEbar=0;Sel5555=1;Sel00=1;EnDataOut=1;SelHOLD=0; end
					6'b101100:begin ENbar=1;WEbar=1;ShiftOut=0;IncrAddr=1;Sel5555=0;Sel00=0;EnDataOut=0;SelHOLD=1; end
					6'b101101:begin ENbar=0;REbar=0;LoadShift=1;SelAddr=1;EnDataIn=1;SDAOut=0;SelHOLD=0; end
					6'b101110:begin ENbar=1;REbar=1;ShiftOut=1;LoadShift=0;SelAddr=0;EnDataIn=0;SDAOut=1; end
					6'b101111:begin end
					6'b110000:begin ENbar=0;WEbar=0;Sel5555=1;SelAA=1;EnDataOut=1; end
					6'b110001:begin ENbar=1;WEbar=1;Sel5555=0;SelAA=0;EnDataOut=0;SelHOLD=1; end
					6'b110010:begin ENbar=0;WEbar=0;SelAAAA=1;Sel55=1;EnDataOut=1;SelHOLD=0; end
					6'b110011:begin ENbar=1;WEbar=1;SelAAAA=0;Sel55=0;EnDataOut=0;SelHOLD=1; end
					6'b110100:begin ENbar=0;WEbar=0;Sel5555=1;Sel00=1;EnDataOut=1;SelHOLD=0; end
					6'b110101:begin ENbar=1;WEbar=1;ShiftOut=0;IncrAddr=1;Sel5555=0;Sel00=0;EnDataOut=0; end
					6'b110110:begin IncrAddr=0;SDAOut=0; end
				endcase
			end
		end
	end
	
	

endmodule
