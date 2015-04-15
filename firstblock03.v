`timescale 1ns/10ps

module firstblock03
	(
	input				        clk,
	input           		rst,
	input	  [31:0]			addr,
	input   [31:0]			Wdata,
	input           		write,
	output  reg [31:0]	Rdata,
	input           		read,
	input		[15:0]			ADC,
	input								PushADC,
	output							CorrelationSeen03
	);


	//----------------Global User Define Registor &Variable-------------------//
	
  reg [31:0]  Global_Run;
  reg [31:0]  SampleCount;
  reg [31:0]  CorrelationSeen;
	reg 				PushADCTemp1, PushADCTemp2, PushADCTemp3, PushADCTemp4, PushADCTemp5;
	reg [31:0]  SampleCountTemp1, SampleCountTemp2, SampleCountTemp3, SampleCountTemp4, SampleCountTemp5;
	reg [12:0]  v;
  reg [15:0]  sv;
  
 
  sine MO (.v(v),.sv(sv)); 
   
	//-------------------------Correlation Registor--------------------------//
  reg [31:0]  Freq00_DDS_Add;
  reg [31:0]  Freq00_DDS_Phase;
  reg [31:0]  Freq00_DDS_Phase_adj;
  reg [31:0]  Freq00_DDS_control;
  reg [31:0]	Chip00_DDS_Freq;
  reg [31:0]	Chip00_DDS_Phase;
  reg [31:0]	Chip00_DDS_Phase_adjust;
  reg [31:0]	PRN00;
  reg [31:0]	Correlation00Cnt;
  reg [31:0]	Correlation00Low;
  reg [31:0]	Correlation00High;
  reg	[31:0]	Correlation00Status;
  //---------------------------User Defined Variables----------------------//
  reg [3:0] 	PRNHob000;
  reg [13:0]	value000;
  reg [13:0]	poly000;
  reg [13:0] 	valuexor000;
  reg [13:0] 	valueshift000;
  reg [13:0] 	valuehob000, valuehob000_temp;
  reg [1:0]   vquad000;
  integer     sv_ext_comp000, sv_ext_comp001;
  reg signed [63:0]  CorrelationTemp000;
  reg signed [63:0]  multcorrelator000;
	reg         flag000, corrflag000;
  integer		  ADCTemp001, ADCTemp002, ADCTemp003, ADCTemp004;
  reg [31:0] 	PRN00Temp001, PRN00Temp002, PRN00Temp003, PRN00Temp004, PRN00Temp005, PRN00Temp006;
  reg 				oldhob000, oldhob001, oldhob002, oldhob003, oldhob004, oldhobTemp000;
  reg 				Chip00_DDS_PhaseTemp001, Chip00_DDS_PhaseTemp002, Chip00_DDS_PhaseTemp003, Chip00_DDS_PhaseTemp004;
  
  assign CorrelationSeen03 = CorrelationSeen[3];
	assign Global_Run00 = Global_Run;
  assign SampleCount00 = SampleCount;

  always @(*) begin
		
		if (rst) begin
			
			Rdata = 32'b0;
		
		end else begin
		
			if(read) begin

					case (addr) 

						// Global Registor
						32'hFE000100:  Rdata = Global_Run; 
						32'hFE000104:  Rdata = SampleCount;
						32'hFE000108:  Rdata = CorrelationSeen;
						// Correlator01
						32'hFE000230:  Rdata = Freq00_DDS_Add;
						32'hFE000234:  Rdata = Freq00_DDS_Phase;
						32'hFE000238:  Rdata = Freq00_DDS_Phase_adj;
						32'hFE00023C:  Rdata = Freq00_DDS_control;
						32'hFE000430:  Rdata = Chip00_DDS_Freq;
						32'hFE000434:  Rdata = Chip00_DDS_Phase;
						32'hFE000438:  Rdata = Chip00_DDS_Phase_adjust;
						32'hFE00043C:  Rdata = PRN00 ;
						32'hFE000630:  Rdata = Correlation00Cnt;
						32'hFE000634:  Rdata = Correlation00Low;
						32'hFE000638:  Rdata = Correlation00High;
						32'hFE00063C:  Rdata = Correlation00Status;
						default: Rdata = 0;

					endcase

				end
				else begin Rdata = 0; end
			
			end
    //---------------------Correlator01 PRN Calculation-------------------------//
    PRN00Temp001 = PRN00Temp001 ;
		if(oldhob000 == 0 && Chip00_DDS_Phase[31] == 1 && PushADCTemp1 == 1 ) begin
		
			oldhobTemp000 = value000[PRNHob000];
			valuehob000 = valuehob000_temp;
			valuehob000[PRNHob000] = 0;
			valueshift000 = valuehob000 << 1;
			
			if (oldhobTemp000) begin 
				
				valuexor000 = valueshift000 ^ poly000;
				PRN00Temp001 = {{PRNHob000},{poly000},{valuexor000}};
			
			end
			
			else begin	
			if (oldhobTemp000 == 0) PRN00Temp001 = {{PRNHob000},{poly000},{valueshift000}};
			
			else PRN00Temp001 = 0;
			
			end
			
		end

	end

	always @(posedge clk or posedge rst) begin
    
		if (rst) begin
      //----------------Global User Define Registor &Variable-------------------//
			Global_Run      <= #1 32'b0;
			SampleCount     <= #1 32'b0;
			CorrelationSeen	<= #1 32'b0;
			//Rdata           <= #1 32'b0;
			PushADCTemp1	<= #1 32'b0; PushADCTemp2<= #1 32'b0; PushADCTemp3<= #1 32'b0; PushADCTemp4<= #1 32'b0; PushADCTemp5 <= #1 32'b0;
			SampleCountTemp1 <= #1 32'b0; SampleCountTemp2 <= #1 32'b0; SampleCountTemp3 <= #1 32'b0; SampleCountTemp4 <= #1 32'b0; SampleCountTemp5 <= #1 32'b0;
			
			// Correlator00 Registor
			Freq00_DDS_Add        	<= #1 32'b0;
			Freq00_DDS_Phase      	<= #1 32'b0;
			Freq00_DDS_Phase_adj  	<= #1 32'b0;
			Freq00_DDS_control    	<= #1 32'b0;
			Chip00_DDS_Freq       	<= #1 32'b0;
			Chip00_DDS_Phase      	<= #1 32'b0;
			Chip00_DDS_Phase_adjust	<= #1 32'b0;
			PRN00                 	<= #1 32'b0;
			Correlation00Cnt      	<= #1 32'b0;
			Correlation00Low      	<= #1 32'b0;
			Correlation00High     	<= #1 32'b0;
			Correlation00Status   	<= #1 32'b0;
			// Correlator00 User Defined Variables
			PRNHob000 							<= #1 32'b0;
			value000 								<= #1 32'b0;
			poly000 								<= #1 32'b0;
			valuexor000							<= #1 32'b0;
			valueshift000						<= #1 32'b0;
			valuehob000_temp							<= #1 32'b0;
			vquad000								<= #1 32'b0;
			CorrelationTemp000			<= #1 32'b0;
			multcorrelator000				<= #1 32'b0;
			sv_ext_comp000 <= #1 32'b0; sv_ext_comp001 <= #1 32'b0;
			flag000 <= #1 32'b0; corrflag000 <= #1 32'b0;
			ADCTemp001 <= #1 32'b0; ADCTemp002 <= #1 32'b0; ADCTemp003 <= #1 32'b0; ADCTemp004 <= #1 32'b0;
			 PRN00Temp002 <= #1 32'b0; PRN00Temp003 <= #1 32'b0; PRN00Temp004 <= #1 32'b0; PRN00Temp005 <= #1 32'b0; PRN00Temp006 <= #1 32'b0;
			oldhob000 <= #1 32'b0; oldhob001 <= #1 32'b0; oldhob002 <= #1 32'b0; oldhob003 <= #1 32'b0; oldhob004 <= #1 32'b0; oldhobTemp000 <= #1 32'b0;
			Chip00_DDS_PhaseTemp001 <= #1 32'b0; Chip00_DDS_PhaseTemp002 <= #1 32'b0; Chip00_DDS_PhaseTemp003 <= #1 32'b0; Chip00_DDS_PhaseTemp004 <= #1 32'b0;

		end else begin
		
			//SampleCount000 Pipelining Global Registor
			SampleCountTemp1 <= #1 SampleCount;
			SampleCountTemp2 <= #1 SampleCountTemp1;
			SampleCountTemp3 <= #1 SampleCountTemp2;
			SampleCountTemp4 <= #1 SampleCountTemp3;
			SampleCountTemp5 <= #1 SampleCountTemp4;
			// PushADC Pipelining
			PushADCTemp1	<= #1 PushADC;
			PushADCTemp2  <= #1 PushADCTemp1;
			PushADCTemp3  <= #1 PushADCTemp2;
			PushADCTemp4  <= #1 PushADCTemp3;
			PushADCTemp5	<= #1 PushADCTemp4;

		  if (write) begin
                         
	 		  case (addr)
					
					// Global Registor
          32'hFE000100:Global_Run               <= #1 Wdata;
          32'hFE000104:SampleCount              <= #1 Wdata;
          32'hFE000108:CorrelationSeen          <= #1 CorrelationSeen;
          // Correlator01 Registor
          32'hFE000230:Freq00_DDS_Add           <= #1 Wdata;
          32'hFE000234:Freq00_DDS_Phase         <= #1 Wdata;
          32'hFE000238:Freq00_DDS_Phase_adj     <= #1 Wdata;
          32'hFE00023C:Freq00_DDS_control    		<= #1 {Freq00_DDS_control[31:1], Wdata[0]};
          32'hFE000430:Chip00_DDS_Freq          <= #1 Wdata;
          32'hFE000434:Chip00_DDS_Phase         <= #1 Wdata;
          32'hFE000438:Chip00_DDS_Phase_adjust  <= #1 Wdata;
          32'hFE00043C:PRN00                    <= #1 Wdata;
          32'hFE000630:Correlation00Cnt         <= #1 Wdata;
          32'hFE000634:Correlation00Low         <= #1 Wdata;
          32'hFE000638:Correlation00High        <= #1 Wdata;
          32'hFE00063C:Correlation00Status      <= #1 Wdata;
//           default: Freq00_DDS_control <= #1 0;

			  endcase
			  
		  end else
				if(Global_Run == 1 && PushADC == 1) begin
				  SampleCount <= #1 SampleCount + 1;
					if(Freq00_DDS_control[0] == 1)begin
					// Frequency DDS
					Freq00_DDS_Phase <= #1 ((Freq00_DDS_Phase_adj + Freq00_DDS_Phase) + Freq00_DDS_Add);
					Freq00_DDS_Phase_adj <= #1 0;
					// Chip DDS
					Chip00_DDS_Phase <= #1 ((Chip00_DDS_Phase_adjust + Chip00_DDS_Phase) + Chip00_DDS_Freq  );
					Chip00_DDS_Phase_adjust <= #1 0;
					oldhob000 <= #1 Chip00_DDS_Phase[31];
					
					ADCTemp001	<= #1 {{16{ADC[15]}},ADC};
					vquad000   		<= #1 Freq00_DDS_Phase[31:30];
					
					case(Freq00_DDS_Phase[31:30])
						2'b00: v  <= #1 Freq00_DDS_Phase[29:17];
						2'b01: v  <= #1 ~ Freq00_DDS_Phase[29:17];
						2'b10: v  <= #1  Freq00_DDS_Phase[29:17];
						2'b11: v  <= #1 ~ Freq00_DDS_Phase[29:17];
					endcase

					if (corrflag000) begin
// 						CorrelationSeen[1] <= #1 1'b0;
						corrflag000 <= #1 1'b0;
				end
        end           
			end
    
    // PRN00 Assignment
    PRNHob000    		<= #1 PRN00[31:28]; 
    poly000      		<= #1 PRN00[27:14];
    value000     		<= #1 PRN00[13:0];
    valuehob000_temp			<= #1 PRN00[13:0];
    //PRN00 Pipelining
    PRN00Temp002 <= #1 PRN00Temp001;
    PRN00Temp003 <= #1 PRN00Temp002;
    PRN00Temp004 <= #1 PRN00Temp003;
    PRN00Temp005 <= #1 PRN00Temp004;
    //Chip00_DDS_Phase[31] Pipelining
    Chip00_DDS_PhaseTemp001 <= #1 Chip00_DDS_Phase[31];
    Chip00_DDS_PhaseTemp002 <= #1 Chip00_DDS_PhaseTemp001;
    Chip00_DDS_PhaseTemp003 <= #1 Chip00_DDS_PhaseTemp002;
    Chip00_DDS_PhaseTemp004 <= #1 Chip00_DDS_PhaseTemp003;
    //oldhob000 Pipelining
		oldhob001 <= #1 oldhob000;
		oldhob002 <= #1 oldhob001;
		oldhob003 <= #1 oldhob002;
		oldhob004 <= #1 oldhob003;
		//ADC000 Pipeline
		ADCTemp002 <= #1 ADCTemp001;
		ADCTemp003 <= #1 ADCTemp002;
		ADCTemp004 <= #1 ADCTemp003;
       
    if(oldhob000 == 0 && Chip00_DDS_Phase[31] == 1 && PushADCTemp1 == 1 ) begin

      PRN00 <= #1 PRN00Temp001;
  
    end
    
		if (PushADCTemp1 == 1'b1 && PRN00Temp001[13:0] == 1'b1 && oldhob000 == 0 && Chip00_DDS_Phase[31]) 
			CorrelationSeen[3] <= #1 1'b1;
		
		if (PushADCTemp1) sv_ext_comp000 <= #1 (vquad000 & 2'h2)?-sv:sv;

		if(PushADCTemp2 == 1 ) begin
    
			if(value000[PRNHob000]) begin
		      
				sv_ext_comp001 <= #1 -sv_ext_comp000;

			end else begin
			
				sv_ext_comp001 <= #1 sv_ext_comp000;

		  end

		end
		
		if(PushADCTemp3 == 1) begin
		      multcorrelator000 <= #1 ADCTemp003 * sv_ext_comp001;
                      
		end
		
		if(PushADCTemp4 == 1) begin

			CorrelationTemp000 <= #1 CorrelationTemp000 + multcorrelator000;

		end
                 
		if(flag000 && PushADCTemp4) begin
      
        Correlation00Status[0] <= #1 0;
        flag000                <= #1 0;
    
    end

		if (read == 1 && addr == 32'hFE00063C) begin 
			
			flag000 <= 1; 
			CorrelationSeen[3] <= #1 1'b0;
		
		end

    if(PRN00Temp004[13:0] == 1 && Chip00_DDS_PhaseTemp004 == 1 && PushADCTemp5 == 1 && oldhob004 == 0) begin

		  Correlation00Low        <= #1 CorrelationTemp000[31:0];
		  Correlation00High       <= #1 CorrelationTemp000[63:32];
		  Correlation00Status[0]  <= #1 1'b1;
			
			if (PushADCTemp4) 
				CorrelationTemp000 <= #1 multcorrelator000;
			else
				CorrelationTemp000 <= #1 0;
				
			corrflag000 <= #1 1'b1;

    end
  
    if(PRN00Temp003[13:0] == 1 && Chip00_DDS_PhaseTemp003 == 1 && PushADCTemp4 == 1 && oldhob003 == 0) 
			Correlation00Cnt <= #1 SampleCountTemp4;

			end
			
   end
   
endmodule
       
       
       
       
       
       
       
       
       
       
          
           
