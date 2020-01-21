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
`define TOUCHSCREEN_ADDR 		//comment this line and 
// `define misc 		 		//uncomment this line to check the faulty error condition of a slave with no ack

module i2c_master_controller_tb;
	
    // System clock speed
    parameter [15:0] PERIOD           = 31.25; // 32 MHz Clock
									//52.08;  // 19.2 MHz clock

    // I2C slave addresses
    parameter  [6:0] CAM_ADDR         = 7'b001_0000;
    parameter  [6:0] TOUCHSCREEN_ADDR = 7'b001_0000;
    parameter  [6:0] AMB_ADDR         = 7'b010_0000;
    parameter  [6:0] FUEL_ADDR        = 7'b010_0000;
    parameter  [6:0] MISC_ADDR        = 7'b010_0000;
    parameter  [6:0] DUMMY_ADDR       = 7'b011_0000;
    
    //I2C Master Configuration signals   
    reg [6:0] slave_addr_reg;
    reg [7:0] byte_cnt_reg;
    reg [7:0] clk_div_lsb;
    reg [5:0] config_reg;
    reg [7:0] mode_reg;
    reg [7:0] transmit_data;
    wire       write;
    wire       read;
    wire [7:0] receive_data;
    wire [7:0] cmd_status_reg;
    wire       start_ack;
	wire [7:0] sr;
	
    
    // Touchscreen I2C
    tri1      touch_scl;
    tri1      touch_sda;
    tri1      touch_int_n;
   
    // Misc
    reg       rst_n;
    reg       clk;

    // Register bit definitions
    parameter [1:0] STANDARD_MODE = 2'b00;
    parameter [1:0] FAST_MODE     = 2'b01;


    /////////////////////////////////////////////////////////
    // SiliconBlue Bridge (device under test)
    /////////////////////////////////////////////////////////
	
    i2c_master_controller_top dut(
                              .io_scl          (touch_scl),
                              .io_sda          (touch_sda),
                              .o_int_n        (touch_int_n),
        
                              .i_slave_addr_reg (slave_addr_reg),
                              .i_byte_cnt_reg   (byte_cnt_reg),
                              .i_clk_div_lsb    (clk_div_lsb),
                              .i_config_reg     (config_reg),
                              .i_mode_reg       (mode_reg),  
                              .o_cmd_status_reg (cmd_status_reg),
                              .o_start_ack      (start_ack),           
                              .i_transmit_data  (transmit_data),
                              .o_transmit_data_request (write), 
                              .o_received_data_valid     (read),
                              .o_receive_data   (receive_data),                      
        
                              .i_rst_n         (rst_n),
                              .i_clk           (clk)
                              );
    /////////////////////////////////////////////////////////
    // I2C Bus #0 - Touchscreen and misc
    /////////////////////////////////////////////////////////
	
	`ifdef TOUCHSCREEN_ADDR
    i2c_slave_model touchscreen(
                                .scl    (touch_scl),
                                .sda    (touch_sda),
                                .no_ack (1'b0),
                                .atn    (),
								.transmit_data(transmit_data),
								.receive_data(receive_data),
								.read_valid (read));
    defparam touchscreen.I2C_ADR = TOUCHSCREEN_ADDR;

	`elsif misc
    i2c_slave_model misc(   // This slave will not data ack
                            .scl    (touch_scl),
                            .sda    (touch_sda),
                            .no_ack (1'b1),
                            .atn    (),
							.transmit_data(transmit_data),
							.receive_data(receive_data),
                            .read_valid (read));
    defparam misc.I2C_ADR = MISC_ADDR;

    `endif
	
	
    /////////////////////////////////////////////////////////
    // Setup testbench environment
    /////////////////////////////////////////////////////////

    // Generate clock
    initial begin
        clk = 1'b0;
        forever #(PERIOD/2) clk = ~clk;
    end

    // Watchdog timer
    initial begin 	
		slave_addr_reg = 7'b0;
        byte_cnt_reg = 8'b0;
        clk_div_lsb = 8'b0;
        config_reg = 6'b0;
        mode_reg = 8'b0;
        transmit_data = 8'b0;
        rst_n = 1'b0;
        #100 rst_n = 1'b1;  // release reset
		#5000000 $stop;   // watchdog
    end

    integer i;
    /////////////////////////////////////////////////////////
    // Main test code
    /////////////////////////////////////////////////////////
    initial begin
        @(posedge rst_n);


        //Configure for Double byte write operation + Interrupt Clear
        $display($time,"ns Writing to slave");
		$display($time,"ns Starting Double byte Write operation") ;
		slave_addr_reg = TOUCHSCREEN_ADDR;
		byte_cnt_reg   = 8'h02;
        clk_div_lsb    = 8'h30;
        mode_reg       = 8'b01010000;
        config_reg     = 6'b001000;
        transmit_data  = 8'h00;
        #50
        //start transmission
        config_reg     = 6'b001001;
        @(posedge(start_ack));
        #50
        //stop trasmission @start acknowledge
        config_reg     = 6'b001000;
        #500
        //Loading transmit data @ posedge of o_transmit_data_request    
        @(posedge(write));
        transmit_data  = 8'h75;
        @(posedge(write));
        transmit_data  = 8'h53;
                
        // Wait for and Clear Interrupt
        @(negedge(touch_int_n));
        config_reg     = 6'b000010;
        transmit_data  = 8'h00;
		$display($time,"ns Interrupt Clear");
        #550000



        //Configure for single byte read operation + Interrupt Clear
        $display($time,"ns Reading from slave");   
		$display($time,"ns Starting Single Byte Read operation");
        slave_addr_reg = TOUCHSCREEN_ADDR;
        byte_cnt_reg   = 8'h01;
        clk_div_lsb    = 8'h30;
        mode_reg       = 8'b01011000;
        config_reg     = 6'b000100;
        #500
        //start transmission
        config_reg     = 6'b000101;
        @(posedge(start_ack));
        //Clear start bit
        config_reg     = 6'b000000;

        // Wait for and Clear Interrupt
        @(negedge(touch_int_n));
        config_reg     = 6'b000010;
		$display($time,"ns Interrupt Clear");
        #550000


        //Configure for single byte write operation + Repeated_start abort + Interrupt Clear
		$display($time,"ns Writing to slave");		
        $display($time,"ns Starting Single Byte Write operation");
		slave_addr_reg = TOUCHSCREEN_ADDR;
        byte_cnt_reg   = 8'h01;
        clk_div_lsb    = 8'h30;
        mode_reg       = 8'b01010000;
        config_reg     = 6'b001000;
        transmit_data  = 8'h88;
        #50
        //start transmission
        config_reg     = 6'b001001;
        @(posedge(start_ack));
        @(posedge(start_ack));
        //Issue Abort Op
        config_reg     = 6'b010000;

        // Wait for and Clear Interrupt
        @(negedge(touch_int_n));
        config_reg     = 6'b000010;
		$display($time,"ns Interrupt Clear");
        #550000
        
        //Configure for single byte read operation with repeated start
        $display($time,"ns Reading from slave");   
		$display($time,"ns Starting Single Byte Read operation with Repeat start");
        slave_addr_reg = TOUCHSCREEN_ADDR;
        byte_cnt_reg   = 8'h01;
        clk_div_lsb    = 8'h30;
        mode_reg       = 8'b01011000;
        config_reg     = 6'b000100;
        #500
        //start transmission
        config_reg     = 6'b000101;
        @(posedge(start_ack));
        @(posedge(start_ack));
        config_reg     = 6'b000000;

        @(negedge(touch_int_n));
        config_reg     = 6'b000010;
        #550
        config_reg     = 6'b000000;
        # 500000


        //Configuring for Soft Reset
        config_reg     = 6'b100000;
        #500
        config_reg     = 6'b000000;
        #550000

        
        //Configure for Double byte write operation + Repeated Start + Interrupt Clear
        $display($time,"ns Writing to slave");   
		$display($time,"ns Starting Double byte Write operation with Repeat Start");
        slave_addr_reg = TOUCHSCREEN_ADDR;
        byte_cnt_reg   = 8'h02;
        clk_div_lsb    = 8'h30;
        mode_reg       = 8'b01010000;
        config_reg     = 6'b001000;
        transmit_data  = 8'h88;
        #50
        //start transmission
        config_reg     = 6'b001001;
        @(posedge(start_ack));
        @(posedge(start_ack));
        #50
        //stop trasmission @start acknowledge
        config_reg     = 6'b001000;
        #500

        // Wait for and Clear Interrupt
        @(negedge(touch_int_n));
        config_reg     = 6'b000010;
		$display($time,"ns Interrupt Clear");
        #550000 

         //Configure for Double byte write operation + Repeated Start - double byte read operation + Interrupt Clear
        $display($time,"ns Writing to slave");
		$display($time,"ns Starting Double Byte Write operation with Repeat start & Double byte Read operation");
        slave_addr_reg = TOUCHSCREEN_ADDR;
        byte_cnt_reg   = 8'h02;
        clk_div_lsb    = 8'h30;
        mode_reg       = 8'b01010000;
        config_reg     = 6'b001000;
        transmit_data  = 8'h31;
        #50
        //start transmission
        config_reg     = 6'b001001;
        @(posedge(start_ack));
        mode_reg       = 8'b01011000;
        @(posedge(start_ack));
        #50
        //stop trasmission @start acknowledge
        config_reg     = 6'b001000;
        #500

        // Wait for and Clear Interrupt
        @(negedge(touch_int_n));
        config_reg     = 6'b000010;
		$display($time,"ns Interrupt Clear");
        #550000    
            
        //Configure for Double byte write operation + Interrupt Clear
        $display($time,"ns Writing to slave");  
		$display($time,"ns Starting Double byte write operation");
        slave_addr_reg = TOUCHSCREEN_ADDR;
        byte_cnt_reg   = 8'h02;
        clk_div_lsb    = 8'h30;
        mode_reg       = 8'b01010000;
        config_reg     = 6'b001000;
        transmit_data  = 8'h75;
        #50
        //start transmission
        config_reg     = 6'b001001;
        @(posedge(start_ack));
        #50
        //stop trasmission @start acknowledge
        config_reg     = 6'b001000;
        #500

        // Wait for and Clear Interrupt
        @(negedge(touch_int_n));
        config_reg     = 6'b000010;
		$display($time,"ns Interrupt Clear");
     //   #550000

        
        //Configure Address to faulty slave for tx err check
    /*    $display($time,"ns Writing to faulty slave to check Tx Error");
        slave_addr_reg = MISC_ADDR;
		byte_cnt_reg   = 8'h02;
        clk_div_lsb    = 8'h30;
        mode_reg       = 8'b01000000;
        config_reg     = 6'b001000;
        transmit_data  = 8'h75;
        #50
        //start transmission
        config_reg     = 6'b001001;
        //Check for transmit err
       
        @(posedge(cmd_status_reg[4]));
        config_reg     = 6'b000010; */
      //  #550000
            
      #5000  $display($time,"ns Testcases done");
        //Simulation Break
//        $stop;

        
    end

endmodule
  
        
 