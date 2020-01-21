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

module i2c_master_cntrl_fsm_top(
   input  wire        i_sys_clk,
   input  wire        i_sys_rst,
   input  wire        i_i2c_bus_scl,
   input  wire        i_i2c_bus_sda,
   // Configuration signals
   input  wire  [6:0] i_slave_addr_reg,
   input  wire  [7:0] i_byte_cnt_reg,
   input  wire  [7:0] i_clk_div_lsb,
   input  wire  [5:0] i_config_reg,
   input  wire  [7:0] i_mode_reg,
   input  wire        i_scl_timeout,                              
                                
   output wire        o_start_ack,
   output wire        o_tx_en,
              
   output wire  [10:0] o_scl_divcnt,                                   
   output  reg  [1:0]  o_bps_mode,                   
                                 
   output wire        o_i2c_sda_en,
   output wire        o_i2c_txdata_sda,
   //i2c_gen_detect_fsms interface
   input  wire        i_arbtr_lost,
   input  wire        i_i2c_master_falling_scl_detect,
   output wire        o_enable_scl,
   input  wire        i_i2c_master_start_detect,
   input  wire        i_i2c_master_stop_detect,
   output wire        o_start_gen_en,
   input  wire        i_start_gen_ack,
   output wire        o_stop_gen_en,
   input  wire        i_stop_gen_ack,
   output reg         o_int_out,
   output wire  [7:0] o_cmd_status_reg,                                   
   // Rx FIFO write interface
   output wire        o_rxfifo_wren,
   output wire  [7:0] o_rxfifo_wrdata,
   // Tx FIFO read interface
   output wire        o_txfifo_rden,
   input  wire  [7:0] i_txfifo_rddata                             
   
);

   wire [7:0] tx_data;
   wire       tx_en;
   wire       rx_en;
   wire       last_byte;
   wire       byte_tx_sda;
   wire       byte_tx_done;
   wire       byte_rx_done;
   wire       byte_tx_err;
   wire       transaction_complete;
   wire       sda_enable;
   wire       sda_disable;
   wire       rx_ack_sda;
   wire       i2c_sda_en_i;

   //wire [7:0] cmd_status_reg;
   wire       i2c_busy;
   wire       tx_done;
   wire       rx_done;
   wire       tx_err;
   wire       abort_ack;
    
   //Synchronizers
   reg        start_reg1;
   reg        start_reg2;
   reg        abort_reg1;
   reg        abort_reg2;
   reg        intr_clr_reg;
   reg        intr_clr_reg1;
   reg        intr_clr_reg2;

   reg        tx_done_reg;
   reg        tx_done_d1;
   reg        rx_done_reg;
   reg        rx_done_d1;
   reg        tx_err_reg;
   reg        tx_err_d1;
   reg        rx_err_reg;
   reg        rx_err_d1;
   reg        abort_ack_reg;
   reg        abort_ack_d1;
   reg        arbtr_lost_reg;
   reg        arbtr_lost_d1;
   reg        scl_timeout_reg;
   reg        scl_timeout_d1; 
    
   //Internal signal
   wire       intr_clr_pulse;
   wire       config_latch_en;
   reg  [9:0] slave_addr;
   reg  [7:0] byte_cnt;
   reg        slave_changed;
   reg        adr_mode;
   reg        rw_mode;
   reg        ack_mode;
   reg        txintr_en;
   reg        rxintr_en;
   wire [5:0] config_reg;
   wire       abort_reg;
   wire       start_reg;
   wire       start_bit;
   wire       start_ack;
   wire       start_rst;
   reg        config_start_reg;
 
   assign     o_tx_en = tx_en;
   assign     o_start_ack = start_ack;

   i2c_master_cntrl_fsm cntrl_fsm(
      .i_sys_clk                       (i_sys_clk),
      .i_sys_rst                       (i_sys_rst),
      .i_slave_addr                    (slave_addr),
      .i_byte_cnt                      (byte_cnt),
      .i_start                         (start_reg),
      .o_start_ack                     (start_ack),
      .i_abort                         (abort_reg),
      .i_adr_mode                      (adr_mode),
      .i_rw_mode                       (rw_mode),
      .i_slave_changed                 (slave_changed),
      .o_config_latch_en               (config_latch_en),
      .o_i2c_busy                      (i2c_busy),
      .o_tx_done                       (tx_done),
      .o_rx_done                       (rx_done),
      .o_abort_ack                     (abort_ack),
      .o_i2c_sda_en                    (i2c_sda_en_i),
      .i_arbtr_lost                    (i_arbtr_lost),
      .o_enable_scl                    (o_enable_scl),
      .i_i2c_master_start_detect       (i_i2c_master_start_detect),
      .i_i2c_master_stop_detect        (i_i2c_master_stop_detect),
      .i_i2c_master_falling_scl_detect (i_i2c_master_falling_scl_detect),
      .o_rxfifo_wren                   (o_rxfifo_wren),
      .o_txfifo_rden                   (o_txfifo_rden),
      .i_txfifo_rddata                 (i_txfifo_rddata),
      .o_start_gen_en                  (o_start_gen_en),
      .i_start_gen_ack                 (i_start_gen_ack),
      .o_stop_gen_en                   (o_stop_gen_en),
      .i_stop_gen_ack                  (i_stop_gen_ack),
      .o_tx_en                         (tx_en),
      .o_rx_en                         (rx_en),
      .o_transaction_complete          (transaction_complete),
      .i_byte_tx_done                  (byte_tx_done),
      .i_byte_tx_err                   (byte_tx_err),
      .o_tx_data                       (tx_data),
      .o_last_byte                     (last_byte),
      .i_byte_rx_done                  (byte_rx_done)
   );

   i2c_master_byte_tx_fsm byte_tx_fsm(
      .i_sys_clk                       (i_sys_clk),
      .i_sys_rst                       (i_sys_rst),
      .i_ack_mode                      (ack_mode),
      .i_tx_data                       (tx_data),
      .i_tx_en                         (tx_en),
      .i_transaction_complete          (transaction_complete),
      .i_i2c_master_falling_scl_detect (i_i2c_master_falling_scl_detect),
      .i_i2c_bus_scl                   (i_i2c_bus_scl),
      .i_i2c_bus_sda                   (i_i2c_bus_sda),
      .o_byte_tx_done                  (byte_tx_done),
      .o_byte_tx_err                   (byte_tx_err),
      .o_sda_disable                   (sda_disable),
      .o_byte_tx_sda                   (byte_tx_sda)
   );

   i2c_master_byte_rx_fsm byte_rx_fsm(
      .i_sys_clk                       (i_sys_clk),
      .i_sys_rst                       (i_sys_rst),
      .i_ack_mode                      (i_ack_mode),
      .o_rx_data                       (o_rxfifo_wrdata),
      .i_rx_en                         (rx_en),
      .i_last_byte                     (last_byte),
      .i_transaction_complete          (transaction_complete),
      .i_i2c_master_falling_scl_detect (i_i2c_master_falling_scl_detect),
      .i_i2c_bus_scl                   (i_i2c_bus_scl),
      .i_i2c_bus_sda                   (i_i2c_bus_sda),
      .o_byte_rx_done                  (byte_rx_done),
      .o_sda_enable                    (sda_enable),
      .o_rx_ack_sda                    (rx_ack_sda)
   );
  
   // I2C rx acknowledge and tx data are combined.
   assign o_i2c_txdata_sda = rx_ack_sda && byte_tx_sda;
   assign o_i2c_sda_en     = (i2c_sda_en_i && ~sda_disable) || sda_enable;
   assign tx_err           = (rw_mode == 1'b0) && byte_tx_err;
   assign rx_err           = (rw_mode == 1'b1) && byte_tx_err;

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        txintr_en <= 1'b0;
        rxintr_en <= 1'b0;
     end else begin
	if (config_latch_en) begin
           txintr_en <= i_config_reg[3];
           rxintr_en <= i_config_reg[2];
        end
     end
   end
    
   always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        abort_reg1     <= 1'b0;
        start_reg1     <= 1'b0;
        intr_clr_reg   <= 1'b0;
     end else begin
        abort_reg1     <= i_config_reg[4];
        intr_clr_reg   <= i_config_reg[1];
        start_reg1     <= i_config_reg[0];
     end
   end

  // Synchronizers
   always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        start_reg2       <= 1'b0;
        abort_reg2       <= 1'b0;
        intr_clr_reg1    <= 1'b0;
        intr_clr_reg2    <= 1'b0;
   end else begin
        start_reg2       <= start_reg1;
        abort_reg2       <= abort_reg1;
        intr_clr_reg1    <= intr_clr_reg;
        intr_clr_reg2    <= intr_clr_reg1;
     end
   end

  // Synchronized start signal
  assign start_reg = start_reg2;
  assign abort_reg = abort_reg2; 
  assign intr_clr_pulse = intr_clr_reg1 & ~intr_clr_reg2;
 
  ////////////////////////////////////////////////////////////////
  // TX_DONE, RX_DONE, TX_ERR, RX_ERR
  // -- These interrupt status are only cleared by interrupt clear signal
  ////////////////////////////////////////////////////////////////   

  // delay register for edge detect
  always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        tx_done_d1     <= 1'b0;
        rx_done_d1     <= 1'b0;
        tx_err_d1      <= 1'b0;
        rx_err_d1      <= 1'b0;
        abort_ack_d1   <= 1'b0;
        arbtr_lost_d1  <= 1'b0;
        scl_timeout_d1 <= 1'b0;
     end else begin
        tx_done_d1     <= tx_done;
        rx_done_d1     <= rx_done;
        tx_err_d1      <= tx_err;
        rx_err_d1      <= rx_err;
        abort_ack_d1   <= abort_ack;
        arbtr_lost_d1  <= i_arbtr_lost;
        scl_timeout_d1 <= i_scl_timeout;
     end
  end
  
   always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        tx_done_reg  <= 1'b0;
     end else begin
	if(intr_clr_pulse) begin
           tx_done_reg  <= 1'b0;
        end else if(tx_done & ~tx_done_d1) begin // rise edge
           tx_done_reg  <= 1'b1;
        end
     end
  end

  always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        rx_done_reg  <= 1'b0;
     end else begin
	if(intr_clr_pulse) begin
           rx_done_reg  <= 1'b0;
        end else if(rx_done & ~rx_done_d1) begin // rise edge
           rx_done_reg  <= 1'b1;
        end
     end
  end

  always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        tx_err_reg  <= 1'b0;
     end else begin
	if(intr_clr_pulse) begin
           tx_err_reg  <= 1'b0;
        end else if(tx_err & ~tx_err_d1) begin // rise edge
           tx_err_reg  <= 1'b1;
        end
     end
  end

  always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        rx_err_reg  <= 1'b0;
     end else begin
	if(intr_clr_pulse) begin
           rx_err_reg  <= 1'b0;
        end else if(rx_err & ~rx_err_d1) begin // rise edge
           rx_err_reg  <= 1'b1;
        end
     end
  end

  always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        abort_ack_reg  <= 1'b0;
     end else begin
	if(intr_clr_pulse) begin
           abort_ack_reg  <= 1'b0;
        end else if(abort_ack & ~abort_ack_d1) begin // rise edge
           abort_ack_reg  <= 1'b1;
        end
     end
  end

  always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        arbtr_lost_reg <= 1'b0;
     end else begin
	if(intr_clr_pulse) begin
           arbtr_lost_reg <= 1'b0;
        end else if(i_arbtr_lost & ~arbtr_lost_d1) begin // rise edge
           arbtr_lost_reg <= 1'b1;
        end
     end
  end

  always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        scl_timeout_reg <= 1'b0;
     end else begin
	if(intr_clr_pulse) begin
           scl_timeout_reg <= 1'b0;
        end else if(i_scl_timeout & ~scl_timeout_d1) begin // rise edge
           scl_timeout_reg <= 1'b1;
        end
     end
  end  
    
  // CMD Status register
  assign o_cmd_status_reg = {
                             i2c_busy,
                             tx_done_reg,
                             rx_done_reg,
                             tx_err_reg,
                             rx_err_reg,
                             abort_ack_reg,
                             arbtr_lost_reg,
			     scl_timeout_reg
                           };
  
                            
   // Slave address, Byte Count, and SCL clock divide
  always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        slave_addr     <= 10'b0;
        byte_cnt       <= 8'b0;
     end else begin
	if (config_latch_en) begin
           slave_addr     <= {2'b0, i_slave_addr_reg, 1'b0};
           byte_cnt       <= i_byte_cnt_reg;
        end
     end
  end

  // No need to sync clock divide
  assign o_scl_divcnt = {i_mode_reg[2:0], i_clk_div_lsb};

  //assign slave_changed = 1'b1;
  // Did slave address changed from last time?
  always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        slave_changed <= 1'b0;
     end else begin
        slave_changed <= ~(slave_addr[7:1] == i_slave_addr_reg);
     end
  end 

   always @(posedge i_sys_clk or posedge i_sys_rst) begin
     if(i_sys_rst) begin
        o_bps_mode <= 2'b00;
        adr_mode <= 1'b0;
        ack_mode <= 1'b0;
        rw_mode  <= 1'b0;
     end else begin
	if(config_latch_en) begin
           o_bps_mode <= i_mode_reg[7:6];
           adr_mode   <= i_mode_reg[5];
           ack_mode   <= i_mode_reg[4];
           rw_mode    <= i_mode_reg[3];
        end
     end
  end

  ////////////////////////////////////////////////////////////////
  // Interrupt Logic
  ////////////////////////////////////////////////////////////////
  wire int_rst;   // faster interrupt clear

  assign int_rst = i_sys_rst || intr_clr_pulse || intr_clr_reg ||
                   i_config_reg[1] || intr_clr_reg1 || intr_clr_reg2;

  always @(posedge i_sys_clk or posedge int_rst) begin
     if(int_rst) begin
        o_int_out <= 1'b0;
     end else begin
        if(txintr_en || rxintr_en) begin 
            if((((tx_done_reg) && ~i2c_busy)|| tx_err_reg)||
              (((rx_done_reg && ~i2c_busy) || rx_err_reg))) 
            begin
                o_int_out <= 1'b1;
            end
        end   
        if  (abort_ack_reg || arbtr_lost_reg ||	scl_timeout_reg) begin
            o_int_out <= 1'b1;
        end     
     end
  end  

endmodule
