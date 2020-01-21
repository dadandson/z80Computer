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
//   --------------------------------------------------------------------`timescale 1 ns / 1 ps

module filter(
   input  wire        clk,
   input  wire        rst,
   input  wire        in,
   output wire        out
);


   // internal signals
   reg  in_d1;
   reg  in_d2;
   reg  in_d3;
   reg  out_n;

   always @(posedge clk or posedge rst) begin
      if(rst) begin
         in_d1 <= 1'b0;
         in_d2 <= 1'b0;
         in_d3 <= 1'b0;
      end else begin
         in_d1 <= ~in;         // Synchronizer #1
         in_d2 <= in_d1;       // Synchronizer #2
         in_d3 <= in_d2;       // Filter
      end
   end

   // Filter - two consecutive samples must match
   //        - all glitches shorter than clock period are suppressed
   assign out = ~out_n;
   always @(posedge clk or posedge rst) begin
      if(rst) begin
         out_n <= 1'b0;
      end else if (in_d2 == in_d3) begin
         out_n <= in_d3;
      end
   end

endmodule

