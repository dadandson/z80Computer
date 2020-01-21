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

module i2c_master_controller_top (
                                      inout  wire        io_scl,                                             
                                      inout  wire        io_sda,                                             
                                      output wire        o_int_n,                                              
                                                                                                             
                                      input  wire [6:0]  i_slave_addr_reg,                                   
                                      input  wire [7:0]  i_byte_cnt_reg,                                     
                                      input  wire [7:0]  i_clk_div_lsb,                                      
                                      input  wire [5:0]  i_config_reg, //soft_reset,abort_reg,tx_ie,rx_ie,int
                                      input  wire [7:0]  i_mode_reg,   //scl_div_cnt, bps_mode, adr_mode, ack
                                      output wire [7:0]  o_cmd_status_reg,                                   
                                      output wire        o_start_ack,                                        
                                                                                                             
                                      input  wire [7:0]  i_transmit_data, // transmit data port              
                                      output wire        o_transmit_data_request, // transmit data required 
                                      output wire        o_received_data_valid, //received data available flag
                                      output wire [7:0]  o_receive_data, // received data

                                      input  wire        i_rst_n,
                                      input  wire        i_clk
                                      );

    
 wire        scl_in;
 wire        scl_oe;
 wire        sda_in;
 wire        sda_oe;
 

  ////////////////////////////////////////////////////////////////////
  // I2C I/O interface
  ////////////////////////////////////////////////////////////////////
    
  parameter io_config = 6'b101001;	// simple I/O with tri-state

  SB_IO scl_io (					
			.PACKAGE_PIN		(io_scl), 
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
			.PACKAGE_PIN		(io_sda), 
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

  i2c_master_controller u_i2c_master_controller(
                                                 .i_scl_in        (scl_in),
                                                 .o_scl_oe        (scl_oe),
                                                 .i_sda_in        (sda_in),
                                                 .o_sda_oe        (sda_oe),   
                                                 .o_int_n         (o_int_n),
        
                                                 .i_slave_addr_reg (i_slave_addr_reg),
                                                 .i_byte_cnt_reg   (i_byte_cnt_reg),
                                                 .i_clk_div_lsb    (i_clk_div_lsb),
                                                 .i_config_reg     (i_config_reg),
                                                 .i_mode_reg       (i_mode_reg),  
                                                 .o_cmd_status_reg (o_cmd_status_reg),
                                                 .o_start_ack      (o_start_ack),           
                                                 .i_transmit_data  (i_transmit_data),
                                                 .o_transmit_data_request (o_transmit_data_request), 
                                                 .o_received_data_valid     (o_received_data_valid),
                                                 .o_receive_data   (o_receive_data),

                                                 .i_rst_n            (i_rst_n),
                                                 .i_clk              (i_clk) );
   endmodule 
      
