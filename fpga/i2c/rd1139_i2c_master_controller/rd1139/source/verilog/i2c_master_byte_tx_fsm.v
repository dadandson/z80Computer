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
//   -------------------------------------------------------------------------------------------------------------------------

`timescale 1 ns / 1 ps

module i2c_master_byte_tx_fsm(
   input  wire        i_sys_clk,
   input  wire        i_sys_rst,
   input  wire        i_ack_mode,
   input  wire  [7:0] i_tx_data,
   input  wire        i_tx_en,
   input  wire        i_transaction_complete,
   input  wire        i_i2c_master_falling_scl_detect,
   input  wire        i_i2c_bus_scl,
   input  wire        i_i2c_bus_sda,
   output reg         o_byte_tx_done,
   output reg         o_byte_tx_err,
   output reg         o_sda_disable,
   output reg         o_byte_tx_sda
);

   reg  [3:0] state;
   reg  [3:0] state_next;

   parameter [3:0] TX_IDLE   = 4'b0000;
   parameter [3:0] TX_BIT0   = 4'b0001;
   parameter [3:0] TX_BIT1   = 4'b0010;
   parameter [3:0] TX_BIT2   = 4'b0011;
   parameter [3:0] TX_BIT3   = 4'b0100;
   parameter [3:0] TX_BIT4   = 4'b0101;
   parameter [3:0] TX_BIT5   = 4'b0110;
   parameter [3:0] TX_BIT6   = 4'b0111;
   parameter [3:0] TX_BIT7   = 4'b1000;
   parameter [3:0] TX_RD_ACK = 4'b1001;

   ////////////////////////////////////////////////////
   // TX FSM
   ////////////////////////////////////////////////////
 
   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
            state <= TX_IDLE;
      end else begin
            state <= state_next;
      end
   end

   always @(*) begin
      state_next = state;
      case(state)
         TX_IDLE: if(i_tx_en) begin
                     state_next = TX_BIT7;
                  end
         TX_BIT7: if(i_i2c_master_falling_scl_detect) begin
                     state_next = TX_BIT6;
                  end
         TX_BIT6: if(i_i2c_master_falling_scl_detect) begin
                     state_next = TX_BIT5;
                  end
         TX_BIT5: if(i_i2c_master_falling_scl_detect) begin
                     state_next = TX_BIT4;
                  end
         TX_BIT4: if(i_i2c_master_falling_scl_detect) begin
                     state_next = TX_BIT3;
                  end
         TX_BIT3: if(i_i2c_master_falling_scl_detect) begin
                     state_next = TX_BIT2;
                  end
         TX_BIT2: if(i_i2c_master_falling_scl_detect) begin
                     state_next = TX_BIT1;
                  end
         TX_BIT1: if(i_i2c_master_falling_scl_detect) begin
                     state_next = TX_BIT0;
                  end
         TX_BIT0: if(i_i2c_master_falling_scl_detect) begin
                     state_next = TX_RD_ACK;
                  end
         TX_RD_ACK: if(i_i2c_master_falling_scl_detect) begin
                     state_next = TX_IDLE;
                  end
         default: state_next = TX_IDLE;
      endcase
   end

   ////////////////////////////////////////////////////
   // TX Data
   ////////////////////////////////////////////////////

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
            o_byte_tx_sda <= 1'b1;
      end else begin
         case(state)
            TX_IDLE:   o_byte_tx_sda <= 1'b1;
            TX_BIT7:   o_byte_tx_sda <= i_tx_data[7];
            TX_BIT6:   o_byte_tx_sda <= i_tx_data[6];
            TX_BIT5:   o_byte_tx_sda <= i_tx_data[5];
            TX_BIT4:   o_byte_tx_sda <= i_tx_data[4];
            TX_BIT3:   o_byte_tx_sda <= i_tx_data[3];
            TX_BIT2:   o_byte_tx_sda <= i_tx_data[2];
            TX_BIT1:   o_byte_tx_sda <= i_tx_data[1];
            TX_BIT0:   o_byte_tx_sda <= i_tx_data[0];
            TX_RD_ACK: o_byte_tx_sda <= 1'b1;
            default:   o_byte_tx_sda <= 1'b1;
         endcase
      end
   end

   ///////////////////////////////////////////////////////////////////
   // I2C SDA driver disabled to sample the acknowledge from receiver
   ///////////////////////////////////////////////////////////////////
  
   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_sda_disable <= 1'b0;
      end else begin
         o_sda_disable <= (state == TX_RD_ACK);
      end
   end

   //////////////////////////////////////////////////////////////
   // Error signal is generated if Acknowledge is not received
   // Clear error at end of the TX byte
   //////////////////////////////////////////////////////////////

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_byte_tx_err <= 1'b0;
      end else if ((state == TX_RD_ACK) &&
	            i_i2c_bus_scl && i_i2c_bus_sda) begin
         o_byte_tx_err <= 1'b1;
      end else if (o_byte_tx_done) begin
         o_byte_tx_err <= 1'b0;
      end
   end

   //////////////////////////////////////////////////////////////
   // TX done flag
   //////////////////////////////////////////////////////////////
  
   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
            o_byte_tx_done <= 1'b0;
      end else begin
            o_byte_tx_done <= (state == TX_RD_ACK) &&
		             i_i2c_master_falling_scl_detect;
      end
   end

endmodule
