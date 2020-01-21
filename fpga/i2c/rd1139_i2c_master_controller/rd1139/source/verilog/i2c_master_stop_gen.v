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

module i2c_master_stop_gen(
   input  wire        i_sys_clk,
   input  wire        i_sys_rst,
   input  wire  [1:0] i_bps_mode,
   input  wire        i_i2c_master_stop_en,
   output reg         o_i2c_master_stop_ack,
   input  wire        i_i2c_bus_scl,
   input  wire        i_i2c_bus_sda,
   output reg         o_i2c_master_stop_sda
);

   // Threshold values set are for 33.33 MHz clock.
   parameter [15:0] STDMODE_THRESHOLD = 16'd0090;  // 4.7us
   parameter [15:0] FSMODE_THRESHOLD  = 16'd0026;  // 1.3us
   parameter [15:0] FSPMODE_THRESHOLD = 16'd0010;  // 0.5 us;


   parameter [1:0] IDLE             = 2'b00;
   parameter [1:0] HOLD_WAIT        = 2'b01;
   parameter [1:0] DETECT_SDA0_SCL1 = 2'b10;
   parameter [1:0] STOP_GEN_SDA0    = 2'b11;

   // Internal signals
   reg   [1:0] state;

   reg         start_delay;
   reg  [15:0] count_threshold;
   wire        delay_done;

   //////////////////////////////////////////////////////////
   // Delay Gen
   //////////////////////////////////////////////////////////
   delay_gen delay_gen(
      .sys_clk           (i_sys_clk),
      .rst               (i_sys_rst),
      .start_delay       (start_delay),
      .count_threshold   (count_threshold),
      .delay_done        (delay_done)
   );
   
   //////////////////////////////////////////////////////////
   // FSM
   //////////////////////////////////////////////////////////
   
   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         state <= IDLE;
      end else begin
	 if((state == IDLE) && i_i2c_master_stop_en) begin
            state <= DETECT_SDA0_SCL1;
         end else if((state == DETECT_SDA0_SCL1) && i_i2c_bus_scl) begin
            state <= HOLD_WAIT;
         end else if((state == HOLD_WAIT) && delay_done) begin
            state <= IDLE;
         end
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_i2c_master_stop_sda <= 1'b1;
      end else begin 
         o_i2c_master_stop_sda <= !((state == DETECT_SDA0_SCL1) ||
                                    (state == HOLD_WAIT));
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         start_delay <= 1'b0;
      end else begin
         start_delay <= (state == DETECT_SDA0_SCL1) && i_i2c_bus_scl;
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_i2c_master_stop_ack <= 1'b0;
      end else begin
         o_i2c_master_stop_ack <= (state == STOP_GEN_SDA0);
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

