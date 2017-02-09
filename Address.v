`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:22:08 04/26/2016 
// Design Name: 
// Module Name:    Address 
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
module Address(
    input [7:0] ShiftRegOut,
    input LoadAddrLSB,
    input LoadAddrMSB,
    input IncrAddr,
    input SelAddr,
    input Sel5555,
    input SelAAAA,
	 input SelHOLD,
	 input SelXXXX,
    input SCL,
    output reg [15:0] Addr
    );
	 reg [15:0] temp;
	 reg [15:0] adtemp;
	 integer i;
	always@(negedge SCL)
	begin
		adtemp[0]=1;
		adtemp[1]=0;
		adtemp[2]=0;
		adtemp[3]=0;
		adtemp[4]=0;
		adtemp[5]=0;
		adtemp[6]=0;
		adtemp[7]=0;
		adtemp[8]=0;
		adtemp[9]=0;
		adtemp[10]=0;
		adtemp[11]=0;
		adtemp[12]=0;
		adtemp[13]=0;
		adtemp[14]=0;
		adtemp[15]=0;
		
		if(LoadAddrLSB==1)
		begin
			temp[0]=ShiftRegOut[0];
			temp[1]=ShiftRegOut[1];
			temp[2]=ShiftRegOut[2];
			temp[3]=ShiftRegOut[3];
			temp[4]=ShiftRegOut[4];
			temp[5]=ShiftRegOut[5];
			temp[6]=ShiftRegOut[6];
			temp[7]=ShiftRegOut[7];
		end
		if(LoadAddrMSB==1)
		begin
			temp[8]=ShiftRegOut[0];
			temp[9]=ShiftRegOut[1];
			temp[10]=ShiftRegOut[2];
			temp[11]=ShiftRegOut[3];
			temp[12]=ShiftRegOut[4];
			temp[13]=ShiftRegOut[5];
			temp[14]=ShiftRegOut[6];
			temp[15]=ShiftRegOut[7];
		end
		if(IncrAddr==1)
		begin
				for(i=0;i<15;i=i+1)
				begin
					if(temp[i]==1 && adtemp[i]==1)
					begin
						adtemp[i+1]=1;
					end
					else
					begin
						adtemp[i+1]=0;
					end
				end
				for(i=0;i<=15;i=i+1)
				begin
					temp[i]=temp[i]+adtemp[i];
				end
		end
		if(SelAddr==1)
		begin
			for(i=0;i<=15;i=i+1)
			begin
				Addr[i]=temp[i];
			end
		end
		if(Sel5555==1)
		begin
			for(i=0;i<=15;i=i+1)
			begin
				if(i%2==0)
				begin
					Addr[i]=1;
				end
				else
				begin
					Addr[i]=0;
				end
			end
		end
		if(SelAAAA==1)
		begin
			for(i=0;i<=15;i=i+1)
			begin
				if(i%2==0)
				begin
					Addr[i]=0;
				end
				else
				begin
					Addr[i]=1;
				end
			end
		end
		if(SelHOLD==1)
		begin
			for(i=0;i<=15;i=i+1)
			begin
				if(i%2==0)
				begin
					Addr[i]='bx;
				end
				else
				begin
					Addr[i]=1;
				end
			end
		end
		if(SelXXXX==1)
		begin
			for(i=0;i<=15;i=i+1)
			begin
				Addr[i]='bx;
			end
			
		end
	end

endmodule
