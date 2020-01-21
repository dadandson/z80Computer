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


module i2c_master_start_gen(
   input  wire        i_sys_clk,
   input  wire        i_sys_rst,
   input  wire  [1:0] i_bps_mode,
   input  wire        i_i2c_master_start_en,
   input  wire        i_tx_en,
   output reg         o_i2c_master_start_ack,
   input  wire        i_i2c_bus_scl,
   input  wire        i_i2c_bus_sda,
   output reg         o_i2c_master_start_sda
);


   // Threshold values set are for 19.20 MHz clock.
   parameter [15:0] STDMODE_THRESHOLD = 16'd0090;  // 4.7us
   parameter [15:0] FSMODE_THRESHOLD  = 16'd0026;  // 1.3us
   parameter [15:0] FSPMODE_THRESHOLD = 16'd0010;  // 0.5 us;


   parameter [2:0] IDLE_STATE = 3'b000; 
   parameter [2:0] WAIT_SCL1  = 3'b001; 
   parameter [2:0] WAIT_START = 3'b010; 
   parameter [2:0] DETECT     = 3'b011; 
   parameter [2:0] GEN_SDA0   = 3'b100; 
   parameter [2:0] WAIT_SCL0  = 3'b101; 
   parameter [2:0] HOLD_SCL0  = 3'b110; 

   reg   [2:0] state;
   reg   [2:0] state_next;
   reg         start_delay;
   reg  [15:0] count_threshold;
   wire        delay_done;

   //////////////////////////////////////////////////////
   // Delay Gen
   //////////////////////////////////////////////////////
 
   delay_gen delay_gen(
      .sys_clk         (i_sys_clk),
      .rst             (i_sys_rst),
      .start_delay     (start_delay),
      .count_threshold (count_threshold),
      .delay_done      (delay_done)
   );

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         state <= IDLE_STATE;
      end else begin
         state <= state_next;
      end
   end

   always @(*) begin
      state_next = state;
     case(state)
         IDLE_STATE: if(i_i2c_master_start_en) state_next = WAIT_SCL1;
         WAIT_SCL1:  if(i_i2c_bus_scl) state_next = WAIT_START;
         WAIT_START: if(delay_done) state_next = DETECT;
         DETECT:     if(i_i2c_bus_sda && i_i2c_bus_scl) state_next = GEN_SDA0;
         GEN_SDA0:   state_next = WAIT_SCL0;
         WAIT_SCL0:  if(~i_i2c_bus_scl) state_next = HOLD_SCL0;
         HOLD_SCL0:  if(i_tx_en) state_next = IDLE_STATE;
         default:    state_next = IDLE_STATE;
      endcase
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_i2c_master_start_sda <= 1'b1;
      end else begin
	 if ((state == GEN_SDA0) ||
             //((state == WAIT_SCL0) && i_i2c_bus_scl)) begin
             (state == WAIT_SCL0) || (state == HOLD_SCL0)) begin
            o_i2c_master_start_sda <= 1'b0;
         end else begin
            o_i2c_master_start_sda <= 1'b1;
         end
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         start_delay <= 1'b0;
      end else begin
	 if (((state == WAIT_SCL1) && i_i2c_bus_scl) ||
             (state == GEN_SDA0)) begin
            start_delay <= 1'b1;
         end else begin
            start_delay <= 1'b0;
         end
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_i2c_master_start_ack <= 1'b0;
      end else begin
         o_i2c_master_start_ack <= (state == WAIT_SCL0) && delay_done;
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         count_threshold <= STDMODE_THRESHOLD;
      end else begin
         if(i_bps_mode == 2'b00)
            count_threshold <= STDMODE_THRESHOLD;
         else if(i_bps_mode == 2'b01)
            count_threshold <= FSMODE_THRESHOLD;
         else
           count_threshold <= FSPMODE_THRESHOLD;
      end
   end

endmodule

