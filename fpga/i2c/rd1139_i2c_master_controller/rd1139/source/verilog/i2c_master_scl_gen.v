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

module i2c_master_scl_gen(
   input  wire        sys_clk,
   input  wire        sys_rst,
   input  wire        i_enable_scl,
   input  wire        i_i2c_bus_scl,
   input  wire [10:0] i_clk_div_factor,
   input  wire        i_stop_detect,
   input  wire  [1:0] i_bps_mode,
   output wire        o_scl_timeout,
   output reg         o_i2c_master_scl
);

   parameter [1:0] SCL_IDLE = 2'b00;
   parameter [1:0] SCL_LOW  = 2'b01;
   parameter [1:0] SCL_WAIT = 2'b10;
   parameter [1:0] SCL_HIGH = 2'b11;

   parameter [18:0] DIV_400K = 19'd400_000;
   parameter [18:0] DIV_100K = 19'd100_000;

   wire       test_mode = 1'b0;

   reg  [1:0] state;
   reg  [1:0] state_next;

   reg        count_reset;
   reg        count_en;
   reg        count_eq_modby2;
   reg  [9:0] modulus;
   reg  [8:0] count;

   reg [10:0] timer1;     // divide by clock divide factor
   reg [18:0] timer2;     // divide by 400,000 or 100,000
   wire       cnt_en;

   ///////////////////////////////////////////////////////////////
   // FSM
   ///////////////////////////////////////////////////////////////

   always @(posedge sys_clk or posedge sys_rst) begin
      if(sys_rst) begin
	 state <= SCL_IDLE;
      end else begin
	 state <= state_next;
      end
   end

   always @(*) begin
      state_next = state;
      case(state)
	 SCL_IDLE: if(i_enable_scl)
                      state_next = SCL_LOW;
         SCL_LOW:  if(count_eq_modby2)
                      state_next = SCL_WAIT;
         SCL_WAIT: if(i_i2c_bus_scl)
                      state_next = SCL_HIGH;
         SCL_HIGH: if(~i_i2c_bus_scl || count_eq_modby2)
                      state_next = SCL_IDLE;
      endcase
   end

   always @(posedge sys_clk or posedge sys_rst) begin
      if(sys_rst) begin
         o_i2c_master_scl <= 1'b1;
      end else begin
	 if(state == SCL_IDLE)begin
            o_i2c_master_scl <= ~i_enable_scl;
         end else if(state == SCL_LOW)begin
            o_i2c_master_scl <= count_eq_modby2;
         end else begin
            o_i2c_master_scl <= 1'b1;
         end
      end
   end

   always @(posedge sys_clk or posedge sys_rst) begin
      if(sys_rst) begin
         count_reset <= 1'b0;
      end else begin
	 if(state == SCL_IDLE) begin
            count_reset <= i_enable_scl;
         end else if((state == SCL_WAIT) || (state == SCL_HIGH)) begin
            count_reset <= ~i_i2c_bus_scl;
         end else begin
            count_reset <= 1'b0;
         end
      end
   end

   // Generate Counter Enable
   always @(posedge sys_clk or posedge sys_rst) begin
      if(sys_rst) begin
         count_en <= 1'b0;
      end else begin
	 if(i_enable_scl) begin
            count_en <= 1'b1;
         end else if(i_stop_detect || (state == SCL_IDLE)) begin
            count_en <= 1'b0;
         end
      end
   end

   // SCL counter and Clock divider based on clk div factor 
 
   always @(posedge sys_clk or posedge sys_rst) begin
      if(sys_rst) begin
         count <= 9'b0;
      end else begin
	 if(count_reset || count_eq_modby2) begin
            count <= 9'b0;
         end else if(count_en) begin
            count <= count + 9'b1;
         end
      end
   end

   // Register Clock divider factor
   always @(posedge sys_clk or posedge sys_rst) begin
      if(sys_rst) begin
         modulus <= 10'b0;
      end else begin
         modulus <= i_clk_div_factor[10:1] - 10'b11;
      end
   end

   // Registered count = modulus/2 operation
   always @(posedge sys_clk or posedge sys_rst) begin
      if(sys_rst) begin
         count_eq_modby2 <= 1'b0;
      end else begin
         count_eq_modby2 <= (count == modulus[8:0]);
      end
   end

   ///////////////////////////////////////////////////////////////
   // Timer -
   //   1) First counter uses clock divide factor
   //   2) Second counter uses BPS mode (400KHz or 100KHz)
   ///////////////////////////////////////////////////////////////

   /*
   always @(posedge sys_clk or posedge sys_rst) begin
      if(sys_rst) begin
	 timer1 <= 11'b0;
      end else begin
	 if((state != SCL_WAIT) || cnt_en || o_scl_timeout) begin
	    timer1 <= 11'b0;
         end else begin
	    timer1 <= timer1 + 11'b1;
	 end
      end
   end

   assign cnt_en = (timer1 == i_clk_div_factor);

   always @(posedge sys_clk or posedge sys_rst) begin
      if(sys_rst) begin
	 timer2 <= 19'b0;
      end else begin
	 if(state != SCL_WAIT) begin
	    timer2 <= 19'b0;
	 end else if(cnt_en && ~o_scl_timeout) begin
	    timer2 <= timer2 + 19'b1;
	 end
      end
   end

   // test_mode is for simulation only
   assign o_scl_timeout = test_mode ? (timer2 == 19'd50) :
	                  ((i_bps_mode == 2'b00) ?
	                    (timer2 == DIV_100K) : (timer2 == DIV_400K));
*/
   assign o_scl_timeout = 1'b0;

endmodule

