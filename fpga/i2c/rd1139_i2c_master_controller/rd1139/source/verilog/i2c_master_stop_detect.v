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

module i2c_master_stop_detect(
   input  wire    i_sys_clk,
   input  wire    i_sys_rst,
   input  wire    i_i2c_bus_scl,
   input  wire    i_i2c_bus_sda,
   output reg     o_i2c_master_stop_detect
);

   // Internal signals
   reg  state;

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
	 state <= 1'b0;
      end else begin
	 if (~i_i2c_bus_sda && i_i2c_bus_scl) begin
	    state <= 1'b1; // detect
         end else if (!(~i_i2c_bus_sda && i_i2c_bus_scl)) begin
	    state <= 1'b0;
         end
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_i2c_master_stop_detect <= 1'b0;
      end else begin
         o_i2c_master_stop_detect <= (state == 1'b1) &&
                                     i_i2c_bus_sda && i_i2c_bus_scl;
      end
   end

endmodule

