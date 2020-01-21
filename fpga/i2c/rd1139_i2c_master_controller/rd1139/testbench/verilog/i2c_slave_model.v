//   ==================================================================
//   >>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
//   ------------------------------------------------------------------
//   Copyright (c) 2014 by Lattice Semiconductor Corporation
//   ALL RIGHTS RESERVED 
//   ------------------------------------------------------------------
//
//   Permission:
//
//      Lattice SG Pte. Ltd. grants permission to use this code
//      pursuant to the terms of the Lattice Reference Design License Agreement. 
//
//
//   Disclaimer:
//
//      This VHDL or Verilog source code is intended as a design reference
//      which illustrates how these types of functions can be implemented.
//      It is the user's responsibility to verify their design for
//      consistency and functionality through the use of formal
//      verification methods.  Lattice provides no warranty
//      regarding the use or functionality of this code.
//
//   --------------------------------------------------------------------
//
//                  Lattice SG Pte. Ltd.
//                  101 Thomson Road, United Square #07-02 
//                  Singapore 307591
//
//
//                  TEL: 1-800-Lattice (USA and Canada)
//                       +65-6631-2000 (Singapore)
//                       +1-503-268-8001 (other locations)
//
//                  web: http://www.latticesemi.com/
//                  email: techsupport@latticesemi.com
//
//   --------------------------------------------------------------------
 
`timescale 1 ns / 1 ps
 
module i2c_slave_model
  #(
  parameter I2C_ADR = 7'b110_0000
  )
  (
  input wire scl,
  inout wire sda,
  input wire no_ack,
  output wire atn ,
  input [7:0] transmit_data,
  input [7:0] receive_data,
  input read_valid
  );

  // generate interrupt
  event request_attention;
  event service_completed;
  reg atn_reg;
  always
  begin
    atn_reg <= 1'bz;
    @(request_attention);
    atn_reg <= 1'b0;
    @(service_completed);
  end
  assign atn = atn_reg;

  reg [7:0] mem [15:0];

  initial
  begin
    mem[0] = 0;
    mem[1] = 0;
    mem[2] = 0;
    mem[3] = 0;
    mem[4] = 0;
    mem[5] = 0;
    mem[6] = 0;
    mem[7] = 0;
    mem[8] = 0;
    mem[9] = 0;
    mem[10] = 0;
    mem[11] = 0;
    mem[12] = 0;
    mem[13] = 0;
    mem[14] = 0;
    mem[15] = 0;
  end

  reg [7:0] mem_do = 8'h00;
  
  
  
  reg [3:0] mem_addr = 4'b0000;
  reg sta;
  reg d_sta;
  reg sto;
  reg [7:0] sr;
  reg rw;
 
  wire my_adr;
  wire i2c_reset;
  reg [2:0] bit_cnt;
  wire acc_done;
  reg ld;
  reg sda_o;
  wire sda_dly;

  parameter idle = 3'b000;
  parameter slave_ack = 3'b001;
  parameter data = 3'b010;
  parameter data_ack = 3'b011;
  parameter not_mine = 3'b111;

  reg [2:0] state;

  initial
  begin
    sda_o = 1'b1;
    state = idle;
  end

  // generate shift register
  always @(posedge scl) sr <= #1 {sr[6:0],sda};

  // detect my_address
  assign my_adr = (sr[7:5] == I2C_ADR[6:4]);

  // generate bit-counter
  always @(posedge scl)
  begin
    if(ld) bit_cnt <= #1 3'b111;
    else bit_cnt <= #1 bit_cnt - 3'h1;
  end

  // generate access done signal
  assign acc_done = !(|bit_cnt);

  // generate delayed version of sda
  assign #1 sda_dly = sda;

  // detect start condition
  always @(negedge sda)
  begin
    if(scl)
    begin
      sta <= #1 1'b1;
      d_sta <= #1 1'b0;
      sto <= #1 1'b0;
      $display($time,"ns i2c_slave_model %h detected start condition.", I2C_ADR);
    end
    else sta <= #1 1'b0;
  end

  always @(posedge scl) d_sta <= #1 sta;

  // detect stop condition
  always @(posedge sda)
  begin
    if(scl)
    begin
      sta <= #1 1'b0;
      sto <= #1 1'b1;
      $display($time,"ns i2c_slave_model %h detected stop condition.", I2C_ADR);
    end
    else sto <= #1 1'b0;
  end

  // generate i2c_reset signal
  assign i2c_reset = sta || sto;

  // generate statemachine
  always @(negedge scl or posedge sto)
  begin
    if (sto || (sta && !d_sta))
    begin
      state <= #1 idle;
      sda_o <= #1 1'b1;
      ld <= #1 1'b1;
    end
    else
    begin
      sda_o <= #1 1'b1;
      ld <= #1 1'b0;
      case(state)
	  idle:
	    if (acc_done && !my_adr)   // Not mine, ignore until next one
            state <= #1 not_mine;
          else if (acc_done && my_adr)
          begin
			//ack_indicator <= 1'b0;
            state <= #1 slave_ack;
            rw <= #1 sr[0];
            mem_addr <= #1 sr[4:1];
			//write_done <= 1'b0;
            sda_o <= #1 1'b0;
            #2;
            if (rw) 
			begin
			$display($time,"ns i2c_slave_model %h claimed rd cmd, offset %x.", I2C_ADR, mem_addr);
			
					//count<= 1'b0;
					end
            if (!rw) $display($time,"ns i2c_slave_model %h claimed wr cmd, offset %x.", I2C_ADR, mem_addr);
            if (rw)
            begin
              mem_do <= #1 mem[mem_addr];
              //#2 $display("     Note: i2c_slave_model %h fetched rd data %x from address %x.", I2C_ADR, mem_do, mem_addr);
				temp_data <=  mem[mem_addr];
			end
          end	 
		
 	  slave_ack:
          begin
            if (rw)
            begin
              state <= #1 data;
              sda_o <= #1 mem_do[7];
            end
            else state <= #1 data;
            ld    <= #1 1'b1;
          end
        data:
          begin
            if (rw) sda_o <= #1 mem_do[7];
            if(acc_done)
            begin
              state <= #1 data_ack;
              mem_addr <= #2 mem_addr + 8'h1;
              sda_o <= #1 rw || no_ack;			  // *** Wilson
              if (rw)
              begin
                #3 mem_do <= mem[mem_addr];
                //#5 $display("     Note: i2c_slave_model %h fetched rd data %x from address %x.", I2C_ADR, mem_do, mem_addr);
				//write_done <= 1'b1;
              end
              if (!rw)
              begin
                mem[mem_addr] <= #1 sr;
                #2 $display($time,"ns i2c_slave_model %h stored wr data %x to address %x.", I2C_ADR, sr, mem_addr);  
				if (mem[mem_addr] == transmit_data)
					$display ($time,"ns **TRANSMIT DATA IS SUCCESSFULLY LOADED TO I2C SLAVE**");
					else 
					$display($time,"ns **ERROR.DATA CORRUPTED DURING TRANSMIT**");  
			end
            end
          end
        data_ack:
          begin
            -> service_completed;
            ld <= #1 1'b1;
            if (rw)
              if(sr[0])
              begin
                state <= #1 idle;
                sda_o <= #1 1'b1;
              end
              else
              begin
                state <= #1 data;
                sda_o <= #1 mem_do[7];
              end
            else
            begin
              state <= #1 data;
              sda_o <= #1 1'b1;
            end
          end
	  //not_mine: hold state until start or stop
      endcase
    end
  end

  // read data from memory
  always @(posedge scl) if(!acc_done && rw) mem_do <= #1 {mem_do[6:0], 1'b1};

  reg [7:0] mem_do_reg = 8'h00;  
  reg [7:0] temp_data = 8'h00;
  reg [1:0]count =2'b00; 
  //register mem_do for display. Fix for the bug, which was displaying an
  //extra fetch in the output 
  always @(posedge scl)  
	  begin
	   mem_do_reg <= mem_do;
		//count <= count + 1'b1;
	//	if (count == 1)
		//temp_data <= mem_do_reg;
		end
		
  always @(negedge scl)
     if ((rw == 1)&& (state == data) && (bit_cnt == 7))
	 	 begin
         #5 $display($time,"ns i2c_slave_model %h fetched rd data %x from address %x.", I2C_ADR, mem_do_reg, mem_addr);
			//if (read_valid == 1)
			
			
	end
	
	
		 
  // generate tri-states
  assign sda = sda_o ? 1'bz : 1'b0;

  
  always @ (posedge read_valid)	
	  begin
   if (receive_data == temp_data)  
	   begin
			#5 $display($time,"ns **SUCESSFULLY READ**.RECEIVED DATA %x FETCHED DATA %x", receive_data,temp_data); 
						 end
   else 
	   begin
				#5	 $display($time,"ns **DATA CORRUPTED**.RECEIVED DATA %x FETCHED DATA %x", receive_data,temp_data); 
				   end	  
	   end
endmodule
