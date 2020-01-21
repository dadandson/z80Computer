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

module i2cbus_cntrl_fsm_top(
   input  wire        sys_clk,
   input  wire        sys_rst,
   input  wire        i_i2c_bus_scl,
   input  wire        i_i2c_bus_sda,
   input  wire        i_i2c_bus_sda_en,
   input  wire        i_enable_scl,
   input  wire [10:0] i_clk_div_factor,
   input  wire  [1:0] i_bps_mode,
   output wire        o_i2c_master_scl,
   output wire        o_i2c_master_falling_scl_detect,
   input  wire        i_i2c_master_sda,
   input  wire        i_tx_en,
   output wire        o_arbtr_lost,
   output wire        o_scl_timeout,
   output wire        o_i2c_master_start_detect,
   input  wire        i_i2c_master_start_en,
   output wire        o_i2c_master_start_ack,
   output wire        o_i2c_master_stop_detect,
   input  wire        i_i2c_master_stop_en,
   output wire        o_i2c_master_stop_ack,
   output wire        o_i2cbus_cntrl_sda
);

   //////////////////////////////////////////////////////
   // Internal signals
   //////////////////////////////////////////////////////

   wire i2c_master_stop_sda_i;
   wire i2c_master_start_sda_i;
   wire stop_detect_i;


   assign o_i2cbus_cntrl_sda = i2c_master_stop_sda_i &&
	                       i2c_master_start_sda_i;

   assign o_arbtr_lost = 1'b0;

   /*
   i2c_master_arbtr arbtr(
      .i_sys_clk        (sys_clk),
      .i_sys_rst        (sys_rst),
      .i_i2c_bus_scl    (i_i2c_bus_scl),
      .i_i2c_bus_sda    (i_i2c_bus_sda),
      .i_i2c_bus_sda_en (i_i2c_bus_sda_en),
      .i_i2c_master_sda (i_i2c_master_sda),
      .o_arbtr_lost     (o_arbtr_lost)
   );
   */

   i2c_master_falling_scl_detect falling_scl_detect(
      .sys_clk                         (sys_clk),
      .sys_rst                         (sys_rst),
      .i_i2c_bus_scl                   (i_i2c_bus_scl),
      .o_i2c_master_falling_scl_detect (o_i2c_master_falling_scl_detect)
   );

   i2c_master_scl_gen scl_gen(
      .sys_clk          (sys_clk),
      .sys_rst          (sys_rst),
      .i_enable_scl     (i_enable_scl),
      .i_i2c_bus_scl    (i_i2c_bus_scl),
      .i_clk_div_factor (i_clk_div_factor),
      .i_stop_detect    (stop_detect_i),
      .i_bps_mode       (i_bps_mode),
      .o_scl_timeout    (o_scl_timeout),
      .o_i2c_master_scl (o_i2c_master_scl)
   );

   i2c_master_start_detect start_detect(
      .sys_clk                   (sys_clk),
      .sys_rst                   (sys_rst),
      .i_i2c_bus_scl             (i_i2c_bus_scl),
      .i_i2c_bus_sda             (i_i2c_bus_sda),
      .o_i2c_master_start_detect (o_i2c_master_start_detect)
   );

   i2c_master_start_gen start_gen(
      .i_sys_clk                       (sys_clk),
      .i_sys_rst                       (sys_rst),
      .i_bps_mode                      (i_bps_mode),
      .i_i2c_master_start_en           (i_i2c_master_start_en),
      .o_i2c_master_start_ack          (o_i2c_master_start_ack),
      .i_tx_en                         (i_tx_en),
      .i_i2c_bus_scl                   (i_i2c_bus_scl),
      .i_i2c_bus_sda                   (i_i2c_bus_sda),
      .o_i2c_master_start_sda          (i2c_master_start_sda_i)
   );

   i2c_master_stop_detect stop_detect(
      .i_sys_clk                (sys_clk),
      .i_sys_rst                (sys_rst),
      .i_i2c_bus_scl            (i_i2c_bus_scl),
      .i_i2c_bus_sda            (i_i2c_bus_sda),
      .o_i2c_master_stop_detect (stop_detect_i)
   );

   assign o_i2c_master_stop_detect = stop_detect_i;

   i2c_master_stop_gen stop_gen(
      .i_sys_clk               (sys_clk),
      .i_sys_rst               (sys_rst),
      .i_bps_mode            (i_bps_mode),
      .i_i2c_master_stop_en  (i_i2c_master_stop_en),
      .o_i2c_master_stop_ack (o_i2c_master_stop_ack),
      .i_i2c_bus_scl         (i_i2c_bus_scl),
      .i_i2c_bus_sda         (i_i2c_bus_sda),
      .o_i2c_master_stop_sda (i2c_master_stop_sda_i)
   );

endmodule
