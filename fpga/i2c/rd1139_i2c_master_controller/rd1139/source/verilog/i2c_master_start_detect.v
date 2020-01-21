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

module i2c_master_start_detect(
   input  wire    sys_clk,
   input  wire    sys_rst,
   input  wire    i_i2c_bus_scl,
   input  wire    i_i2c_bus_sda,
   output reg     o_i2c_master_start_detect
);


   parameter IDLE   = 1'b0;
   parameter DETECT = 1'b1;

   // Internal signals
   reg  state;
   reg  state_next;


   always @(posedge sys_clk or posedge sys_rst) begin
      if(sys_rst) begin
         state <= IDLE;
      end else begin
         state <= state_next;
      end
   end

   always @(*) begin
      state_next = state;
      case(state)
	 IDLE:    if(i_i2c_bus_sda && i_i2c_bus_scl) state_next = DETECT;
	 DETECT:  if(!(i_i2c_bus_sda && i_i2c_bus_scl)) state_next = IDLE;
	 default: state_next = IDLE;
      endcase
   end

   always @(posedge sys_clk or posedge sys_rst) begin
      if(sys_rst) begin
         o_i2c_master_start_detect <= 1'b0;
      end else begin
	 if(state == DETECT) begin
            o_i2c_master_start_detect <= ~i_i2c_bus_sda && i_i2c_bus_scl;
         end
      end
   end

endmodule

