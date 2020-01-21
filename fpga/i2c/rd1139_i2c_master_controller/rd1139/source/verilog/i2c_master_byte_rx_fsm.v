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

module i2c_master_byte_rx_fsm(
   input  wire        i_sys_clk,
   input  wire        i_sys_rst,
   input  wire        i_ack_mode,
   output reg   [7:0] o_rx_data,
   input  wire        i_rx_en,
   input  wire        i_last_byte,
   input  wire        i_transaction_complete,
   input  wire        i_i2c_master_falling_scl_detect,
   input  wire        i_i2c_bus_scl,
   input  wire        i_i2c_bus_sda,
   output reg         o_byte_rx_done,
   output reg         o_sda_enable,
   output reg         o_rx_ack_sda
);

   parameter [3:0] RX_IDLE   = 4'b0000;
   parameter [3:0] RX_BIT0   = 4'b0001;
   parameter [3:0] RX_BIT1   = 4'b0010;
   parameter [3:0] RX_BIT2   = 4'b0011;
   parameter [3:0] RX_BIT3   = 4'b0100;
   parameter [3:0] RX_BIT4   = 4'b0101;
   parameter [3:0] RX_BIT5   = 4'b0110;
   parameter [3:0] RX_BIT6   = 4'b0111;
   parameter [3:0] RX_BIT7   = 4'b1000;
   parameter [3:0] RX_WR_ACK = 4'b1001;

   // Internal signals
   reg  [3:0] state;
   reg  [3:0] state_next;

    ///////////////////////////////////////////////////////////////////////////
    // RX FSM
    ///////////////////////////////////////////////////////////////////////////
    
    always @(posedge i_sys_clk or posedge i_sys_rst) begin
       if(i_sys_rst) begin
           state <= RX_IDLE;
       end else begin
           state <= state_next;
       end
    end

    always @(*) begin
       state_next = state;
       case(state)
          RX_IDLE:   if(i_rx_en) begin
                        state_next = RX_BIT7;
                     end
          RX_BIT7:   if(i_i2c_master_falling_scl_detect) begin
                        state_next = RX_BIT6;
                     end
          RX_BIT6:   if(i_i2c_master_falling_scl_detect) begin
                        state_next = RX_BIT5;
                     end
          RX_BIT5:   if(i_i2c_master_falling_scl_detect) begin
                        state_next = RX_BIT4;
                     end
          RX_BIT4:   if(i_i2c_master_falling_scl_detect) begin
                        state_next = RX_BIT3;
                     end
          RX_BIT3:   if(i_i2c_master_falling_scl_detect) begin
                        state_next = RX_BIT2;
                     end
          RX_BIT2:   if(i_i2c_master_falling_scl_detect) begin
                        state_next = RX_BIT1;
                     end
          RX_BIT1:   if(i_i2c_master_falling_scl_detect) begin
                        state_next = RX_BIT0;
                     end
          RX_BIT0:   if(i_i2c_master_falling_scl_detect) begin
                        state_next = RX_WR_ACK;
                     end
          RX_WR_ACK: if(i_i2c_master_falling_scl_detect) begin
                        state_next = RX_IDLE;
                     end
          default:   state_next = RX_IDLE;
       endcase
    end

    ///////////////////////////////////////////////////////////////////////////
    // I2C RX data
    ///////////////////////////////////////////////////////////////////////////
   
    always @(posedge i_sys_clk) begin
       if(i_i2c_bus_scl && state==(RX_BIT7)) begin
          o_rx_data[7] <= i_i2c_bus_sda; 
       end
    end

    always @(posedge i_sys_clk) begin
       if(i_i2c_bus_scl && state==(RX_BIT6)) begin
          o_rx_data[6] <= i_i2c_bus_sda; 
       end
    end

    always @(posedge i_sys_clk) begin
       if(i_i2c_bus_scl && state==(RX_BIT5)) begin
          o_rx_data[5] <= i_i2c_bus_sda; 
       end
    end

    always @(posedge i_sys_clk) begin
       if(i_i2c_bus_scl && state==(RX_BIT4)) begin
          o_rx_data[4] <= i_i2c_bus_sda; 
       end
    end

    always @(posedge i_sys_clk) begin
       if(i_i2c_bus_scl && state==(RX_BIT3)) begin
          o_rx_data[3] <= i_i2c_bus_sda; 
       end
    end

    always @(posedge i_sys_clk) begin
       if(i_i2c_bus_scl && state==(RX_BIT2)) begin
          o_rx_data[2] <= i_i2c_bus_sda; 
       end
    end

    always @(posedge i_sys_clk) begin
       if(i_i2c_bus_scl && state==(RX_BIT1)) begin
          o_rx_data[1] <= i_i2c_bus_sda; 
       end
    end

    always @(posedge i_sys_clk) begin
       if(i_i2c_bus_scl && state==(RX_BIT0)) begin
          o_rx_data[0] <= i_i2c_bus_sda; 
       end
    end

    ///////////////////////////////////////////////////////////////////////////
    // I2C SDA driver enabled to send the acknowledge to transmiter
    ///////////////////////////////////////////////////////////////////////////
    
    always @(posedge i_sys_clk or posedge i_sys_rst) begin
       if(i_sys_rst) begin
          o_sda_enable <= 1'b0;
       end else begin
          o_sda_enable <= (state == RX_WR_ACK);
       end
    end

    ///////////////////////////////////////////////////////////////////////////
    // Read Acknowledge generation.
    ///////////////////////////////////////////////////////////////////////////
  
    always @(posedge i_sys_clk or posedge i_sys_rst) begin
       if(i_sys_rst) begin
          o_rx_ack_sda <= 1'b1;
       end else begin
	  if(state == RX_WR_ACK) begin
	     if(~i_i2c_bus_scl) begin
                 o_rx_ack_sda <= (i_transaction_complete);
             end
          end else begin
             o_rx_ack_sda <= 1'b1;
          end
       end
    end

    always @(posedge i_sys_clk or posedge i_sys_rst) begin
       if(i_sys_rst) begin
          o_byte_rx_done <= 1'b0;
       end else begin
          o_byte_rx_done <= (state == RX_WR_ACK) &&
		            i_i2c_master_falling_scl_detect;
       end
    end

endmodule

