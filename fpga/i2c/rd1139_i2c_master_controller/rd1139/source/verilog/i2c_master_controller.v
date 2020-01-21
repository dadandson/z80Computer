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

module i2c_master_controller(
 
   input  wire        i_scl_in,
   output wire        o_scl_oe,
   input  wire        i_sda_in,
   output wire        o_sda_oe,                          
   output wire        o_int_n,
    
   input  wire [6:0]  i_slave_addr_reg,
   input  wire [7:0]  i_byte_cnt_reg,
   input  wire [7:0]  i_clk_div_lsb,
   input  wire [5:0]  i_config_reg, //soft_reset,abort_reg,tx_ie,rx_ie,intr_clr_reg, start_reg
   input  wire [7:0]  i_mode_reg,   //scl_div_cnt, bps_mode, adr_mode, ack_mode, rw_mode
   output wire [7:0]  o_cmd_status_reg,
   output wire        o_start_ack,   
                            
   input  wire [7:0]  i_transmit_data, // transmit data port 
   output wire        o_transmit_data_request, // transmit data required flag
   output wire        o_received_data_valid, //received data available flag                             
   output wire [7:0]  o_receive_data, // received data                         
                                    
   input  wire        i_rst_n,
   input  wire        i_clk
);
  
  // VERSION of design
  parameter [7:0] VERSION = 8'h20;   // 2 - for China

  // I2C signals
 // wire scl_in;
  wire scl_in_filtered;
  //wire scl_oe;
  wire scl_oe_n;
 // wire sda_in;
  wire sda_in_filtered;
  //wire sda_oe;
  wire sda_oe_n;
  wire i2cbus_cntrl_sda;
  wire i2c_txdata_sda;
  wire arbtr_lost;
  wire scl_timeout;
  wire int_out;
  wire force_i2c;
  wire [10:0] scl_divcnt;
  wire [1:0] bps_mode;
  
  wire [2:0]  gpio_reg0;
  wire [2:0]  gpio_reg1;
 
  assign o_scl_oe = ~scl_oe_n;
  assign sda_oe_n = (i2cbus_cntrl_sda && i2c_txdata_sda) && ~arbtr_lost;
  assign o_sda_oe = ~sda_oe_n;
  
  // Misc
  wire        enable_scl;
  wire        start_gen_en;
  wire        stop_gen_en;
  wire        i2c_sda_en;
  wire        i2c_master_falling_scl_detect;
  wire        i2c_master_start_detect;
  wire        i2c_master_start_ack;
  wire        i2c_master_stop_detect;
  wire        i2c_master_stop_ack;
          
  //soft reset 
  reg        soft_reset_d1;
  reg        soft_reset_d2;
  reg        soft_reset_d3;    
  
  // Global clock wires
  wire     rst;
  wire     rst_out;
  wire     reset;
  
    
  // Reset polarity
  assign rst = ~i_rst_n;
  assign reset = rst || rst_out;
  
/* -----\/----- EXCLUDED -----\/-----

  ////////////////////////////////////////////////////////////////////
  // I2C I/O interface
  ////////////////////////////////////////////////////////////////////
    
  parameter io_config = 6'b101001;	// simple I/O with tri-state

  SB_IO scl_io (					
			.PACKAGE_PIN		(scl), 
			.LATCH_INPUT_VALUE	(), 			
			.CLOCK_ENABLE		(), 				
			.INPUT_CLK		(),
			.OUTPUT_CLK		(), 				
			.OUTPUT_ENABLE		(scl_oe),			
			.D_OUT_1		(), 
			.D_OUT_0		(1'b0),
			.D_IN_1			(),
			.D_IN_0			(scl_in)
			);
			
  defparam  scl_io.PIN_TYPE = io_config;
  defparam  scl_io.IO_STANDARD = "SB_LVCMOS";

  SB_IO sda_io (					
			.PACKAGE_PIN		(sda), 
			.LATCH_INPUT_VALUE	(), 			
			.CLOCK_ENABLE		(), 				
			.INPUT_CLK		(),
			.OUTPUT_CLK		(), 				
			.OUTPUT_ENABLE		(sda_oe),			
			.D_OUT_1		(), 
			.D_OUT_0		(1'b0),
			.D_IN_1			(),
			.D_IN_0			(sda_in)
			);
			
  defparam  sda_io.PIN_TYPE = io_config;
  defparam  sda_io.IO_STANDARD = "SB_LVCMOS";
 -----/\----- EXCLUDED -----/\----- */
 
  ////////////////////////////////////////////////////////////////////
  // Interrupt I/O
  ////////////////////////////////////////////////////////////////////
    
  assign o_int_n = ~int_out;

  ////////////////////////////////////////////////////////////////////
  // Filters
  ////////////////////////////////////////////////////////////////////

  filter filter_scl(
     .clk   (i_clk),
     .rst   (reset),
     .in    (i_scl_in),
     .out   (scl_in_filtered)
  );
  filter filter_sda(
     .clk   (i_clk),
     .rst   (reset),
     .in    (i_sda_in),
     .out   (sda_in_filtered)
  );
    
 
  ////////////////////////////////////////////////////////////////////
  // I2C bus control FSM
  ////////////////////////////////////////////////////////////////////
 
  i2cbus_cntrl_fsm_top i2cbus_cntrl_fsm(
     .sys_clk                         (i_clk),
     .sys_rst                         (reset),
     .i_i2c_bus_scl                   (scl_in_filtered),
     .i_i2c_bus_sda                   (sda_in_filtered),
     .i_i2c_bus_sda_en                (i2c_sda_en),
     .i_enable_scl                    (enable_scl),
     .i_clk_div_factor                (scl_divcnt),
     .i_bps_mode                      (bps_mode),
     .i_tx_en                         (tx_en),
     .o_i2c_master_scl                (scl_oe_n),
     .o_i2c_master_falling_scl_detect (i2c_master_falling_scl_detect),
     .i_i2c_master_sda                (sda_oe_n),
     .o_arbtr_lost                    (arbtr_lost),
     .o_scl_timeout                   (scl_timeout),
     .o_i2c_master_start_detect       (i2c_master_start_detect),
     .i_i2c_master_start_en           (start_gen_en),
     .o_i2c_master_start_ack          (i2c_master_start_ack),
     .o_i2c_master_stop_detect        (i2c_master_stop_detect),
     .i_i2c_master_stop_en            (stop_gen_en),
     .o_i2c_master_stop_ack           (i2c_master_stop_ack),
     .o_i2cbus_cntrl_sda              (i2cbus_cntrl_sda)
  );


  ////////////////////////////////////////////////////////////////////
  // I2C master control FSM
  ////////////////////////////////////////////////////////////////////
 
  i2c_master_cntrl_fsm_top cntrl_fsm(
     .i_sys_clk                       (i_clk),
     .i_sys_rst                       (rst),
     .i_i2c_bus_scl                   (scl_in_filtered),
     .i_i2c_bus_sda                   (sda_in_filtered),
     // Configuration signals
     .i_slave_addr_reg                (i_slave_addr_reg),
     .i_byte_cnt_reg                  (i_byte_cnt_reg),
     .i_clk_div_lsb                   (i_clk_div_lsb),
     .i_config_reg                    (i_config_reg),
     .i_mode_reg                      (i_mode_reg), 
     .i_scl_timeout                   (scl_timeout),               
     .o_start_ack                     (o_start_ack),
     .o_tx_en                         (tx_en),
     .o_scl_divcnt                    (scl_divcnt),  
     .o_bps_mode                      (bps_mode),                                
     .o_i2c_sda_en                    (i2c_sda_en),
     .o_i2c_txdata_sda                (i2c_txdata_sda),
     .i_arbtr_lost                    (arbtr_lost),
     .i_i2c_master_falling_scl_detect (i2c_master_falling_scl_detect),
     .o_enable_scl                    (enable_scl),
     .i_i2c_master_start_detect       (i2c_master_start_detect),
     .i_i2c_master_stop_detect        (i2c_master_stop_detect),
     .o_start_gen_en                  (start_gen_en),
     .i_start_gen_ack                 (i2c_master_start_ack),
     .o_stop_gen_en                   (stop_gen_en),
     .i_stop_gen_ack                  (i2c_master_stop_detect),
     .o_int_out                       (int_out),
     .o_cmd_status_reg                (o_cmd_status_reg),
     .o_rxfifo_wren                   (o_received_data_valid),
     .o_rxfifo_wrdata                 (o_receive_data),
     .o_txfifo_rden                   (o_transmit_data_request),
     .i_txfifo_rddata                 (i_transmit_data)
    );

  //Soft Reset Synchronizer  
  assign rst_out = soft_reset_d2 && ~soft_reset_d3;
  always @(posedge i_clk or posedge rst) begin
     if(rst) begin
	soft_reset_d1 <= 1'b0;
	soft_reset_d2 <= 1'b0;
	soft_reset_d3 <= 1'b0;
     end else begin
	soft_reset_d1 <= i_config_reg[5];
	soft_reset_d2 <= soft_reset_d1;
	soft_reset_d3 <= soft_reset_d2;
     end
  end
 
endmodule
