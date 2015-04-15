`timescale 1ns/10ps
`include "firstblock00.v"
`include "firstblock01.v"
`include "firstblock02.v"
`include "firstblock03.v"
`include "firstblock04.v"
`include "firstblock05.v"
`include "firstblock06.v"
`include "firstblock07.v"
`include "firstblock08.v"
`include "firstblock09.v"
`include "firstblock10.v"
`include "firstblock11.v"
`include "firstblock12.v"
`include "firstblock13.v"
`include "firstblock14.v"
`include "firstblock15.v"
`include "firstblock16.v"
`include "firstblock17.v"
`include "firstblock18.v"
`include "firstblock19.v"
`include "firstblock20.v"
`include "firstblock21.v"
`include "firstblock22.v"
`include "firstblock23.v"
`include "firstblock24.v"
`include "firstblock25.v"
`include "firstblock26.v"
`include "firstblock27.v"
`include "firstblock28.v"
`include "firstblock29.v"
`include "firstblock30.v"                    
`include "firstblock31.v"                    

module ssc
	(
	input           clk,
	input           rst,
	input		[31:0]	addr,
	input   [31:0]	Wdata,
	input           write,
	output  reg [31:0]	Rdata,
	input           read,
	input		[15:0]	ADC,
	input						PushADC
	);

	
		
	wire 	[31:0] Global_Run, Global_Run00;
	wire 	[31:0] SampleCount, SampleCount00, CorrelationSeen;
	wire	[31:0] Rdata0, Rdata1, Rdata2, Rdata3, Rdata4, Rdata5, Rdata6, Rdata7, Rdata8, Rdata9, Rdata10, Rdata11, Rdata12,
							 Rdata13, Rdata14, Rdata15, Rdata16, Rdata17, Rdata18, Rdata19, Rdata20, Rdata21, Rdata22, Rdata23, Rdata24,
							 Rdata25,  Rdata26, Rdata27, Rdata28, Rdata29, Rdata30, Rdata31;
	wire	CorrelationSeen00, CorrelationSeen01, CorrelationSeen02, CorrelationSeen03, CorrelationSeen04, CorrelationSeen05,
				CorrelationSeen06, CorrelationSeen07, CorrelationSeen08, CorrelationSeen09, CorrelationSeen10, CorrelationSeen11,
				CorrelationSeen12, CorrelationSeen13, CorrelationSeen14, CorrelationSeen15, CorrelationSeen16, CorrelationSeen17,
				CorrelationSeen18, CorrelationSeen19, CorrelationSeen20, CorrelationSeen21, CorrelationSeen22, CorrelationSeen23,
				CorrelationSeen24, CorrelationSeen25, CorrelationSeen26, CorrelationSeen27, CorrelationSeen28, CorrelationSeen29,
				CorrelationSeen30, CorrelationSeen31;
		
	firstblock00 fb00 ( clk, rst, addr, Wdata, write, Rdata0, read, ADC, PushADC, Global_Run00, SampleCount00 , CorrelationSeen00);
	firstblock01 fb01 ( clk, rst, addr, Wdata, write, Rdata1, read, ADC, PushADC, CorrelationSeen01);
	firstblock02 fb02 ( clk, rst, addr, Wdata, write, Rdata2, read, ADC, PushADC, CorrelationSeen02);
	firstblock03 fb03 ( clk, rst, addr, Wdata, write, Rdata3, read, ADC, PushADC, CorrelationSeen03);
	firstblock04 fb04 ( clk, rst, addr, Wdata, write, Rdata4, read, ADC, PushADC, CorrelationSeen04);
	firstblock05 fb05 ( clk, rst, addr, Wdata, write, Rdata5, read, ADC, PushADC, CorrelationSeen05);
	firstblock06 fb06 ( clk, rst, addr, Wdata, write, Rdata6, read, ADC, PushADC, CorrelationSeen06);
	firstblock07 fb07 ( clk, rst, addr, Wdata, write, Rdata7, read, ADC, PushADC, CorrelationSeen07);
	firstblock08 fb08 ( clk, rst, addr, Wdata, write, Rdata8, read, ADC, PushADC, CorrelationSeen08);
	firstblock09 fb09 ( clk, rst, addr, Wdata, write, Rdata9, read, ADC, PushADC, CorrelationSeen09);
	firstblock10 fb10 ( clk, rst, addr, Wdata, write, Rdata10, read, ADC, PushADC, CorrelationSeen10);
	firstblock11 fb11 ( clk, rst, addr, Wdata, write, Rdata11, read, ADC, PushADC, CorrelationSeen11);
	firstblock12 fb12 ( clk, rst, addr, Wdata, write, Rdata12, read, ADC, PushADC, CorrelationSeen12);
	firstblock13 fb13 ( clk, rst, addr, Wdata, write, Rdata13, read, ADC, PushADC, CorrelationSeen13);
	firstblock14 fb14 ( clk, rst, addr, Wdata, write, Rdata14, read, ADC, PushADC, CorrelationSeen14);
	firstblock15 fb15 ( clk, rst, addr, Wdata, write, Rdata15, read, ADC, PushADC, CorrelationSeen15);
	firstblock16 fb16 ( clk, rst, addr, Wdata, write, Rdata16, read, ADC, PushADC, CorrelationSeen16);
	firstblock17 fb17 ( clk, rst, addr, Wdata, write, Rdata17, read, ADC, PushADC, CorrelationSeen17);
	firstblock18 fb18 ( clk, rst, addr, Wdata, write, Rdata18, read, ADC, PushADC, CorrelationSeen18);
	firstblock19 fb19 ( clk, rst, addr, Wdata, write, Rdata19, read, ADC, PushADC, CorrelationSeen19);
	firstblock20 fb20 ( clk, rst, addr, Wdata, write, Rdata20, read, ADC, PushADC, CorrelationSeen20);
	firstblock21 fb21 ( clk, rst, addr, Wdata, write, Rdata21, read, ADC, PushADC, CorrelationSeen21);
	firstblock22 fb22 ( clk, rst, addr, Wdata, write, Rdata22, read, ADC, PushADC, CorrelationSeen22);
	firstblock23 fb23 ( clk, rst, addr, Wdata, write, Rdata23, read, ADC, PushADC, CorrelationSeen23);
	firstblock24 fb24 ( clk, rst, addr, Wdata, write, Rdata24, read, ADC, PushADC, CorrelationSeen24);
	firstblock25 fb25 ( clk, rst, addr, Wdata, write, Rdata25, read, ADC, PushADC, CorrelationSeen25);
	firstblock26 fb26 ( clk, rst, addr, Wdata, write, Rdata26, read, ADC, PushADC, CorrelationSeen26);
	firstblock27 fb27 ( clk, rst, addr, Wdata, write, Rdata27, read, ADC, PushADC, CorrelationSeen27);
	firstblock28 fb28 ( clk, rst, addr, Wdata, write, Rdata28, read, ADC, PushADC, CorrelationSeen28);
	firstblock29 fb29 ( clk, rst, addr, Wdata, write, Rdata29, read, ADC, PushADC, CorrelationSeen29);
	firstblock30 fb30 ( clk, rst, addr, Wdata, write, Rdata30, read, ADC, PushADC, CorrelationSeen30);
	firstblock31 fb31 ( clk, rst, addr, Wdata, write, Rdata31, read, ADC, PushADC, CorrelationSeen31);
   
  assign Global_Run = Global_Run00;
  assign SampleCount = SampleCount00;
  assign CorrelationSeen = {CorrelationSeen31, CorrelationSeen30, CorrelationSeen29, CorrelationSeen28, CorrelationSeen27,
														CorrelationSeen26, CorrelationSeen25, CorrelationSeen24, CorrelationSeen23, CorrelationSeen22,
														CorrelationSeen21, CorrelationSeen20, CorrelationSeen19, CorrelationSeen18, CorrelationSeen17,
														CorrelationSeen16, CorrelationSeen15, CorrelationSeen14, CorrelationSeen13, CorrelationSeen12, 
														CorrelationSeen11, CorrelationSeen10, CorrelationSeen09, CorrelationSeen08, CorrelationSeen07, 
														CorrelationSeen06, CorrelationSeen05, CorrelationSeen04, CorrelationSeen03, CorrelationSeen02, 
														CorrelationSeen01, CorrelationSeen00}; 
  
  always @(*) begin
  
		if (rst) begin
			
			Rdata = 0;
		
		end else begin
		
			if (read) begin
				//Global Register
				if (addr == 32'hFE000100) Rdata = Global_Run;
				else if (addr == 32'hFE000104) Rdata = SampleCount;
				else if (addr == 32'hFE000108) Rdata = CorrelationSeen;
				//Correlator00 Register
				else if (addr[31:4] == 28'hFE00020) Rdata = Rdata0;
			  else if (addr[31:4] == 28'hFE00040) Rdata = Rdata0;
			  else if (addr[31:4] == 28'hFE00060) Rdata = Rdata0;
			  //Correlator01 Register
				else if (addr[31:4] == 28'hFE00021) Rdata = Rdata1;
			  else if (addr[31:4] == 28'hFE00041) Rdata = Rdata1;
			  else if (addr[31:4] == 28'hFE00061) Rdata = Rdata1;
			  //Correlator02 Register
				else if (addr[31:4] == 28'hFE00022) Rdata = Rdata2;
			  else if (addr[31:4] == 28'hFE00042) Rdata = Rdata2;
			  else if (addr[31:4] == 28'hFE00062) Rdata = Rdata2;
			  //Correlator03 Register
				else if (addr[31:4] == 28'hFE00023) Rdata = Rdata3;
			  else if (addr[31:4] == 28'hFE00043) Rdata = Rdata3;
			  else if (addr[31:4] == 28'hFE00063) Rdata = Rdata3;
			  //Correlator04 Register
				else if (addr[31:4] == 28'hFE00024) Rdata = Rdata4;
			  else if (addr[31:4] == 28'hFE00044) Rdata = Rdata4;
			  else if (addr[31:4] == 28'hFE00064) Rdata = Rdata4;
			  //Correlator05 Register
				else if (addr[31:4] == 28'hFE00025) Rdata = Rdata5;
			  else if (addr[31:4] == 28'hFE00045) Rdata = Rdata5;
			  else if (addr[31:4] == 28'hFE00065) Rdata = Rdata5;
			  //Correlator06 Register
				else if (addr[31:4] == 28'hFE00026) Rdata = Rdata6;
			  else if (addr[31:4] == 28'hFE00046) Rdata = Rdata6;
			  else if (addr[31:4] == 28'hFE00066) Rdata = Rdata6;
			  //Correlator07 Register
				else if (addr[31:4] == 28'hFE00027) Rdata = Rdata7;
			  else if (addr[31:4] == 28'hFE00047) Rdata = Rdata7;
			  else if (addr[31:4] == 28'hFE00067) Rdata = Rdata7;
			  //Correlator08 Register
				else if (addr[31:4] == 28'hFE00028) Rdata = Rdata8;
			  else if (addr[31:4] == 28'hFE00048) Rdata = Rdata8;
			  else if (addr[31:4] == 28'hFE00068) Rdata = Rdata8;
			  //Correlator09 Register
				else if (addr[31:4] == 28'hFE00029) Rdata = Rdata9;
			  else if (addr[31:4] == 28'hFE00049) Rdata = Rdata9;
			  else if (addr[31:4] == 28'hFE00069) Rdata = Rdata9;
			  //Correlator10 Register
				else if (addr[31:4] == 28'hFE0002A) Rdata = Rdata10;
			  else if (addr[31:4] == 28'hFE0004A) Rdata = Rdata10;
			  else if (addr[31:4] == 28'hFE0006A) Rdata = Rdata10;
			  //Correlator11 Register
				else if (addr[31:4] == 28'hFE0002B) Rdata = Rdata11;
			  else if (addr[31:4] == 28'hFE0004B) Rdata = Rdata11;
			  else if (addr[31:4] == 28'hFE0006B) Rdata = Rdata11;
			  //Correlator12 Register
				else if (addr[31:4] == 28'hFE0002C) Rdata = Rdata12;
			  else if (addr[31:4] == 28'hFE0004C) Rdata = Rdata12;
			  else if (addr[31:4] == 28'hFE0006C) Rdata = Rdata12;
			  //Correlator13 Register
				else if (addr[31:4] == 28'hFE0002D) Rdata = Rdata13;
			  else if (addr[31:4] == 28'hFE0004D) Rdata = Rdata13;
			  else if (addr[31:4] == 28'hFE0006D) Rdata = Rdata13;
			  //Correlator14 Register
				else if (addr[31:4] == 28'hFE0002E) Rdata = Rdata14;
			  else if (addr[31:4] == 28'hFE0004E) Rdata = Rdata14;
			  else if (addr[31:4] == 28'hFE0006E) Rdata = Rdata14;
			  //Correlator15 Register
				else if (addr[31:4] == 28'hFE0002F) Rdata = Rdata15;
			  else if (addr[31:4] == 28'hFE0004F) Rdata = Rdata15;
			  else if (addr[31:4] == 28'hFE0006F) Rdata = Rdata15;
			  //Correlator16 Register
				else if (addr[31:4] == 28'hFE00030) Rdata = Rdata16;
			  else if (addr[31:4] == 28'hFE00050) Rdata = Rdata16;
			  else if (addr[31:4] == 28'hFE00070) Rdata = Rdata16;
			  //Correlator17 Register
				else if (addr[31:4] == 28'hFE00031) Rdata = Rdata17;
			  else if (addr[31:4] == 28'hFE00051) Rdata = Rdata17;
			  else if (addr[31:4] == 28'hFE00071) Rdata = Rdata17;
			  //Correlator18 Register
				else if (addr[31:4] == 28'hFE00032) Rdata = Rdata18;
			  else if (addr[31:4] == 28'hFE00052) Rdata = Rdata18;
			  else if (addr[31:4] == 28'hFE00072) Rdata = Rdata18;
			  //Correlator19 Register
				else if (addr[31:4] == 28'hFE00033) Rdata = Rdata19;
			  else if (addr[31:4] == 28'hFE00053) Rdata = Rdata19;
			  else if (addr[31:4] == 28'hFE00073) Rdata = Rdata19;
			  //Correlator20 Register
				else if (addr[31:4] == 28'hFE00034) Rdata = Rdata20;
			  else if (addr[31:4] == 28'hFE00054) Rdata = Rdata20;
			  else if (addr[31:4] == 28'hFE00074) Rdata = Rdata20;
			  //Correlator21 Register
				else if (addr[31:4] == 28'hFE00035) Rdata = Rdata21;
			  else if (addr[31:4] == 28'hFE00055) Rdata = Rdata21;
			  else if (addr[31:4] == 28'hFE00075) Rdata = Rdata21;
			  //Correlator22 Register
				else if (addr[31:4] == 28'hFE00036) Rdata = Rdata22;
			  else if (addr[31:4] == 28'hFE00056) Rdata = Rdata22;
			  else if (addr[31:4] == 28'hFE00076) Rdata = Rdata22;
			  //Correlator23 Register
				else if (addr[31:4] == 28'hFE00037) Rdata = Rdata23;
			  else if (addr[31:4] == 28'hFE00057) Rdata = Rdata23;
			  else if (addr[31:4] == 28'hFE00077) Rdata = Rdata23;
			  //Correlator24 Register
				else if (addr[31:4] == 28'hFE00038) Rdata = Rdata24;
			  else if (addr[31:4] == 28'hFE00058) Rdata = Rdata24;
			  else if (addr[31:4] == 28'hFE00078) Rdata = Rdata24;
			  //Correlator25 Register
				else if (addr[31:4] == 28'hFE00039) Rdata = Rdata25;
			  else if (addr[31:4] == 28'hFE00059) Rdata = Rdata25;
			  else if (addr[31:4] == 28'hFE00079) Rdata = Rdata25;
			  //Correlator26 Register
				else if (addr[31:4] == 28'hFE0003A) Rdata = Rdata26;
			  else if (addr[31:4] == 28'hFE0005A) Rdata = Rdata26;
			  else if (addr[31:4] == 28'hFE0007A) Rdata = Rdata26;
			  //Correlator27 Register
				else if (addr[31:4] == 28'hFE0003B) Rdata = Rdata27;
			  else if (addr[31:4] == 28'hFE0005B) Rdata = Rdata27;
			  else if (addr[31:4] == 28'hFE0007B) Rdata = Rdata27;
			  //Correlator28 Register
				else if (addr[31:4] == 28'hFE0003C) Rdata = Rdata28;
			  else if (addr[31:4] == 28'hFE0005C) Rdata = Rdata28;
			  else if (addr[31:4] == 28'hFE0007C) Rdata = Rdata28;
			  //Correlator29 Register
				else if (addr[31:4] == 28'hFE0003D) Rdata = Rdata29;
			  else if (addr[31:4] == 28'hFE0005D) Rdata = Rdata29;
			  else if (addr[31:4] == 28'hFE0007D) Rdata = Rdata29;
			  //Correlator30 Register
				else if (addr[31:4] == 28'hFE0003E) Rdata = Rdata30;
			  else if (addr[31:4] == 28'hFE0005E) Rdata = Rdata30;
			  else if (addr[31:4] == 28'hFE0007E) Rdata = Rdata30;
			  //Correlator31 Register
				else if (addr[31:4] == 28'hFE0003F) Rdata = Rdata31;
			  else if (addr[31:4] == 28'hFE0005F) Rdata = Rdata31;
			  else if (addr[31:4] == 28'hFE0007F) Rdata = Rdata31;
			  else Rdata = 0;
			end else begin Rdata = 0;
			
				end
			
		end
			
  end
  
endmodule
