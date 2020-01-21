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

module i2c_master_falling_scl_detect(
   input  wire      sys_clk,
   input  wire      sys_rst,
   input  wire      i_i2c_bus_scl,
   output reg       o_i2c_master_falling_scl_detect
);

   parameter [1:0] IDLE_STATE    = 2'b00;
   parameter [1:0] SCL0_STATE    = 2'b01;
   parameter [1:0] SCL_LOW_STATE = 2'b10;

   // Internal signals
  
   reg  [1:0] state;

   always @(posedge sys_clk or posedge sys_rst) begin
      if(sys_rst) begin
         state <= IDLE_STATE;
      end else begin
	 if((state == IDLE_STATE) && ~i_i2c_bus_scl) begin
            state <= SCL0_STATE;
         end else if(state == SCL0_STATE) begin
            state <= SCL_LOW_STATE;
         end else if((state == SCL_LOW_STATE) && i_i2c_bus_scl) begin
            state <= IDLE_STATE;
         end
      end
   end

   // Output generation logic
   always @(posedge sys_clk or posedge sys_rst) begin
      if(sys_rst) begin
         o_i2c_master_falling_scl_detect <= 1'b0;
      end else begin
         o_i2c_master_falling_scl_detect <= (state == SCL0_STATE);
      end
   end

endmodule

