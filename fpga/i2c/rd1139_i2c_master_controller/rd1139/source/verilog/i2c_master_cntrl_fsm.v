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

module i2c_master_cntrl_fsm(
   input  wire        i_sys_clk,
   input  wire        i_sys_rst,
   input  wire  [9:0] i_slave_addr,
   // Configuration signals
   input  wire  [7:0] i_byte_cnt,
   input  wire        i_start,
   output reg         o_start_ack,
   input  wire        i_abort,
   input  wire        i_adr_mode,
   input  wire        i_rw_mode,
   input  wire        i_slave_changed,
   // Status signals
   output reg         o_config_latch_en,
   output reg         o_i2c_busy,
   output reg         o_tx_done,
   output reg         o_rx_done,
   output reg         o_abort_ack,
   output reg         o_i2c_sda_en,
   //i2c_gen_detect_fsms interface
   input  wire        i_arbtr_lost,
   output reg         o_enable_scl,
   input  wire        i_i2c_master_start_detect,
   input  wire        i_i2c_master_stop_detect,
   input  wire        i_i2c_master_falling_scl_detect,
   // Rx FIFO write interface
   output reg         o_rxfifo_wren,
   // Tx FIFO read interface
   output reg         o_txfifo_rden,
   input  wire  [7:0] i_txfifo_rddata,
   // Others
   output reg         o_start_gen_en,
   input  wire        i_start_gen_ack,
   output reg         o_stop_gen_en,
   input  wire        i_stop_gen_ack,
   output reg         o_tx_en,
   output reg         o_rx_en,
   output reg         o_transaction_complete,
   input  wire        i_byte_tx_done,
   input  wire        i_byte_tx_err,
   output reg   [7:0] o_tx_data,
   output reg         o_last_byte,
   input  wire        i_byte_rx_done
);

   parameter [3:0] IDLE_STATE        = 4'b0000;
   parameter [3:0] POL_STATE         = 4'b0001;
   parameter [3:0] START_STATE       = 4'b0010;
   parameter [3:0] SCL_EN_STATE      = 4'b0011;
   parameter [3:0] SLVADR_MSB_STATE  = 4'b0100;
   parameter [3:0] SLVADR_LSB_STATE  = 4'b0101;
   parameter [3:0] TX_STATE          = 4'b0110;
   parameter [3:0] RX_STATE          = 4'b0111;
   parameter [3:0] SCL_DISABLE_STATE = 4'b1000;
   parameter [3:0] STOP_STATE        = 4'b1001;

   parameter ADRMODE_7BIT  = 1'b0;
   parameter ADRMODE_10BIT = 1'b1;
   parameter WRITEMODE     = 1'b0;
   parameter READMODE      = 1'b1;

   // Internal signals
   reg   [3:0] state;
   reg   [3:0] state_next;
   reg         i2cbus_busy_i;
   reg   [7:0] byte_count_i;
   reg         rx_en;
   wire        transaction_stop_req_i;



   assign transaction_stop_req_i = i_abort || i_byte_tx_err ||
	                           o_transaction_complete;

   ////////////////////////////////////////////////////////////////
   // I2C master control FSM
   ////////////////////////////////////////////////////////////////

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         state <= IDLE_STATE;
      end else begin
         state <= state_next;
      end
   end

   always @(*) begin
      state_next = state;
      case(state)
         IDLE_STATE:        if(i_start)
		               state_next = POL_STATE;
         POL_STATE:         if(i2cbus_busy_i) //Wait for bus to be free
		               state_next = START_STATE;
         START_STATE:       if(i_start_gen_ack) // Wait STOP to SCL HOLD time
		               state_next = SCL_EN_STATE;
         SCL_EN_STATE:      if(i_i2c_master_falling_scl_detect)
		               state_next = SLVADR_MSB_STATE;
         SLVADR_MSB_STATE:  begin // normal 7-bit slave addr or msb of 10-bit
		               if(i_byte_tx_done) begin
				  if(i_arbtr_lost)
		                     state_next = IDLE_STATE;
                                  else if (transaction_stop_req_i)
		                     state_next = SCL_DISABLE_STATE;
                                  else if(i_adr_mode == ADRMODE_10BIT)
		                     state_next = SLVADR_LSB_STATE;
                                  else if(i_rw_mode == READMODE)
		                     state_next = RX_STATE;
                                  else
		                     state_next = TX_STATE;
                               end
		            end
         SLVADR_LSB_STATE:  begin // LSB of 10-bit slave address
		               if(i_byte_tx_done) begin
				  if(i_arbtr_lost)
		                     state_next = IDLE_STATE;
                                  else if (transaction_stop_req_i)
		                     state_next = SCL_DISABLE_STATE;
                                  else if(i_rw_mode == READMODE)
		                     state_next = RX_STATE;
                                  else
		                     state_next = TX_STATE;
                               end
		            end
         TX_STATE:          begin // I2C tx state
		               if(i_byte_tx_done) begin
				  if(i_arbtr_lost)
		                     state_next = IDLE_STATE;
                                  else if (transaction_stop_req_i)
		                     state_next = SCL_DISABLE_STATE;
                               end
		            end
         RX_STATE:          begin // I2C rx state
		               if(i_byte_rx_done) begin
				  if(i_arbtr_lost)
		                     state_next = IDLE_STATE;
                                  else if (transaction_stop_req_i)
		                     state_next = SCL_DISABLE_STATE;
                               end
		            end
         SCL_DISABLE_STATE: begin // Waiting for setup of STOP to SCL
	                       if(i_start && ~i_slave_changed)
		                  state_next = START_STATE;
                               else
		                  state_next = STOP_STATE;
		            end
         STOP_STATE:        begin // Stop generation
	                       if(i_stop_gen_ack)
		                  state_next = IDLE_STATE;
		            end
         default:           state_next = IDLE_STATE;
      endcase
   end


   ////////////////////////////////////////////////////////////////
   // START and STOP condition generation enables
   ////////////////////////////////////////////////////////////////

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_start_gen_en <= 1'b0;
      end else begin
	 if(state == POL_STATE) begin
            o_start_gen_en <= ~i2cbus_busy_i;
         end else if(state == SCL_DISABLE_STATE) begin
            o_start_gen_en <= i_start && ~i_slave_changed;
         end else begin
            o_start_gen_en <= 1'b0;
         end
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_stop_gen_en <= 1'b0;
      end else begin
         o_stop_gen_en <= (state == SCL_DISABLE_STATE) &&
		           (~i_start || i_slave_changed);
      end
   end

   ////////////////////////////////////////////////////////////////
   // SCL enable
   ////////////////////////////////////////////////////////////////
  
   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_enable_scl <= 1'b0;
      end else begin
	 if(state == SCL_EN_STATE) begin
            o_enable_scl <= 1'b1;
         end else if((state == IDLE_STATE) ||
		     (state == SCL_DISABLE_STATE)) begin
            o_enable_scl <= 1'b0;
         end
      end
   end

   ////////////////////////////////////////////////////////////////
   // Byte counter
   ////////////////////////////////////////////////////////////////

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         byte_count_i <= 7'b0;
      end else begin
	 if(~o_enable_scl || (byte_count_i == i_byte_cnt)) begin
            byte_count_i <= 7'b0;
         end else if(rx_en || o_txfifo_rden) begin
            byte_count_i <= byte_count_i + 7'b1;
         end
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_transaction_complete <= 1'b0;
      end else begin
	 if(~o_enable_scl) begin
            o_transaction_complete <= 1'b0;
         end else if((byte_count_i == i_byte_cnt) && o_enable_scl) begin
            o_transaction_complete <= 1'b1;
         end
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_last_byte <= 1'b0;
      end else begin
         o_last_byte <= (byte_count_i == i_byte_cnt);
      end
   end

   ////////////////////////////////////////////////////////////////
   // TX FIFO read interface
   ////////////////////////////////////////////////////////////////

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_txfifo_rden <= 1'b0;
      end else begin
         o_txfifo_rden <= i_byte_tx_done && ~i_arbtr_lost &&
		          ~transaction_stop_req_i &&
		          (((state == SLVADR_MSB_STATE) &&
			     (i_adr_mode == ADRMODE_7BIT) &&
			     (i_rw_mode == WRITEMODE)) ||
		           ((state == SLVADR_LSB_STATE) &&
			     (i_rw_mode == WRITEMODE)) ||
		           ((state == TX_STATE)));
      end
   end

   // Data to be transmited on I2C bus
     always @(posedge i_sys_clk or posedge i_sys_rst) begin
        if(i_sys_rst) begin
           o_tx_data <= 8'b0;
        end else begin
        if(state == SLVADR_MSB_STATE) begin
            o_tx_data <= (i_adr_mode == ADRMODE_10BIT) ?
                         {5'b11110, i_slave_addr[9:8], i_rw_mode} :
                         {i_slave_addr[7:1], i_rw_mode};
         end else if(state == SLVADR_LSB_STATE) begin
            o_tx_data <= i_slave_addr[7:0];
         end else if(state == TX_STATE) begin
            o_tx_data <= i_txfifo_rddata;
         end
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_tx_en <= 1'b0;
      end else begin
         if(state == SCL_EN_STATE) begin
            o_tx_en <= i_i2c_master_falling_scl_detect;
         end else if(state == SLVADR_MSB_STATE) begin
            o_tx_en <= i_byte_tx_done && (i_adr_mode == ADRMODE_10BIT);
         end else if(state == TX_STATE) begin
         o_tx_en <= o_txfifo_rden;
         end else begin
            o_tx_en <= 1'b0;
         end
      end
   end


   ////////////////////////////////////////////////////////////////
   // RX FIFO write interface
   ////////////////////////////////////////////////////////////////
 
   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_rxfifo_wren <= 1'b0;
      end else begin
         o_rxfifo_wren <= (state == RX_STATE) && i_byte_rx_done;
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_rx_en <= 1'b0;
      end else begin
         o_rx_en <= rx_en;
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         rx_en <= 1'b0;
      end else begin
         rx_en <=  ~i_arbtr_lost && ~transaction_stop_req_i &&
		    (((state == SLVADR_MSB_STATE) &&
		      (i_adr_mode == ADRMODE_7BIT) &&
		      (i_rw_mode == READMODE) && i_byte_tx_done) ||
		     ((state == SLVADR_LSB_STATE) &&
		      (i_rw_mode == READMODE) && i_byte_tx_done) ||
		     ((state == RX_STATE) && i_byte_rx_done));
      end
   end

   ////////////////////////////////////////////////////////////////
   // Status signal generation
   ////////////////////////////////////////////////////////////////

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         i2cbus_busy_i <= 1'b0;
      end else begin
	 if(i_i2c_master_start_detect) begin
            i2cbus_busy_i <= 1'b1;
         end else if(i_i2c_master_stop_detect) begin
            i2cbus_busy_i <= 1'b0;
         end
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_start_ack <= 1'b0;
      end else begin
         o_start_ack <= (state == SCL_EN_STATE);
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_tx_done <= 1'b0;
         o_rx_done <= 1'b0;
      end else begin 
	 if(state == START_STATE) begin
            o_tx_done <= 1'b0;
            o_rx_done <= 1'b0;
         end else if((state == SCL_DISABLE_STATE) &&
		      o_transaction_complete) begin
            o_tx_done <= (i_rw_mode == WRITEMODE);
            o_rx_done <= (i_rw_mode == READMODE);
         end
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_i2c_busy <= 1'b0;
      end else begin
	 if((state == IDLE_STATE) ||
            ((state == STOP_STATE) && i_stop_gen_ack)) begin
            o_i2c_busy <= 1'b0;
         end else if(state == START_STATE) begin
            o_i2c_busy <= 1'b1;
         end
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_abort_ack <= 1'b0;
      end else begin
         o_abort_ack <= (state == SCL_DISABLE_STATE) && i_abort;
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_i2c_sda_en <= 1'b0;
      end else begin
	 if((state == IDLE_STATE) ||
            (state == RX_STATE)) begin
            o_i2c_sda_en <= 1'b0;
         end else if(state == POL_STATE) begin
            o_i2c_sda_en <= i2cbus_busy_i;
         end else if(state == SCL_EN_STATE) begin
            o_i2c_sda_en <= 1'b1;
         end else if(i_arbtr_lost) begin
            o_i2c_sda_en <= 1'b0;
         end
      end
   end

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
      if(i_sys_rst) begin
         o_config_latch_en <= 1'b0;
      end else begin
         o_config_latch_en <= ((state == IDLE_STATE) && i_start) ||
                              ((state == SCL_DISABLE_STATE) && 
			       (i_start && ~i_slave_changed));
      end
   end

endmodule

