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

module delay_gen(
   input  wire        sys_clk,
   input  wire        rst,
   input  wire        start_delay,
   input  wire [15:0] count_threshold,
   output reg         delay_done
);


   // internal signals
   reg  [15:0] count;

   always @(posedge sys_clk or posedge rst) begin
      if(rst) begin
         count <= 16'b0;
      end else begin
         if(start_delay) begin
            count <= 16'b1;
         end else if(count == count_threshold) begin
            count <= 16'b0;
         end else begin
            count <= count + 16'b1;
         end
      end
   end

   always @(posedge sys_clk or posedge rst) begin
      if(rst) begin
         delay_done <= 1'b0;
      end else begin
         delay_done <= (count == count_threshold);
      end
   end

endmodule

