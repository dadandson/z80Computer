// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Sun Jan 19 13:29:14 2020
//
// Verilog Description of module i2c_master_controller_top
//

module i2c_master_controller_top (io_scl, io_sda, o_int_n, i_slave_addr_reg, 
            i_byte_cnt_reg, i_clk_div_lsb, i_config_reg, i_mode_reg, 
            o_cmd_status_reg, o_start_ack, i_transmit_data, o_transmit_data_request, 
            o_received_data_valid, o_receive_data, i_rst_n, i_clk) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(39[8:33])
    inout io_scl /* synthesis black_box_pad_pin=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(40[58:64])
    inout io_sda /* synthesis black_box_pad_pin=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(41[58:64])
    output o_int_n;   // ../../../source/verilog/i2c_master_controller_top.v(42[58:65])
    input [6:0]i_slave_addr_reg;   // ../../../source/verilog/i2c_master_controller_top.v(44[58:74])
    input [7:0]i_byte_cnt_reg;   // ../../../source/verilog/i2c_master_controller_top.v(45[58:72])
    input [7:0]i_clk_div_lsb;   // ../../../source/verilog/i2c_master_controller_top.v(46[58:71])
    input [5:0]i_config_reg;   // ../../../source/verilog/i2c_master_controller_top.v(47[58:70])
    input [7:0]i_mode_reg;   // ../../../source/verilog/i2c_master_controller_top.v(48[58:68])
    output [7:0]o_cmd_status_reg;   // ../../../source/verilog/i2c_master_controller_top.v(49[58:74])
    output o_start_ack;   // ../../../source/verilog/i2c_master_controller_top.v(50[58:69])
    input [7:0]i_transmit_data;   // ../../../source/verilog/i2c_master_controller_top.v(52[58:73])
    output o_transmit_data_request;   // ../../../source/verilog/i2c_master_controller_top.v(53[58:81])
    output o_received_data_valid;   // ../../../source/verilog/i2c_master_controller_top.v(54[58:79])
    output [7:0]o_receive_data;   // ../../../source/verilog/i2c_master_controller_top.v(55[58:72])
    input i_rst_n;   // ../../../source/verilog/i2c_master_controller_top.v(57[58:65])
    input i_clk;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    
    wire GND_net, o_int_n_c, i_slave_addr_reg_c_6, i_slave_addr_reg_c_5, 
        i_slave_addr_reg_c_4, i_slave_addr_reg_c_3, i_slave_addr_reg_c_2, 
        i_slave_addr_reg_c_1, i_slave_addr_reg_c_0, i_byte_cnt_reg_c_7, 
        i_byte_cnt_reg_c_6, i_byte_cnt_reg_c_5, i_byte_cnt_reg_c_4, i_byte_cnt_reg_c_3, 
        i_byte_cnt_reg_c_2, i_byte_cnt_reg_c_1, i_byte_cnt_reg_c_0, i_clk_div_lsb_c_7, 
        i_clk_div_lsb_c_6, i_clk_div_lsb_c_5, i_clk_div_lsb_c_4, i_clk_div_lsb_c_3, 
        i_clk_div_lsb_c_2, i_clk_div_lsb_c_1, i_config_reg_c_5, i_config_reg_c_4, 
        i_config_reg_c_3, i_config_reg_c_2, i_config_reg_c_1, i_config_reg_c_0, 
        i_mode_reg_c_7, i_mode_reg_c_6, i_mode_reg_c_5, i_mode_reg_c_3, 
        i_mode_reg_c_1, i_mode_reg_c_0, o_cmd_status_reg_c_7, o_cmd_status_reg_c_6, 
        o_cmd_status_reg_c_5, o_cmd_status_reg_c_4, o_cmd_status_reg_c_3, 
        o_cmd_status_reg_c_2, o_start_ack_c, i_transmit_data_c_7, i_transmit_data_c_6, 
        i_transmit_data_c_5, i_transmit_data_c_4, i_transmit_data_c_3, 
        i_transmit_data_c_2, i_transmit_data_c_1, i_transmit_data_c_0, 
        o_transmit_data_request_c, o_received_data_valid_c, o_receive_data_c_7, 
        o_receive_data_c_6, o_receive_data_c_5, o_receive_data_c_4, o_receive_data_c_3, 
        o_receive_data_c_2, o_receive_data_c_1, o_receive_data_c_0, i_rst_n_c, 
        scl_in, scl_oe, sda_in, VCC_net, int_out, stop_gen_en, i2c_master_falling_scl_detect, 
        i2c_master_stop_detect, sda_oe_n_N_3, in_d2, in_d3, out_n, 
        in_d2_adj_630, in_d3_adj_631, out_n_adj_632, n1101, byte_tx_err, 
        transaction_complete, tx_done, rx_done, abort_ack, tx_done_d1, 
        rx_done_d1, tx_err_d1, rx_err_d1, abort_ack_d1, intr_clr_pulse, 
        config_latch_en;
    wire [9:0]slave_addr;   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(130[15:25])
    
    wire rw_mode, rx_err;
    wire [1:0]n3117;   // ../../../source/verilog/i2c_master_falling_scl_detect.v(53[15:20])
    
    wire n2909, n2867, n960, count_en_N_74, n2817, n2828, state;
    wire [1:0]n3120;   // ../../../source/verilog/i2c_master_stop_gen.v(63[16:21])
    
    wire i2cbus_busy_i, rx_en, o_enable_scl_N_406, i2cbus_busy_i_N_475, 
        o_enable_scl_N_409, o_enable_scl_N_410, o_byte_tx_done_N_537, 
        n1221, n1220, o_rx_data_7__N_545, o_rx_data_6__N_548, o_rx_data_5__N_551, 
        o_rx_data_4__N_554, o_rx_data_3__N_557, n1219, o_rx_data_2__N_560, 
        n1218, o_rx_data_1__N_563, o_rx_data_0__N_566, o_byte_rx_done_N_608, 
        n1217, n1216, n1215, n1214, n1213, n1212, n1211, n1210, 
        n1209, n1208, n1207, n1206, n1205, n1204, n1201, n990, 
        n2905, n2875, n306, n307, n308, n309, n310, n311, n312, 
        n313, n2873, n2897, n1196, n4, n1195, n1194, n2885, 
        n1191, n1190, n1189, n2913, n1186, n2895, n10, n2871;
    
    VCC i5 (.Y(VCC_net));
    SB_IO sda_io (.PACKAGE_PIN(io_sda), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(sda_oe_n_N_3), .D_OUT_1(GND_net), 
          .D_OUT_0(GND_net), .D_IN_0(sda_in)) /* synthesis syn_instantiated=1 */ ;   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam sda_io.PIN_TYPE = 6'b101001;
    defparam sda_io.PULLUP = 1'b0;
    defparam sda_io.NEG_TRIGGER = 1'b0;
    defparam sda_io.IO_STANDARD = "SB_LVCMOS";
    SB_IO scl_io (.PACKAGE_PIN(io_scl), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(scl_oe), .D_OUT_1(GND_net), 
          .D_OUT_0(GND_net), .D_IN_0(scl_in)) /* synthesis syn_instantiated=1 */ ;   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam scl_io.PIN_TYPE = 6'b101001;
    defparam scl_io.PULLUP = 1'b0;
    defparam scl_io.NEG_TRIGGER = 1'b0;
    defparam scl_io.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i1168_3_lut (.I0(o_rx_data_5__N_551), .I1(o_rx_data_6__N_548), 
            .I2(i2c_master_falling_scl_detect), .I3(GND_net), .O(n1219));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    defparam i1168_3_lut.LUT_INIT = 16'hcaca;
    SB_IO i_config_reg_pad_5 (.PACKAGE_PIN(i_config_reg[5]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_config_reg_c_5));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_config_reg_pad_5.PIN_TYPE = 6'b000001;
    defparam i_config_reg_pad_5.PULLUP = 1'b0;
    defparam i_config_reg_pad_5.NEG_TRIGGER = 1'b0;
    defparam i_config_reg_pad_5.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_config_reg_pad_4 (.PACKAGE_PIN(i_config_reg[4]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_config_reg_c_4));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_config_reg_pad_4.PIN_TYPE = 6'b000001;
    defparam i_config_reg_pad_4.PULLUP = 1'b0;
    defparam i_config_reg_pad_4.NEG_TRIGGER = 1'b0;
    defparam i_config_reg_pad_4.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_byte_cnt_reg_pad_2 (.PACKAGE_PIN(i_byte_cnt_reg[2]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_byte_cnt_reg_c_2));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_byte_cnt_reg_pad_2.PIN_TYPE = 6'b000001;
    defparam i_byte_cnt_reg_pad_2.PULLUP = 1'b0;
    defparam i_byte_cnt_reg_pad_2.NEG_TRIGGER = 1'b0;
    defparam i_byte_cnt_reg_pad_2.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i1169_3_lut (.I0(o_rx_data_6__N_548), .I1(o_rx_data_7__N_545), 
            .I2(i2c_master_falling_scl_detect), .I3(GND_net), .O(n1220));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    defparam i1169_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1170_3_lut (.I0(o_byte_rx_done_N_608), .I1(o_rx_data_0__N_566), 
            .I2(i2c_master_falling_scl_detect), .I3(GND_net), .O(n1221));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    defparam i1170_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18_4_lut_4_lut (.I0(n3120[0]), .I1(out_n), .I2(stop_gen_en), 
            .I3(n3120[1]), .O(n2867));   // ../../../source/verilog/i2c_master_stop_gen.v(87[16] 95[10])
    defparam i18_4_lut_4_lut.LUT_INIT = 16'hee50;
    SB_IO i_clk_div_lsb_pad_7 (.PACKAGE_PIN(i_clk_div_lsb[7]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_clk_div_lsb_c_7));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_clk_div_lsb_pad_7.PIN_TYPE = 6'b000001;
    defparam i_clk_div_lsb_pad_7.PULLUP = 1'b0;
    defparam i_clk_div_lsb_pad_7.NEG_TRIGGER = 1'b0;
    defparam i_clk_div_lsb_pad_7.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_clk_div_lsb_pad_6 (.PACKAGE_PIN(i_clk_div_lsb[6]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_clk_div_lsb_c_6));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_clk_div_lsb_pad_6.PIN_TYPE = 6'b000001;
    defparam i_clk_div_lsb_pad_6.PULLUP = 1'b0;
    defparam i_clk_div_lsb_pad_6.NEG_TRIGGER = 1'b0;
    defparam i_clk_div_lsb_pad_6.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_clk_div_lsb_pad_3 (.PACKAGE_PIN(i_clk_div_lsb[3]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_clk_div_lsb_c_3));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_clk_div_lsb_pad_3.PIN_TYPE = 6'b000001;
    defparam i_clk_div_lsb_pad_3.PULLUP = 1'b0;
    defparam i_clk_div_lsb_pad_3.NEG_TRIGGER = 1'b0;
    defparam i_clk_div_lsb_pad_3.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_clk_div_lsb_pad_4 (.PACKAGE_PIN(i_clk_div_lsb[4]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_clk_div_lsb_c_4));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_clk_div_lsb_pad_4.PIN_TYPE = 6'b000001;
    defparam i_clk_div_lsb_pad_4.PULLUP = 1'b0;
    defparam i_clk_div_lsb_pad_4.NEG_TRIGGER = 1'b0;
    defparam i_clk_div_lsb_pad_4.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_clk_div_lsb_pad_5 (.PACKAGE_PIN(i_clk_div_lsb[5]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_clk_div_lsb_c_5));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_clk_div_lsb_pad_5.PIN_TYPE = 6'b000001;
    defparam i_clk_div_lsb_pad_5.PULLUP = 1'b0;
    defparam i_clk_div_lsb_pad_5.NEG_TRIGGER = 1'b0;
    defparam i_clk_div_lsb_pad_5.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_receive_data_pad_3 (.PACKAGE_PIN(o_receive_data[3]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_receive_data_c_3)) /* synthesis IO_FF_OUT=TRUE */ ;   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_receive_data_pad_3.PIN_TYPE = 6'b011001;
    defparam o_receive_data_pad_3.PULLUP = 1'b0;
    defparam o_receive_data_pad_3.NEG_TRIGGER = 1'b0;
    defparam o_receive_data_pad_3.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_clk_div_lsb_pad_1 (.PACKAGE_PIN(i_clk_div_lsb[1]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_clk_div_lsb_c_1));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_clk_div_lsb_pad_1.PIN_TYPE = 6'b000001;
    defparam i_clk_div_lsb_pad_1.PULLUP = 1'b0;
    defparam i_clk_div_lsb_pad_1.NEG_TRIGGER = 1'b0;
    defparam i_clk_div_lsb_pad_1.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_byte_cnt_reg_pad_0 (.PACKAGE_PIN(i_byte_cnt_reg[0]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_byte_cnt_reg_c_0));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_byte_cnt_reg_pad_0.PIN_TYPE = 6'b000001;
    defparam i_byte_cnt_reg_pad_0.PULLUP = 1'b0;
    defparam i_byte_cnt_reg_pad_0.NEG_TRIGGER = 1'b0;
    defparam i_byte_cnt_reg_pad_0.IO_STANDARD = "SB_LVCMOS";
    SB_GB_IO i_clk_pad (.PACKAGE_PIN(i_clk), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(i_clk_c));   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    defparam i_clk_pad.PIN_TYPE = 6'b000001;
    defparam i_clk_pad.PULLUP = 1'b0;
    defparam i_clk_pad.NEG_TRIGGER = 1'b0;
    defparam i_clk_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_rst_n_pad (.PACKAGE_PIN(i_rst_n), .OUTPUT_ENABLE(VCC_net), .D_IN_0(i_rst_n_c));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_rst_n_pad.PIN_TYPE = 6'b000001;
    defparam i_rst_n_pad.PULLUP = 1'b0;
    defparam i_rst_n_pad.NEG_TRIGGER = 1'b0;
    defparam i_rst_n_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_transmit_data_pad_0 (.PACKAGE_PIN(i_transmit_data[0]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_transmit_data_c_0));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_transmit_data_pad_0.PIN_TYPE = 6'b000001;
    defparam i_transmit_data_pad_0.PULLUP = 1'b0;
    defparam i_transmit_data_pad_0.NEG_TRIGGER = 1'b0;
    defparam i_transmit_data_pad_0.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_transmit_data_pad_1 (.PACKAGE_PIN(i_transmit_data[1]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_transmit_data_c_1));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_transmit_data_pad_1.PIN_TYPE = 6'b000001;
    defparam i_transmit_data_pad_1.PULLUP = 1'b0;
    defparam i_transmit_data_pad_1.NEG_TRIGGER = 1'b0;
    defparam i_transmit_data_pad_1.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_transmit_data_pad_2 (.PACKAGE_PIN(i_transmit_data[2]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_transmit_data_c_2));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_transmit_data_pad_2.PIN_TYPE = 6'b000001;
    defparam i_transmit_data_pad_2.PULLUP = 1'b0;
    defparam i_transmit_data_pad_2.NEG_TRIGGER = 1'b0;
    defparam i_transmit_data_pad_2.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_transmit_data_pad_3 (.PACKAGE_PIN(i_transmit_data[3]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_transmit_data_c_3));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_transmit_data_pad_3.PIN_TYPE = 6'b000001;
    defparam i_transmit_data_pad_3.PULLUP = 1'b0;
    defparam i_transmit_data_pad_3.NEG_TRIGGER = 1'b0;
    defparam i_transmit_data_pad_3.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_transmit_data_pad_4 (.PACKAGE_PIN(i_transmit_data[4]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_transmit_data_c_4));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_transmit_data_pad_4.PIN_TYPE = 6'b000001;
    defparam i_transmit_data_pad_4.PULLUP = 1'b0;
    defparam i_transmit_data_pad_4.NEG_TRIGGER = 1'b0;
    defparam i_transmit_data_pad_4.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_transmit_data_pad_5 (.PACKAGE_PIN(i_transmit_data[5]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_transmit_data_c_5));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_transmit_data_pad_5.PIN_TYPE = 6'b000001;
    defparam i_transmit_data_pad_5.PULLUP = 1'b0;
    defparam i_transmit_data_pad_5.NEG_TRIGGER = 1'b0;
    defparam i_transmit_data_pad_5.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_transmit_data_pad_6 (.PACKAGE_PIN(i_transmit_data[6]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_transmit_data_c_6));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_transmit_data_pad_6.PIN_TYPE = 6'b000001;
    defparam i_transmit_data_pad_6.PULLUP = 1'b0;
    defparam i_transmit_data_pad_6.NEG_TRIGGER = 1'b0;
    defparam i_transmit_data_pad_6.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_transmit_data_pad_7 (.PACKAGE_PIN(i_transmit_data[7]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_transmit_data_c_7));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_transmit_data_pad_7.PIN_TYPE = 6'b000001;
    defparam i_transmit_data_pad_7.PULLUP = 1'b0;
    defparam i_transmit_data_pad_7.NEG_TRIGGER = 1'b0;
    defparam i_transmit_data_pad_7.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_clk_div_lsb_pad_2 (.PACKAGE_PIN(i_clk_div_lsb[2]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_clk_div_lsb_c_2));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_clk_div_lsb_pad_2.PIN_TYPE = 6'b000001;
    defparam i_clk_div_lsb_pad_2.PULLUP = 1'b0;
    defparam i_clk_div_lsb_pad_2.NEG_TRIGGER = 1'b0;
    defparam i_clk_div_lsb_pad_2.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_mode_reg_pad_0 (.PACKAGE_PIN(i_mode_reg[0]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_mode_reg_c_0));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_mode_reg_pad_0.PIN_TYPE = 6'b000001;
    defparam i_mode_reg_pad_0.PULLUP = 1'b0;
    defparam i_mode_reg_pad_0.NEG_TRIGGER = 1'b0;
    defparam i_mode_reg_pad_0.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_mode_reg_pad_1 (.PACKAGE_PIN(i_mode_reg[1]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_mode_reg_c_1));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_mode_reg_pad_1.PIN_TYPE = 6'b000001;
    defparam i_mode_reg_pad_1.PULLUP = 1'b0;
    defparam i_mode_reg_pad_1.NEG_TRIGGER = 1'b0;
    defparam i_mode_reg_pad_1.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_byte_cnt_reg_pad_1 (.PACKAGE_PIN(i_byte_cnt_reg[1]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_byte_cnt_reg_c_1));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_byte_cnt_reg_pad_1.PIN_TYPE = 6'b000001;
    defparam i_byte_cnt_reg_pad_1.PULLUP = 1'b0;
    defparam i_byte_cnt_reg_pad_1.NEG_TRIGGER = 1'b0;
    defparam i_byte_cnt_reg_pad_1.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_receive_data_pad_2 (.PACKAGE_PIN(o_receive_data[2]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_receive_data_c_2)) /* synthesis IO_FF_OUT=TRUE */ ;   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_receive_data_pad_2.PIN_TYPE = 6'b011001;
    defparam o_receive_data_pad_2.PULLUP = 1'b0;
    defparam o_receive_data_pad_2.NEG_TRIGGER = 1'b0;
    defparam o_receive_data_pad_2.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_mode_reg_pad_3 (.PACKAGE_PIN(i_mode_reg[3]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_mode_reg_c_3));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_mode_reg_pad_3.PIN_TYPE = 6'b000001;
    defparam i_mode_reg_pad_3.PULLUP = 1'b0;
    defparam i_mode_reg_pad_3.NEG_TRIGGER = 1'b0;
    defparam i_mode_reg_pad_3.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_mode_reg_pad_5 (.PACKAGE_PIN(i_mode_reg[5]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_mode_reg_c_5));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_mode_reg_pad_5.PIN_TYPE = 6'b000001;
    defparam i_mode_reg_pad_5.PULLUP = 1'b0;
    defparam i_mode_reg_pad_5.NEG_TRIGGER = 1'b0;
    defparam i_mode_reg_pad_5.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_mode_reg_pad_6 (.PACKAGE_PIN(i_mode_reg[6]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_mode_reg_c_6));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_mode_reg_pad_6.PIN_TYPE = 6'b000001;
    defparam i_mode_reg_pad_6.PULLUP = 1'b0;
    defparam i_mode_reg_pad_6.NEG_TRIGGER = 1'b0;
    defparam i_mode_reg_pad_6.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_mode_reg_pad_7 (.PACKAGE_PIN(i_mode_reg[7]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_mode_reg_c_7));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_mode_reg_pad_7.PIN_TYPE = 6'b000001;
    defparam i_mode_reg_pad_7.PULLUP = 1'b0;
    defparam i_mode_reg_pad_7.NEG_TRIGGER = 1'b0;
    defparam i_mode_reg_pad_7.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_config_reg_pad_0 (.PACKAGE_PIN(i_config_reg[0]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_config_reg_c_0));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_config_reg_pad_0.PIN_TYPE = 6'b000001;
    defparam i_config_reg_pad_0.PULLUP = 1'b0;
    defparam i_config_reg_pad_0.NEG_TRIGGER = 1'b0;
    defparam i_config_reg_pad_0.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_config_reg_pad_1 (.PACKAGE_PIN(i_config_reg[1]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_config_reg_c_1));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_config_reg_pad_1.PIN_TYPE = 6'b000001;
    defparam i_config_reg_pad_1.PULLUP = 1'b0;
    defparam i_config_reg_pad_1.NEG_TRIGGER = 1'b0;
    defparam i_config_reg_pad_1.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_config_reg_pad_2 (.PACKAGE_PIN(i_config_reg[2]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_config_reg_c_2));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_config_reg_pad_2.PIN_TYPE = 6'b000001;
    defparam i_config_reg_pad_2.PULLUP = 1'b0;
    defparam i_config_reg_pad_2.NEG_TRIGGER = 1'b0;
    defparam i_config_reg_pad_2.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_config_reg_pad_3 (.PACKAGE_PIN(i_config_reg[3]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_config_reg_c_3));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_config_reg_pad_3.PIN_TYPE = 6'b000001;
    defparam i_config_reg_pad_3.PULLUP = 1'b0;
    defparam i_config_reg_pad_3.NEG_TRIGGER = 1'b0;
    defparam i_config_reg_pad_3.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_byte_cnt_reg_pad_3 (.PACKAGE_PIN(i_byte_cnt_reg[3]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_byte_cnt_reg_c_3));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_byte_cnt_reg_pad_3.PIN_TYPE = 6'b000001;
    defparam i_byte_cnt_reg_pad_3.PULLUP = 1'b0;
    defparam i_byte_cnt_reg_pad_3.NEG_TRIGGER = 1'b0;
    defparam i_byte_cnt_reg_pad_3.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_byte_cnt_reg_pad_4 (.PACKAGE_PIN(i_byte_cnt_reg[4]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_byte_cnt_reg_c_4));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_byte_cnt_reg_pad_4.PIN_TYPE = 6'b000001;
    defparam i_byte_cnt_reg_pad_4.PULLUP = 1'b0;
    defparam i_byte_cnt_reg_pad_4.NEG_TRIGGER = 1'b0;
    defparam i_byte_cnt_reg_pad_4.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_byte_cnt_reg_pad_5 (.PACKAGE_PIN(i_byte_cnt_reg[5]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_byte_cnt_reg_c_5));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_byte_cnt_reg_pad_5.PIN_TYPE = 6'b000001;
    defparam i_byte_cnt_reg_pad_5.PULLUP = 1'b0;
    defparam i_byte_cnt_reg_pad_5.NEG_TRIGGER = 1'b0;
    defparam i_byte_cnt_reg_pad_5.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_byte_cnt_reg_pad_6 (.PACKAGE_PIN(i_byte_cnt_reg[6]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_byte_cnt_reg_c_6));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_byte_cnt_reg_pad_6.PIN_TYPE = 6'b000001;
    defparam i_byte_cnt_reg_pad_6.PULLUP = 1'b0;
    defparam i_byte_cnt_reg_pad_6.NEG_TRIGGER = 1'b0;
    defparam i_byte_cnt_reg_pad_6.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_byte_cnt_reg_pad_7 (.PACKAGE_PIN(i_byte_cnt_reg[7]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_byte_cnt_reg_c_7));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_byte_cnt_reg_pad_7.PIN_TYPE = 6'b000001;
    defparam i_byte_cnt_reg_pad_7.PULLUP = 1'b0;
    defparam i_byte_cnt_reg_pad_7.NEG_TRIGGER = 1'b0;
    defparam i_byte_cnt_reg_pad_7.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_slave_addr_reg_pad_0 (.PACKAGE_PIN(i_slave_addr_reg[0]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_slave_addr_reg_c_0));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_slave_addr_reg_pad_0.PIN_TYPE = 6'b000001;
    defparam i_slave_addr_reg_pad_0.PULLUP = 1'b0;
    defparam i_slave_addr_reg_pad_0.NEG_TRIGGER = 1'b0;
    defparam i_slave_addr_reg_pad_0.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_slave_addr_reg_pad_1 (.PACKAGE_PIN(i_slave_addr_reg[1]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_slave_addr_reg_c_1));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_slave_addr_reg_pad_1.PIN_TYPE = 6'b000001;
    defparam i_slave_addr_reg_pad_1.PULLUP = 1'b0;
    defparam i_slave_addr_reg_pad_1.NEG_TRIGGER = 1'b0;
    defparam i_slave_addr_reg_pad_1.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_slave_addr_reg_pad_2 (.PACKAGE_PIN(i_slave_addr_reg[2]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_slave_addr_reg_c_2));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_slave_addr_reg_pad_2.PIN_TYPE = 6'b000001;
    defparam i_slave_addr_reg_pad_2.PULLUP = 1'b0;
    defparam i_slave_addr_reg_pad_2.NEG_TRIGGER = 1'b0;
    defparam i_slave_addr_reg_pad_2.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_slave_addr_reg_pad_3 (.PACKAGE_PIN(i_slave_addr_reg[3]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_slave_addr_reg_c_3));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_slave_addr_reg_pad_3.PIN_TYPE = 6'b000001;
    defparam i_slave_addr_reg_pad_3.PULLUP = 1'b0;
    defparam i_slave_addr_reg_pad_3.NEG_TRIGGER = 1'b0;
    defparam i_slave_addr_reg_pad_3.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_cmd_status_reg_pad_0 (.PACKAGE_PIN(o_cmd_status_reg[0]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(GND_net));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_cmd_status_reg_pad_0.PIN_TYPE = 6'b011001;
    defparam o_cmd_status_reg_pad_0.PULLUP = 1'b0;
    defparam o_cmd_status_reg_pad_0.NEG_TRIGGER = 1'b0;
    defparam o_cmd_status_reg_pad_0.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_slave_addr_reg_pad_6 (.PACKAGE_PIN(i_slave_addr_reg[6]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_slave_addr_reg_c_6));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_slave_addr_reg_pad_6.PIN_TYPE = 6'b000001;
    defparam i_slave_addr_reg_pad_6.PULLUP = 1'b0;
    defparam i_slave_addr_reg_pad_6.NEG_TRIGGER = 1'b0;
    defparam i_slave_addr_reg_pad_6.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i23_3_lut_4_lut (.I0(n3120[0]), .I1(out_n), .I2(n3120[1]), 
            .I3(n10), .O(n2828));   // ../../../source/verilog/i2c_master_stop_gen.v(87[16] 95[10])
    defparam i23_3_lut_4_lut.LUT_INIT = 16'h1f10;
    SB_IO i_slave_addr_reg_pad_5 (.PACKAGE_PIN(i_slave_addr_reg[5]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_slave_addr_reg_c_5));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_slave_addr_reg_pad_5.PIN_TYPE = 6'b000001;
    defparam i_slave_addr_reg_pad_5.PULLUP = 1'b0;
    defparam i_slave_addr_reg_pad_5.NEG_TRIGGER = 1'b0;
    defparam i_slave_addr_reg_pad_5.IO_STANDARD = "SB_LVCMOS";
    SB_IO i_slave_addr_reg_pad_4 (.PACKAGE_PIN(i_slave_addr_reg[4]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(i_slave_addr_reg_c_4));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i_slave_addr_reg_pad_4.PIN_TYPE = 6'b000001;
    defparam i_slave_addr_reg_pad_4.PULLUP = 1'b0;
    defparam i_slave_addr_reg_pad_4.NEG_TRIGGER = 1'b0;
    defparam i_slave_addr_reg_pad_4.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_start_ack_pad (.PACKAGE_PIN(o_start_ack), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_start_ack_c));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_start_ack_pad.PIN_TYPE = 6'b011001;
    defparam o_start_ack_pad.PULLUP = 1'b0;
    defparam o_start_ack_pad.NEG_TRIGGER = 1'b0;
    defparam o_start_ack_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_transmit_data_request_pad (.PACKAGE_PIN(o_transmit_data_request), 
          .OUTPUT_ENABLE(VCC_net), .D_OUT_0(o_transmit_data_request_c));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_transmit_data_request_pad.PIN_TYPE = 6'b011001;
    defparam o_transmit_data_request_pad.PULLUP = 1'b0;
    defparam o_transmit_data_request_pad.NEG_TRIGGER = 1'b0;
    defparam o_transmit_data_request_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_receive_data_pad_0 (.PACKAGE_PIN(o_receive_data[0]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_receive_data_c_0)) /* synthesis IO_FF_OUT=TRUE */ ;   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_receive_data_pad_0.PIN_TYPE = 6'b011001;
    defparam o_receive_data_pad_0.PULLUP = 1'b0;
    defparam o_receive_data_pad_0.NEG_TRIGGER = 1'b0;
    defparam o_receive_data_pad_0.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_receive_data_pad_1 (.PACKAGE_PIN(o_receive_data[1]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_receive_data_c_1)) /* synthesis IO_FF_OUT=TRUE */ ;   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_receive_data_pad_1.PIN_TYPE = 6'b011001;
    defparam o_receive_data_pad_1.PULLUP = 1'b0;
    defparam o_receive_data_pad_1.NEG_TRIGGER = 1'b0;
    defparam o_receive_data_pad_1.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_receive_data_pad_6 (.PACKAGE_PIN(o_receive_data[6]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_receive_data_c_6)) /* synthesis IO_FF_OUT=TRUE */ ;   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_receive_data_pad_6.PIN_TYPE = 6'b011001;
    defparam o_receive_data_pad_6.PULLUP = 1'b0;
    defparam o_receive_data_pad_6.NEG_TRIGGER = 1'b0;
    defparam o_receive_data_pad_6.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_receive_data_pad_5 (.PACKAGE_PIN(o_receive_data[5]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_receive_data_c_5)) /* synthesis IO_FF_OUT=TRUE */ ;   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_receive_data_pad_5.PIN_TYPE = 6'b011001;
    defparam o_receive_data_pad_5.PULLUP = 1'b0;
    defparam o_receive_data_pad_5.NEG_TRIGGER = 1'b0;
    defparam o_receive_data_pad_5.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_receive_data_pad_4 (.PACKAGE_PIN(o_receive_data[4]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_receive_data_c_4)) /* synthesis IO_FF_OUT=TRUE */ ;   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_receive_data_pad_4.PIN_TYPE = 6'b011001;
    defparam o_receive_data_pad_4.PULLUP = 1'b0;
    defparam o_receive_data_pad_4.NEG_TRIGGER = 1'b0;
    defparam o_receive_data_pad_4.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_cmd_status_reg_pad_7 (.PACKAGE_PIN(o_cmd_status_reg[7]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_cmd_status_reg_c_7));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_cmd_status_reg_pad_7.PIN_TYPE = 6'b011001;
    defparam o_cmd_status_reg_pad_7.PULLUP = 1'b0;
    defparam o_cmd_status_reg_pad_7.NEG_TRIGGER = 1'b0;
    defparam o_cmd_status_reg_pad_7.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_cmd_status_reg_pad_6 (.PACKAGE_PIN(o_cmd_status_reg[6]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_cmd_status_reg_c_6));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_cmd_status_reg_pad_6.PIN_TYPE = 6'b011001;
    defparam o_cmd_status_reg_pad_6.PULLUP = 1'b0;
    defparam o_cmd_status_reg_pad_6.NEG_TRIGGER = 1'b0;
    defparam o_cmd_status_reg_pad_6.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_receive_data_pad_7 (.PACKAGE_PIN(o_receive_data[7]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_receive_data_c_7)) /* synthesis IO_FF_OUT=TRUE */ ;   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_receive_data_pad_7.PIN_TYPE = 6'b011001;
    defparam o_receive_data_pad_7.PULLUP = 1'b0;
    defparam o_receive_data_pad_7.NEG_TRIGGER = 1'b0;
    defparam o_receive_data_pad_7.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_received_data_valid_pad (.PACKAGE_PIN(o_received_data_valid), 
          .OUTPUT_ENABLE(VCC_net), .D_OUT_0(o_received_data_valid_c));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_received_data_valid_pad.PIN_TYPE = 6'b011001;
    defparam o_received_data_valid_pad.PULLUP = 1'b0;
    defparam o_received_data_valid_pad.NEG_TRIGGER = 1'b0;
    defparam o_received_data_valid_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_cmd_status_reg_pad_3 (.PACKAGE_PIN(o_cmd_status_reg[3]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_cmd_status_reg_c_3));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_cmd_status_reg_pad_3.PIN_TYPE = 6'b011001;
    defparam o_cmd_status_reg_pad_3.PULLUP = 1'b0;
    defparam o_cmd_status_reg_pad_3.NEG_TRIGGER = 1'b0;
    defparam o_cmd_status_reg_pad_3.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_cmd_status_reg_pad_2 (.PACKAGE_PIN(o_cmd_status_reg[2]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_cmd_status_reg_c_2));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_cmd_status_reg_pad_2.PIN_TYPE = 6'b011001;
    defparam o_cmd_status_reg_pad_2.PULLUP = 1'b0;
    defparam o_cmd_status_reg_pad_2.NEG_TRIGGER = 1'b0;
    defparam o_cmd_status_reg_pad_2.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_cmd_status_reg_pad_1 (.PACKAGE_PIN(o_cmd_status_reg[1]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(GND_net));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_cmd_status_reg_pad_1.PIN_TYPE = 6'b011001;
    defparam o_cmd_status_reg_pad_1.PULLUP = 1'b0;
    defparam o_cmd_status_reg_pad_1.NEG_TRIGGER = 1'b0;
    defparam o_cmd_status_reg_pad_1.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_cmd_status_reg_pad_4 (.PACKAGE_PIN(o_cmd_status_reg[4]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_cmd_status_reg_c_4));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_cmd_status_reg_pad_4.PIN_TYPE = 6'b011001;
    defparam o_cmd_status_reg_pad_4.PULLUP = 1'b0;
    defparam o_cmd_status_reg_pad_4.NEG_TRIGGER = 1'b0;
    defparam o_cmd_status_reg_pad_4.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_cmd_status_reg_pad_5 (.PACKAGE_PIN(o_cmd_status_reg[5]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(o_cmd_status_reg_c_5));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_cmd_status_reg_pad_5.PIN_TYPE = 6'b011001;
    defparam o_cmd_status_reg_pad_5.PULLUP = 1'b0;
    defparam o_cmd_status_reg_pad_5.NEG_TRIGGER = 1'b0;
    defparam o_cmd_status_reg_pad_5.IO_STANDARD = "SB_LVCMOS";
    SB_IO o_int_n_pad (.PACKAGE_PIN(o_int_n), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(o_int_n_c));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam o_int_n_pad.PIN_TYPE = 6'b011001;
    defparam o_int_n_pad.PULLUP = 1'b0;
    defparam o_int_n_pad.NEG_TRIGGER = 1'b0;
    defparam o_int_n_pad.IO_STANDARD = "SB_LVCMOS";
    GND i1 (.Y(GND_net));
    SB_LUT4 i1_4_lut (.I0(intr_clr_pulse), .I1(o_cmd_status_reg_c_4), .I2(rw_mode), 
            .I3(n4), .O(n2873));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(323[15] 329[9])
    defparam i1_4_lut.LUT_INIT = 16'h4544;
    SB_LUT4 i1150_3_lut (.I0(slave_addr[3]), .I1(i_slave_addr_reg_c_2), 
            .I2(config_latch_en), .I3(GND_net), .O(n1201));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    defparam i1150_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut (.I0(o_cmd_status_reg_c_2), .I1(int_out), .I2(n960), 
            .I3(GND_net), .O(n2817));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(446[15] 457[9])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_54 (.I0(intr_clr_pulse), .I1(o_cmd_status_reg_c_3), 
            .I2(rx_err), .I3(rx_err_d1), .O(n2875));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(335[15] 341[9])
    defparam i1_4_lut_adj_54.LUT_INIT = 16'h4454;
    SB_LUT4 i1153_3_lut (.I0(in_d3_adj_631), .I1(out_n_adj_632), .I2(in_d2_adj_630), 
            .I3(GND_net), .O(n1204));   // ../../../source/verilog/filter.v(71[16] 73[10])
    defparam i1153_3_lut.LUT_INIT = 16'he8e8;
    SB_LUT4 i1154_3_lut (.I0(in_d3), .I1(out_n), .I2(in_d2), .I3(GND_net), 
            .O(n1205));   // ../../../source/verilog/filter.v(71[16] 73[10])
    defparam i1154_3_lut.LUT_INIT = 16'he8e8;
    SB_LUT4 i1155_3_lut (.I0(n313), .I1(n312), .I2(i2c_master_falling_scl_detect), 
            .I3(GND_net), .O(n1206));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    defparam i1155_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1156_3_lut (.I0(n312), .I1(n311), .I2(i2c_master_falling_scl_detect), 
            .I3(GND_net), .O(n1207));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    defparam i1156_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1157_3_lut (.I0(n311), .I1(n310), .I2(i2c_master_falling_scl_detect), 
            .I3(GND_net), .O(n1208));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    defparam i1157_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1158_3_lut (.I0(n310), .I1(n309), .I2(i2c_master_falling_scl_detect), 
            .I3(GND_net), .O(n1209));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    defparam i1158_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1159_3_lut (.I0(n309), .I1(n308), .I2(i2c_master_falling_scl_detect), 
            .I3(GND_net), .O(n1210));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    defparam i1159_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1160_3_lut (.I0(n308), .I1(n307), .I2(i2c_master_falling_scl_detect), 
            .I3(GND_net), .O(n1211));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    defparam i1160_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1161_3_lut (.I0(n307), .I1(n306), .I2(i2c_master_falling_scl_detect), 
            .I3(GND_net), .O(n1212));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    defparam i1161_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1162_3_lut (.I0(o_byte_tx_done_N_537), .I1(n313), .I2(i2c_master_falling_scl_detect), 
            .I3(GND_net), .O(n1213));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    defparam i1162_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1163_3_lut (.I0(o_rx_data_0__N_566), .I1(o_rx_data_1__N_563), 
            .I2(i2c_master_falling_scl_detect), .I3(GND_net), .O(n1214));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    defparam i1163_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1164_3_lut (.I0(o_rx_data_1__N_563), .I1(o_rx_data_2__N_560), 
            .I2(i2c_master_falling_scl_detect), .I3(GND_net), .O(n1215));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    defparam i1164_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1165_3_lut (.I0(o_rx_data_2__N_560), .I1(o_rx_data_3__N_557), 
            .I2(i2c_master_falling_scl_detect), .I3(GND_net), .O(n1216));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    defparam i1165_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1166_3_lut (.I0(o_rx_data_3__N_557), .I1(o_rx_data_4__N_554), 
            .I2(i2c_master_falling_scl_detect), .I3(GND_net), .O(n1217));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    defparam i1166_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1167_3_lut (.I0(o_rx_data_4__N_554), .I1(o_rx_data_5__N_551), 
            .I2(i2c_master_falling_scl_detect), .I3(GND_net), .O(n1218));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    defparam i1167_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1135_3_lut_4_lut (.I0(i2cbus_busy_i_N_475), .I1(out_n_adj_632), 
            .I2(out_n), .I3(state), .O(n1186));   // ../../../source/verilog/i2c_master_start_detect.v(78[16] 82[10])
    defparam i1135_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_55 (.I0(intr_clr_pulse), .I1(o_cmd_status_reg_c_2), 
            .I2(abort_ack), .I3(abort_ack_d1), .O(n2905));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(347[15] 353[9])
    defparam i1_4_lut_adj_55.LUT_INIT = 16'h4454;
    SB_LUT4 i12_3_lut (.I0(n3117[1]), .I1(n3117[0]), .I2(out_n), .I3(GND_net), 
            .O(n2885));   // ../../../source/verilog/i2c_master_falling_scl_detect.v(58[16] 66[10])
    defparam i12_3_lut.LUT_INIT = 16'h9898;
    SB_LUT4 i1_4_lut_adj_56 (.I0(count_en_N_74), .I1(o_enable_scl_N_406), 
            .I2(o_enable_scl_N_409), .I3(o_enable_scl_N_410), .O(n2909));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(228[16] 235[10])
    defparam i1_4_lut_adj_56.LUT_INIT = 16'hccce;
    SB_LUT4 i1138_3_lut (.I0(slave_addr[1]), .I1(i_slave_addr_reg_c_0), 
            .I2(config_latch_en), .I3(GND_net), .O(n1189));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    defparam i1138_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1139_3_lut (.I0(slave_addr[2]), .I1(i_slave_addr_reg_c_1), 
            .I2(config_latch_en), .I3(GND_net), .O(n1190));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    defparam i1139_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1140_3_lut (.I0(slave_addr[7]), .I1(i_slave_addr_reg_c_6), 
            .I2(config_latch_en), .I3(GND_net), .O(n1191));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    defparam i1140_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut (.I0(i2cbus_busy_i), .I1(i2cbus_busy_i_N_475), .I2(i2c_master_stop_detect), 
            .I3(GND_net), .O(n2913));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(368[16] 374[10])
    defparam i1_3_lut.LUT_INIT = 16'hcece;
    SB_LUT4 i1143_3_lut (.I0(slave_addr[6]), .I1(i_slave_addr_reg_c_5), 
            .I2(config_latch_en), .I3(GND_net), .O(n1194));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    defparam i1143_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1144_3_lut (.I0(slave_addr[5]), .I1(i_slave_addr_reg_c_4), 
            .I2(config_latch_en), .I3(GND_net), .O(n1195));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    defparam i1144_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_4_lut (.I0(rx_en), .I1(o_transmit_data_request_c), 
            .I2(count_en_N_74), .I3(n990), .O(n1101));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hefff;
    SB_LUT4 i1145_3_lut (.I0(slave_addr[4]), .I1(i_slave_addr_reg_c_3), 
            .I2(config_latch_en), .I3(GND_net), .O(n1196));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    defparam i1145_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_57 (.I0(intr_clr_pulse), .I1(o_cmd_status_reg_c_6), 
            .I2(tx_done), .I3(tx_done_d1), .O(n2895));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(299[15] 305[9])
    defparam i1_4_lut_adj_57.LUT_INIT = 16'h4454;
    SB_LUT4 i1_4_lut_adj_58 (.I0(intr_clr_pulse), .I1(o_cmd_status_reg_c_5), 
            .I2(rx_done), .I3(rx_done_d1), .O(n2897));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(311[15] 317[9])
    defparam i1_4_lut_adj_58.LUT_INIT = 16'h4454;
    SB_LUT4 i1_3_lut_adj_59 (.I0(count_en_N_74), .I1(transaction_complete), 
            .I2(n990), .I3(GND_net), .O(n2871));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(257[16] 263[10])
    defparam i1_3_lut_adj_59.LUT_INIT = 16'h8a8a;
    i2c_master_controller u_i2c_master_controller (.i_clk_c(i_clk_c), .int_out(int_out), 
            .o_int_n_c(o_int_n_c), .GND_net(GND_net), .i_rst_n_c(i_rst_n_c), 
            .scl_oe(scl_oe), .sda_oe_n_N_3(sda_oe_n_N_3), .i_config_reg_c_5(i_config_reg_c_5), 
            .VCC_net(VCC_net), .n2828(n2828), .state_adj_15({n3120}), 
            .stop_gen_en(stop_gen_en), .n10(n10), .out_n(out_n), .n2867(n2867), 
            .i2c_master_stop_detect(i2c_master_stop_detect), .out_n_adj_10(out_n_adj_632), 
            .state(state), .n1186(n1186), .i2cbus_busy_i_N_475(i2cbus_busy_i_N_475), 
            .i_clk_div_lsb_c_1(i_clk_div_lsb_c_1), .count_en_N_74(count_en_N_74), 
            .i_mode_reg_c_1(i_mode_reg_c_1), .i_mode_reg_c_0(i_mode_reg_c_0), 
            .i_clk_div_lsb_c_7(i_clk_div_lsb_c_7), .i_clk_div_lsb_c_6(i_clk_div_lsb_c_6), 
            .i_clk_div_lsb_c_5(i_clk_div_lsb_c_5), .i_clk_div_lsb_c_4(i_clk_div_lsb_c_4), 
            .i_clk_div_lsb_c_3(i_clk_div_lsb_c_3), .i_clk_div_lsb_c_2(i_clk_div_lsb_c_2), 
            .i2c_master_falling_scl_detect(i2c_master_falling_scl_detect), 
            .state_adj_16({n3117}), .n2885(n2885), .in_d2(in_d2_adj_630), 
            .in_d3(in_d3_adj_631), .sda_in(sda_in), .n1204(n1204), .in_d2_adj_13(in_d2), 
            .in_d3_adj_14(in_d3), .scl_in(scl_in), .n1205(n1205), .i_config_reg_c_4(i_config_reg_c_4), 
            .i_byte_cnt_reg_c_4(i_byte_cnt_reg_c_4), .config_latch_en(config_latch_en), 
            .i_byte_cnt_reg_c_0(i_byte_cnt_reg_c_0), .i_config_reg_c_1(i_config_reg_c_1), 
            .i_byte_cnt_reg_c_5(i_byte_cnt_reg_c_5), .i_config_reg_c_0(i_config_reg_c_0), 
            .tx_done(tx_done), .tx_done_d1(tx_done_d1), .rx_done(rx_done), 
            .rx_done_d1(rx_done_d1), .tx_err_d1(tx_err_d1), .rx_err(rx_err), 
            .rx_err_d1(rx_err_d1), .abort_ack(abort_ack), .abort_ack_d1(abort_ack_d1), 
            .i_byte_cnt_reg_c_3(i_byte_cnt_reg_c_3), .i_mode_reg_c_6(i_mode_reg_c_6), 
            .i_byte_cnt_reg_c_2(i_byte_cnt_reg_c_2), .i_byte_cnt_reg_c_1(i_byte_cnt_reg_c_1), 
            .i_mode_reg_c_7(i_mode_reg_c_7), .i_byte_cnt_reg_c_7(i_byte_cnt_reg_c_7), 
            .i_mode_reg_c_3(i_mode_reg_c_3), .rw_mode(rw_mode), .i_mode_reg_c_5(i_mode_reg_c_5), 
            .\slave_addr[6] (slave_addr[6]), .i_slave_addr_reg_c_5(i_slave_addr_reg_c_5), 
            .i_byte_cnt_reg_c_6(i_byte_cnt_reg_c_6), .\slave_addr[3] (slave_addr[3]), 
            .\slave_addr[1] (slave_addr[1]), .i_slave_addr_reg_c_2(i_slave_addr_reg_c_2), 
            .i_slave_addr_reg_c_0(i_slave_addr_reg_c_0), .i_config_reg_c_2(i_config_reg_c_2), 
            .i_config_reg_c_3(i_config_reg_c_3), .n2875(n2875), .o_cmd_status_reg_c_3(o_cmd_status_reg_c_3), 
            .n2817(n2817), .n1201(n1201), .n2873(n2873), .o_cmd_status_reg_c_4(o_cmd_status_reg_c_4), 
            .n2897(n2897), .o_cmd_status_reg_c_5(o_cmd_status_reg_c_5), 
            .n2895(n2895), .o_cmd_status_reg_c_6(o_cmd_status_reg_c_6), 
            .n1196(n1196), .\slave_addr[4] (slave_addr[4]), .n1195(n1195), 
            .\slave_addr[5] (slave_addr[5]), .n1194(n1194), .n1191(n1191), 
            .\slave_addr[7] (slave_addr[7]), .n1190(n1190), .\slave_addr[2] (slave_addr[2]), 
            .n1189(n1189), .i_slave_addr_reg_c_3(i_slave_addr_reg_c_3), 
            .byte_tx_err(byte_tx_err), .i_slave_addr_reg_c_6(i_slave_addr_reg_c_6), 
            .i_slave_addr_reg_c_4(i_slave_addr_reg_c_4), .i_slave_addr_reg_c_1(i_slave_addr_reg_c_1), 
            .n2905(n2905), .o_cmd_status_reg_c_2(o_cmd_status_reg_c_2), 
            .o_cmd_status_reg_c_7(o_cmd_status_reg_c_7), .n960(n960), .intr_clr_pulse(intr_clr_pulse), 
            .i_transmit_data_c_3(i_transmit_data_c_3), .o_enable_scl_N_406(o_enable_scl_N_406), 
            .o_start_ack_c(o_start_ack_c), .i_transmit_data_c_0(i_transmit_data_c_0), 
            .o_enable_scl_N_409(o_enable_scl_N_409), .n1101(n1101), .rx_en(rx_en), 
            .o_received_data_valid_c(o_received_data_valid_c), .i2cbus_busy_i(i2cbus_busy_i), 
            .o_enable_scl_N_410(o_enable_scl_N_410), .n990(n990), .o_transmit_data_request_c(o_transmit_data_request_c), 
            .transaction_complete(transaction_complete), .i_transmit_data_c_1(i_transmit_data_c_1), 
            .n2871(n2871), .n2913(n2913), .n2909(n2909), .i_transmit_data_c_7(i_transmit_data_c_7), 
            .i_transmit_data_c_4(i_transmit_data_c_4), .i_transmit_data_c_6(i_transmit_data_c_6), 
            .i_transmit_data_c_5(i_transmit_data_c_5), .i_transmit_data_c_2(i_transmit_data_c_2), 
            .n1213(n1213), .o_byte_tx_done_N_537(o_byte_tx_done_N_537), 
            .n1212(n1212), .n307(n307), .n1211(n1211), .n308(n308), 
            .n1210(n1210), .n309(n309), .n1209(n1209), .n310(n310), 
            .n1208(n1208), .n311(n311), .n1207(n1207), .n312(n312), 
            .n1206(n1206), .n313(n313), .n306(n306), .o_receive_data_c_0(o_receive_data_c_0), 
            .o_rx_data_1__N_563(o_rx_data_1__N_563), .o_rx_data_2__N_560(o_rx_data_2__N_560), 
            .o_receive_data_c_6(o_receive_data_c_6), .o_receive_data_c_7(o_receive_data_c_7), 
            .o_rx_data_5__N_551(o_rx_data_5__N_551), .o_rx_data_4__N_554(o_rx_data_4__N_554), 
            .o_rx_data_3__N_557(o_rx_data_3__N_557), .o_receive_data_c_3(o_receive_data_c_3), 
            .o_receive_data_c_4(o_receive_data_c_4), .o_receive_data_c_5(o_receive_data_c_5), 
            .o_byte_rx_done_N_608(o_byte_rx_done_N_608), .o_receive_data_c_2(o_receive_data_c_2), 
            .o_rx_data_6__N_548(o_rx_data_6__N_548), .o_receive_data_c_1(o_receive_data_c_1), 
            .n1221(n1221), .n1220(n1220), .n1219(n1219), .n1218(n1218), 
            .n1217(n1217), .n1216(n1216), .n1215(n1215), .n1214(n1214), 
            .o_rx_data_0__N_566(o_rx_data_0__N_566), .o_rx_data_7__N_545(o_rx_data_7__N_545)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(106[25] 126[79])
    SB_LUT4 i1_2_lut (.I0(byte_tx_err), .I1(tx_err_d1), .I2(GND_net), 
            .I3(GND_net), .O(n4));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(323[15] 329[9])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    
endmodule
//
// Verilog Description of module i2c_master_controller
//

module i2c_master_controller (i_clk_c, int_out, o_int_n_c, GND_net, 
            i_rst_n_c, scl_oe, sda_oe_n_N_3, i_config_reg_c_5, VCC_net, 
            n2828, state_adj_15, stop_gen_en, n10, out_n, n2867, 
            i2c_master_stop_detect, out_n_adj_10, state, n1186, i2cbus_busy_i_N_475, 
            i_clk_div_lsb_c_1, count_en_N_74, i_mode_reg_c_1, i_mode_reg_c_0, 
            i_clk_div_lsb_c_7, i_clk_div_lsb_c_6, i_clk_div_lsb_c_5, i_clk_div_lsb_c_4, 
            i_clk_div_lsb_c_3, i_clk_div_lsb_c_2, i2c_master_falling_scl_detect, 
            state_adj_16, n2885, in_d2, in_d3, sda_in, n1204, in_d2_adj_13, 
            in_d3_adj_14, scl_in, n1205, i_config_reg_c_4, i_byte_cnt_reg_c_4, 
            config_latch_en, i_byte_cnt_reg_c_0, i_config_reg_c_1, i_byte_cnt_reg_c_5, 
            i_config_reg_c_0, tx_done, tx_done_d1, rx_done, rx_done_d1, 
            tx_err_d1, rx_err, rx_err_d1, abort_ack, abort_ack_d1, 
            i_byte_cnt_reg_c_3, i_mode_reg_c_6, i_byte_cnt_reg_c_2, i_byte_cnt_reg_c_1, 
            i_mode_reg_c_7, i_byte_cnt_reg_c_7, i_mode_reg_c_3, rw_mode, 
            i_mode_reg_c_5, \slave_addr[6] , i_slave_addr_reg_c_5, i_byte_cnt_reg_c_6, 
            \slave_addr[3] , \slave_addr[1] , i_slave_addr_reg_c_2, i_slave_addr_reg_c_0, 
            i_config_reg_c_2, i_config_reg_c_3, n2875, o_cmd_status_reg_c_3, 
            n2817, n1201, n2873, o_cmd_status_reg_c_4, n2897, o_cmd_status_reg_c_5, 
            n2895, o_cmd_status_reg_c_6, n1196, \slave_addr[4] , n1195, 
            \slave_addr[5] , n1194, n1191, \slave_addr[7] , n1190, 
            \slave_addr[2] , n1189, i_slave_addr_reg_c_3, byte_tx_err, 
            i_slave_addr_reg_c_6, i_slave_addr_reg_c_4, i_slave_addr_reg_c_1, 
            n2905, o_cmd_status_reg_c_2, o_cmd_status_reg_c_7, n960, 
            intr_clr_pulse, i_transmit_data_c_3, o_enable_scl_N_406, o_start_ack_c, 
            i_transmit_data_c_0, o_enable_scl_N_409, n1101, rx_en, o_received_data_valid_c, 
            i2cbus_busy_i, o_enable_scl_N_410, n990, o_transmit_data_request_c, 
            transaction_complete, i_transmit_data_c_1, n2871, n2913, 
            n2909, i_transmit_data_c_7, i_transmit_data_c_4, i_transmit_data_c_6, 
            i_transmit_data_c_5, i_transmit_data_c_2, n1213, o_byte_tx_done_N_537, 
            n1212, n307, n1211, n308, n1210, n309, n1209, n310, 
            n1208, n311, n1207, n312, n1206, n313, n306, o_receive_data_c_0, 
            o_rx_data_1__N_563, o_rx_data_2__N_560, o_receive_data_c_6, 
            o_receive_data_c_7, o_rx_data_5__N_551, o_rx_data_4__N_554, 
            o_rx_data_3__N_557, o_receive_data_c_3, o_receive_data_c_4, 
            o_receive_data_c_5, o_byte_rx_done_N_608, o_receive_data_c_2, 
            o_rx_data_6__N_548, o_receive_data_c_1, n1221, n1220, n1219, 
            n1218, n1217, n1216, n1215, n1214, o_rx_data_0__N_566, 
            o_rx_data_7__N_545) /* synthesis syn_module_defined=1 */ ;
    input i_clk_c;
    output int_out;
    output o_int_n_c;
    input GND_net;
    input i_rst_n_c;
    output scl_oe;
    output sda_oe_n_N_3;
    input i_config_reg_c_5;
    input VCC_net;
    input n2828;
    output [1:0]state_adj_15;
    output stop_gen_en;
    output n10;
    output out_n;
    input n2867;
    output i2c_master_stop_detect;
    output out_n_adj_10;
    output state;
    input n1186;
    output i2cbus_busy_i_N_475;
    input i_clk_div_lsb_c_1;
    output count_en_N_74;
    input i_mode_reg_c_1;
    input i_mode_reg_c_0;
    input i_clk_div_lsb_c_7;
    input i_clk_div_lsb_c_6;
    input i_clk_div_lsb_c_5;
    input i_clk_div_lsb_c_4;
    input i_clk_div_lsb_c_3;
    input i_clk_div_lsb_c_2;
    output i2c_master_falling_scl_detect;
    output [1:0]state_adj_16;
    input n2885;
    output in_d2;
    output in_d3;
    input sda_in;
    input n1204;
    output in_d2_adj_13;
    output in_d3_adj_14;
    input scl_in;
    input n1205;
    input i_config_reg_c_4;
    input i_byte_cnt_reg_c_4;
    output config_latch_en;
    input i_byte_cnt_reg_c_0;
    input i_config_reg_c_1;
    input i_byte_cnt_reg_c_5;
    input i_config_reg_c_0;
    output tx_done;
    output tx_done_d1;
    output rx_done;
    output rx_done_d1;
    output tx_err_d1;
    output rx_err;
    output rx_err_d1;
    output abort_ack;
    output abort_ack_d1;
    input i_byte_cnt_reg_c_3;
    input i_mode_reg_c_6;
    input i_byte_cnt_reg_c_2;
    input i_byte_cnt_reg_c_1;
    input i_mode_reg_c_7;
    input i_byte_cnt_reg_c_7;
    input i_mode_reg_c_3;
    output rw_mode;
    input i_mode_reg_c_5;
    output \slave_addr[6] ;
    input i_slave_addr_reg_c_5;
    input i_byte_cnt_reg_c_6;
    output \slave_addr[3] ;
    output \slave_addr[1] ;
    input i_slave_addr_reg_c_2;
    input i_slave_addr_reg_c_0;
    input i_config_reg_c_2;
    input i_config_reg_c_3;
    input n2875;
    output o_cmd_status_reg_c_3;
    input n2817;
    input n1201;
    input n2873;
    output o_cmd_status_reg_c_4;
    input n2897;
    output o_cmd_status_reg_c_5;
    input n2895;
    output o_cmd_status_reg_c_6;
    input n1196;
    output \slave_addr[4] ;
    input n1195;
    output \slave_addr[5] ;
    input n1194;
    input n1191;
    output \slave_addr[7] ;
    input n1190;
    output \slave_addr[2] ;
    input n1189;
    input i_slave_addr_reg_c_3;
    output byte_tx_err;
    input i_slave_addr_reg_c_6;
    input i_slave_addr_reg_c_4;
    input i_slave_addr_reg_c_1;
    input n2905;
    output o_cmd_status_reg_c_2;
    output o_cmd_status_reg_c_7;
    output n960;
    output intr_clr_pulse;
    input i_transmit_data_c_3;
    output o_enable_scl_N_406;
    output o_start_ack_c;
    input i_transmit_data_c_0;
    output o_enable_scl_N_409;
    input n1101;
    output rx_en;
    output o_received_data_valid_c;
    output i2cbus_busy_i;
    output o_enable_scl_N_410;
    output n990;
    output o_transmit_data_request_c;
    output transaction_complete;
    input i_transmit_data_c_1;
    input n2871;
    input n2913;
    input n2909;
    input i_transmit_data_c_7;
    input i_transmit_data_c_4;
    input i_transmit_data_c_6;
    input i_transmit_data_c_5;
    input i_transmit_data_c_2;
    input n1213;
    output o_byte_tx_done_N_537;
    input n1212;
    output n307;
    input n1211;
    output n308;
    input n1210;
    output n309;
    input n1209;
    output n310;
    input n1208;
    output n311;
    input n1207;
    output n312;
    input n1206;
    output n313;
    output n306;
    output o_receive_data_c_0;
    output o_rx_data_1__N_563;
    output o_rx_data_2__N_560;
    output o_receive_data_c_6;
    output o_receive_data_c_7;
    output o_rx_data_5__N_551;
    output o_rx_data_4__N_554;
    output o_rx_data_3__N_557;
    output o_receive_data_c_3;
    output o_receive_data_c_4;
    output o_receive_data_c_5;
    output o_byte_rx_done_N_608;
    output o_receive_data_c_2;
    output o_rx_data_6__N_548;
    output o_receive_data_c_1;
    input n1221;
    input n1220;
    input n1219;
    input n1218;
    input n1217;
    input n1216;
    input n1215;
    input n1214;
    output o_rx_data_0__N_566;
    output o_rx_data_7__N_545;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    
    wire soft_reset_d2, soft_reset_d3, i_rst_n_N_7, scl_oe_n, rx_ack_sda, 
        i2c_master_stop_sda_i, byte_tx_sda, i2c_master_start_sda_i, soft_reset_d1, 
        reset;
    wire [15:0]count_threshold_15__N_103;
    
    wire i2c_master_start_ack, tx_en, state_next_N_83, start_gen_en, 
        count_reset_N_69, count_eq_modby2, n807, o_i2c_master_scl_N_68, 
        n837, count_reset_N_73, n839, count_reset_N_72, n803, o_i2c_master_scl_N_65, 
        n39, n2889, count_en, sda_in_filtered;
    
    SB_DFFR soft_reset_d3_19 (.Q(soft_reset_d3), .C(i_clk_c), .D(soft_reset_d2), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_controller.v(260[15] 264[9])
    SB_LUT4 int_out_I_0_1_lut (.I0(int_out), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(o_int_n_c));   // ../../../source/verilog/i2c_master_controller.v(165[20:28])
    defparam int_out_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i_rst_n_I_0_1_lut (.I0(i_rst_n_c), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_controller.v(117[16:24])
    defparam i_rst_n_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 scl_oe_n_I_0_1_lut (.I0(scl_oe_n), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(scl_oe));   // ../../../source/verilog/i2c_master_controller.v(90[21:30])
    defparam scl_oe_n_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2936_4_lut (.I0(rx_ack_sda), .I1(i2c_master_stop_sda_i), .I2(byte_tx_sda), 
            .I3(i2c_master_start_sda_i), .O(sda_oe_n_N_3));   // ../../../source/verilog/i2c_master_controller.v(92[21:30])
    defparam i2936_4_lut.LUT_INIT = 16'h7fff;
    SB_DFFR soft_reset_d2_18 (.Q(soft_reset_d2), .C(i_clk_c), .D(soft_reset_d1), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_controller.v(260[15] 264[9])
    SB_DFFER soft_reset_d1_17 (.Q(soft_reset_d1), .C(i_clk_c), .E(VCC_net), 
            .D(i_config_reg_c_5), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_controller.v(260[15] 264[9])
    SB_LUT4 i_rst_n_N_7_I_0_3_lut_3_lut (.I0(i_rst_n_c), .I1(soft_reset_d2), 
            .I2(soft_reset_d3), .I3(GND_net), .O(reset));   // ../../../source/verilog/i2c_master_controller.v(118[18:32])
    defparam i_rst_n_N_7_I_0_3_lut_3_lut.LUT_INIT = 16'h5d5d;
    i2cbus_cntrl_fsm_top i2cbus_cntrl_fsm (.i_clk_c(i_clk_c), .reset(reset), 
            .n2828(n2828), .state_adj_8({state_adj_15}), .i2c_master_stop_sda_i(i2c_master_stop_sda_i), 
            .GND_net(GND_net), .stop_gen_en(stop_gen_en), .n10(n10), .out_n(out_n), 
            .n2867(n2867), .VCC_net(VCC_net), .i2c_master_stop_detect(i2c_master_stop_detect), 
            .out_n_adj_5(out_n_adj_10), .\count_threshold_15__N_103[4] (count_threshold_15__N_103[4]), 
            .i2c_master_start_sda_i(i2c_master_start_sda_i), .\count_threshold_15__N_103[6] (count_threshold_15__N_103[6]), 
            .i2c_master_start_ack(i2c_master_start_ack), .tx_en(tx_en), 
            .state_next_N_83(state_next_N_83), .start_gen_en(start_gen_en), 
            .state(state), .n1186(n1186), .i2cbus_busy_i_N_475(i2cbus_busy_i_N_475), 
            .i_clk_div_lsb_c_1(i_clk_div_lsb_c_1), .count_reset_N_69(count_reset_N_69), 
            .count_eq_modby2(count_eq_modby2), .scl_oe_n(scl_oe_n), .n807(n807), 
            .o_i2c_master_scl_N_68(o_i2c_master_scl_N_68), .n837(n837), 
            .count_reset_N_73(count_reset_N_73), .n839(n839), .count_reset_N_72(count_reset_N_72), 
            .n803(n803), .o_i2c_master_scl_N_65(o_i2c_master_scl_N_65), 
            .n39(n39), .n2889(n2889), .count_en(count_en), .count_en_N_74(count_en_N_74), 
            .i_mode_reg_c_1(i_mode_reg_c_1), .i_mode_reg_c_0(i_mode_reg_c_0), 
            .i_clk_div_lsb_c_7(i_clk_div_lsb_c_7), .i_clk_div_lsb_c_6(i_clk_div_lsb_c_6), 
            .i_clk_div_lsb_c_5(i_clk_div_lsb_c_5), .i_clk_div_lsb_c_4(i_clk_div_lsb_c_4), 
            .i_clk_div_lsb_c_3(i_clk_div_lsb_c_3), .i_clk_div_lsb_c_2(i_clk_div_lsb_c_2), 
            .i2c_master_falling_scl_detect(i2c_master_falling_scl_detect), 
            .state_adj_9({state_adj_16}), .n2885(n2885)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2c_master_controller.v(189[24] 211[4])
    filter filter_sda (.in_d2(in_d2), .i_clk_c(i_clk_c), .reset(reset), 
           .in_d3(in_d3), .sda_in(sda_in), .GND_net(GND_net), .out_n(out_n_adj_10), 
           .sda_in_filtered(sda_in_filtered), .n1204(n1204)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2c_master_controller.v(177[10] 182[4])
    filter_U1 filter_scl (.in_d2(in_d2_adj_13), .i_clk_c(i_clk_c), .reset(reset), 
            .in_d3(in_d3_adj_14), .scl_in(scl_in), .GND_net(GND_net), 
            .n1205(n1205), .out_n(out_n), .count_eq_modby2(count_eq_modby2), 
            .count_reset_N_72(count_reset_N_72), .count_reset_N_73(count_reset_N_73), 
            .n837(n837)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2c_master_controller.v(171[10] 176[4])
    i2c_master_cntrl_fsm_top cntrl_fsm (.i_config_reg_c_4(i_config_reg_c_4), 
            .VCC_net(VCC_net), .i_clk_c(i_clk_c), .i_rst_n_N_7(i_rst_n_N_7), 
            .i_byte_cnt_reg_c_4(i_byte_cnt_reg_c_4), .config_latch_en(config_latch_en), 
            .i_byte_cnt_reg_c_0(i_byte_cnt_reg_c_0), .i_config_reg_c_1(i_config_reg_c_1), 
            .i_byte_cnt_reg_c_5(i_byte_cnt_reg_c_5), .i_config_reg_c_0(i_config_reg_c_0), 
            .tx_done(tx_done), .tx_done_d1(tx_done_d1), .rx_done(rx_done), 
            .rx_done_d1(rx_done_d1), .tx_err_d1(tx_err_d1), .rx_err(rx_err), 
            .rx_err_d1(rx_err_d1), .abort_ack(abort_ack), .abort_ack_d1(abort_ack_d1), 
            .i_byte_cnt_reg_c_3(i_byte_cnt_reg_c_3), .i_mode_reg_c_6(i_mode_reg_c_6), 
            .i_byte_cnt_reg_c_2(i_byte_cnt_reg_c_2), .i_byte_cnt_reg_c_1(i_byte_cnt_reg_c_1), 
            .\count_threshold_15__N_103[4] (count_threshold_15__N_103[4]), 
            .GND_net(GND_net), .i_mode_reg_c_7(i_mode_reg_c_7), .i_byte_cnt_reg_c_7(i_byte_cnt_reg_c_7), 
            .i_mode_reg_c_3(i_mode_reg_c_3), .rw_mode(rw_mode), .i_mode_reg_c_5(i_mode_reg_c_5), 
            .\slave_addr[6] (\slave_addr[6] ), .i_slave_addr_reg_c_5(i_slave_addr_reg_c_5), 
            .i_byte_cnt_reg_c_6(i_byte_cnt_reg_c_6), .\slave_addr[3] (\slave_addr[3] ), 
            .\slave_addr[1] (\slave_addr[1] ), .i_slave_addr_reg_c_2(i_slave_addr_reg_c_2), 
            .i_slave_addr_reg_c_0(i_slave_addr_reg_c_0), .i_config_reg_c_2(i_config_reg_c_2), 
            .i_config_reg_c_3(i_config_reg_c_3), .n2875(n2875), .o_cmd_status_reg_c_3(o_cmd_status_reg_c_3), 
            .n2817(n2817), .int_out(int_out), .n1201(n1201), .n2873(n2873), 
            .o_cmd_status_reg_c_4(o_cmd_status_reg_c_4), .n2897(n2897), 
            .o_cmd_status_reg_c_5(o_cmd_status_reg_c_5), .n2895(n2895), 
            .o_cmd_status_reg_c_6(o_cmd_status_reg_c_6), .n1196(n1196), 
            .\slave_addr[4] (\slave_addr[4] ), .n1195(n1195), .\slave_addr[5] (\slave_addr[5] ), 
            .n1194(n1194), .n1191(n1191), .\slave_addr[7] (\slave_addr[7] ), 
            .n1190(n1190), .\slave_addr[2] (\slave_addr[2] ), .n1189(n1189), 
            .i_slave_addr_reg_c_3(i_slave_addr_reg_c_3), .byte_tx_err(byte_tx_err), 
            .i_slave_addr_reg_c_6(i_slave_addr_reg_c_6), .i_slave_addr_reg_c_4(i_slave_addr_reg_c_4), 
            .i_slave_addr_reg_c_1(i_slave_addr_reg_c_1), .n2905(n2905), 
            .o_cmd_status_reg_c_2(o_cmd_status_reg_c_2), .o_cmd_status_reg_c_7(o_cmd_status_reg_c_7), 
            .n960(n960), .intr_clr_pulse(intr_clr_pulse), .\count_threshold_15__N_103[6] (count_threshold_15__N_103[6]), 
            .i_rst_n_c(i_rst_n_c), .i_transmit_data_c_3(i_transmit_data_c_3), 
            .o_enable_scl_N_406(o_enable_scl_N_406), .o_start_ack_c(o_start_ack_c), 
            .i_transmit_data_c_0(i_transmit_data_c_0), .i2c_master_stop_detect(i2c_master_stop_detect), 
            .o_enable_scl_N_409(o_enable_scl_N_409), .n1101(n1101), .start_gen_en(start_gen_en), 
            .tx_en(tx_en), .out_n(out_n), .count_reset_N_73(count_reset_N_73), 
            .count_eq_modby2(count_eq_modby2), .n807(n807), .count_en_N_74(count_en_N_74), 
            .o_i2c_master_scl_N_68(o_i2c_master_scl_N_68), .rx_en(rx_en), 
            .o_received_data_valid_c(o_received_data_valid_c), .i2cbus_busy_i(i2cbus_busy_i), 
            .o_enable_scl_N_410(o_enable_scl_N_410), .n990(n990), .o_transmit_data_request_c(o_transmit_data_request_c), 
            .stop_gen_en(stop_gen_en), .transaction_complete(transaction_complete), 
            .i_transmit_data_c_1(i_transmit_data_c_1), .n2871(n2871), .n2913(n2913), 
            .n2909(n2909), .i_transmit_data_c_7(i_transmit_data_c_7), .i_transmit_data_c_4(i_transmit_data_c_4), 
            .i_transmit_data_c_6(i_transmit_data_c_6), .i_transmit_data_c_5(i_transmit_data_c_5), 
            .i_transmit_data_c_2(i_transmit_data_c_2), .count_reset_N_72(count_reset_N_72), 
            .o_i2c_master_scl_N_65(o_i2c_master_scl_N_65), .n839(n839), 
            .count_en(count_en), .n2889(n2889), .i2c_master_start_ack(i2c_master_start_ack), 
            .i2c_master_falling_scl_detect(i2c_master_falling_scl_detect), 
            .n803(n803), .n39(n39), .count_reset_N_69(count_reset_N_69), 
            .byte_tx_sda(byte_tx_sda), .n1213(n1213), .o_byte_tx_done_N_537(o_byte_tx_done_N_537), 
            .n1212(n1212), .n307(n307), .n1211(n1211), .n308(n308), 
            .n1210(n1210), .n309(n309), .n1209(n1209), .n310(n310), 
            .n1208(n1208), .n311(n311), .n1207(n1207), .n312(n312), 
            .n1206(n1206), .n313(n313), .n306(n306), .state_next_N_83(state_next_N_83), 
            .sda_in_filtered(sda_in_filtered), .o_receive_data_c_0(o_receive_data_c_0), 
            .o_rx_data_1__N_563(o_rx_data_1__N_563), .o_rx_data_2__N_560(o_rx_data_2__N_560), 
            .o_receive_data_c_6(o_receive_data_c_6), .o_receive_data_c_7(o_receive_data_c_7), 
            .o_rx_data_5__N_551(o_rx_data_5__N_551), .o_rx_data_4__N_554(o_rx_data_4__N_554), 
            .o_rx_data_3__N_557(o_rx_data_3__N_557), .o_receive_data_c_3(o_receive_data_c_3), 
            .o_receive_data_c_4(o_receive_data_c_4), .o_receive_data_c_5(o_receive_data_c_5), 
            .o_byte_rx_done_N_608(o_byte_rx_done_N_608), .o_receive_data_c_2(o_receive_data_c_2), 
            .o_rx_data_6__N_548(o_rx_data_6__N_548), .o_receive_data_c_1(o_receive_data_c_1), 
            .n1221(n1221), .n1220(n1220), .n1219(n1219), .n1218(n1218), 
            .n1217(n1217), .n1216(n1216), .n1215(n1215), .n1214(n1214), 
            .o_rx_data_0__N_566(o_rx_data_0__N_566), .rx_ack_sda(rx_ack_sda), 
            .o_rx_data_7__N_545(o_rx_data_7__N_545)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2c_master_controller.v(218[28] 251[6])
    
endmodule
//
// Verilog Description of module i2cbus_cntrl_fsm_top
//

module i2cbus_cntrl_fsm_top (i_clk_c, reset, n2828, state_adj_8, i2c_master_stop_sda_i, 
            GND_net, stop_gen_en, n10, out_n, n2867, VCC_net, i2c_master_stop_detect, 
            out_n_adj_5, \count_threshold_15__N_103[4] , i2c_master_start_sda_i, 
            \count_threshold_15__N_103[6] , i2c_master_start_ack, tx_en, 
            state_next_N_83, start_gen_en, state, n1186, i2cbus_busy_i_N_475, 
            i_clk_div_lsb_c_1, count_reset_N_69, count_eq_modby2, scl_oe_n, 
            n807, o_i2c_master_scl_N_68, n837, count_reset_N_73, n839, 
            count_reset_N_72, n803, o_i2c_master_scl_N_65, n39, n2889, 
            count_en, count_en_N_74, i_mode_reg_c_1, i_mode_reg_c_0, 
            i_clk_div_lsb_c_7, i_clk_div_lsb_c_6, i_clk_div_lsb_c_5, i_clk_div_lsb_c_4, 
            i_clk_div_lsb_c_3, i_clk_div_lsb_c_2, i2c_master_falling_scl_detect, 
            state_adj_9, n2885) /* synthesis syn_module_defined=1 */ ;
    input i_clk_c;
    input reset;
    input n2828;
    output [1:0]state_adj_8;
    output i2c_master_stop_sda_i;
    input GND_net;
    input stop_gen_en;
    output n10;
    input out_n;
    input n2867;
    input VCC_net;
    output i2c_master_stop_detect;
    input out_n_adj_5;
    input \count_threshold_15__N_103[4] ;
    output i2c_master_start_sda_i;
    input \count_threshold_15__N_103[6] ;
    output i2c_master_start_ack;
    input tx_en;
    output state_next_N_83;
    input start_gen_en;
    output state;
    input n1186;
    output i2cbus_busy_i_N_475;
    input i_clk_div_lsb_c_1;
    input count_reset_N_69;
    output count_eq_modby2;
    output scl_oe_n;
    input n807;
    output o_i2c_master_scl_N_68;
    input n837;
    output count_reset_N_73;
    input n839;
    output count_reset_N_72;
    input n803;
    output o_i2c_master_scl_N_65;
    output n39;
    input n2889;
    output count_en;
    input count_en_N_74;
    input i_mode_reg_c_1;
    input i_mode_reg_c_0;
    input i_clk_div_lsb_c_7;
    input i_clk_div_lsb_c_6;
    input i_clk_div_lsb_c_5;
    input i_clk_div_lsb_c_4;
    input i_clk_div_lsb_c_3;
    input i_clk_div_lsb_c_2;
    output i2c_master_falling_scl_detect;
    output [1:0]state_adj_9;
    input n2885;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    wire [15:0]count_threshold;   // ../../../source/verilog/i2c_master_start_gen.v(71[16:31])
    
    wire state_N_184;
    
    i2c_master_stop_gen stop_gen (.i_clk_c(i_clk_c), .reset(reset), .n2828(n2828), 
            .state({state_adj_8}), .i2c_master_stop_sda_i(i2c_master_stop_sda_i), 
            .GND_net(GND_net), .stop_gen_en(stop_gen_en), .n10(n10), .out_n(out_n), 
            .n2867(n2867), .\count_threshold[4] (count_threshold[4]), .\count_threshold[6] (count_threshold[6]), 
            .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2cbus_cntrl_fsm_top.v(139[24] 148[5])
    i2c_master_stop_detect stop_detect (.state_N_184(state_N_184), .i_clk_c(i_clk_c), 
            .reset(reset), .i2c_master_stop_detect(i2c_master_stop_detect), 
            .out_n(out_n_adj_5), .out_n_adj_4(out_n), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2cbus_cntrl_fsm_top.v(129[27] 135[5])
    i2c_master_start_gen start_gen (.out_n(out_n), .GND_net(GND_net), .\count_threshold_15__N_103[4] (\count_threshold_15__N_103[4] ), 
            .\count_threshold[4] (count_threshold[4]), .i_clk_c(i_clk_c), 
            .reset(reset), .i2c_master_start_sda_i(i2c_master_start_sda_i), 
            .\count_threshold_15__N_103[6] (\count_threshold_15__N_103[6] ), 
            .\count_threshold[6] (count_threshold[6]), .i2c_master_start_ack(i2c_master_start_ack), 
            .tx_en(tx_en), .state_next_N_83(state_next_N_83), .start_gen_en(start_gen_en), 
            .out_n_adj_3(out_n_adj_5), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2cbus_cntrl_fsm_top.v(117[25] 127[5])
    i2c_master_start_detect start_detect (.state_next_N_83(state_next_N_83), 
            .state(state), .i_clk_c(i_clk_c), .reset(reset), .out_n(out_n_adj_5), 
            .out_n_adj_2(out_n), .GND_net(GND_net), .state_N_184(state_N_184), 
            .n1186(n1186), .i2cbus_busy_i_N_475(i2cbus_busy_i_N_475)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2cbus_cntrl_fsm_top.v(109[28] 115[5])
    i2c_master_scl_gen scl_gen (.i_clk_div_lsb_c_1(i_clk_div_lsb_c_1), .GND_net(GND_net), 
            .VCC_net(VCC_net), .i_clk_c(i_clk_c), .reset(reset), .count_reset_N_69(count_reset_N_69), 
            .count_eq_modby2(count_eq_modby2), .scl_oe_n(scl_oe_n), .n807(n807), 
            .o_i2c_master_scl_N_68(o_i2c_master_scl_N_68), .n837(n837), 
            .count_reset_N_73(count_reset_N_73), .n839(n839), .count_reset_N_72(count_reset_N_72), 
            .n803(n803), .o_i2c_master_scl_N_65(o_i2c_master_scl_N_65), 
            .n39(n39), .n2889(n2889), .count_en(count_en), .count_en_N_74(count_en_N_74), 
            .i_mode_reg_c_1(i_mode_reg_c_1), .i_mode_reg_c_0(i_mode_reg_c_0), 
            .i_clk_div_lsb_c_7(i_clk_div_lsb_c_7), .i_clk_div_lsb_c_6(i_clk_div_lsb_c_6), 
            .i_clk_div_lsb_c_5(i_clk_div_lsb_c_5), .i_clk_div_lsb_c_4(i_clk_div_lsb_c_4), 
            .i_clk_div_lsb_c_3(i_clk_div_lsb_c_3), .i_clk_div_lsb_c_2(i_clk_div_lsb_c_2)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2cbus_cntrl_fsm_top.v(97[23] 107[5])
    i2c_master_falling_scl_detect falling_scl_detect (.i2c_master_falling_scl_detect(i2c_master_falling_scl_detect), 
            .i_clk_c(i_clk_c), .reset(reset), .state({state_adj_9}), .out_n(out_n), 
            .GND_net(GND_net), .n2885(n2885)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2cbus_cntrl_fsm_top.v(90[34] 95[5])
    
endmodule
//
// Verilog Description of module i2c_master_stop_gen
//

module i2c_master_stop_gen (i_clk_c, reset, n2828, state, i2c_master_stop_sda_i, 
            GND_net, stop_gen_en, n10, out_n, n2867, \count_threshold[4] , 
            \count_threshold[6] , VCC_net) /* synthesis syn_module_defined=1 */ ;
    input i_clk_c;
    input reset;
    input n2828;
    output [1:0]state;
    output i2c_master_stop_sda_i;
    input GND_net;
    input stop_gen_en;
    output n10;
    input out_n;
    input n2867;
    input \count_threshold[4] ;
    input \count_threshold[6] ;
    input VCC_net;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    wire [1:0]state_1__N_207;
    
    wire start_delay, o_i2c_master_stop_sda_N_229, delay_done;
    
    SB_DFFR start_delay_32 (.Q(start_delay), .C(i_clk_c), .D(state_1__N_207[0]), 
            .R(reset));   // ../../../source/verilog/i2c_master_stop_gen.v(110[16] 112[10])
    SB_DFFER state_i0 (.Q(state[0]), .C(i_clk_c), .E(n2828), .D(state_1__N_207[0]), 
            .R(reset));   // ../../../source/verilog/i2c_master_stop_gen.v(87[16] 95[10])
    SB_DFFS o_i2c_master_stop_sda_31 (.Q(i2c_master_stop_sda_i), .C(i_clk_c), 
            .D(o_i2c_master_stop_sda_N_229), .S(reset));   // ../../../source/verilog/i2c_master_stop_gen.v(101[16] 104[10])
    SB_LUT4 i2932_2_lut (.I0(state[1]), .I1(state[0]), .I2(GND_net), .I3(GND_net), 
            .O(o_i2c_master_stop_sda_N_229));
    defparam i2932_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 i24_3_lut (.I0(stop_gen_en), .I1(delay_done), .I2(state[0]), 
            .I3(GND_net), .O(n10));   // ../../../source/verilog/i2c_master_stop_gen.v(92[19] 94[13])
    defparam i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2953_3_lut (.I0(state[0]), .I1(out_n), .I2(state[1]), .I3(GND_net), 
            .O(state_1__N_207[0]));
    defparam i2953_3_lut.LUT_INIT = 16'h1010;
    SB_DFFR state_i1 (.Q(state[1]), .C(i_clk_c), .D(n2867), .R(reset));   // ../../../source/verilog/i2c_master_stop_gen.v(87[16] 95[10])
    delay_gen delay_gen (.i_clk_c(i_clk_c), .reset(reset), .delay_done(delay_done), 
            .\count_threshold[4] (\count_threshold[4] ), .\count_threshold[6] (\count_threshold[6] ), 
            .GND_net(GND_net), .start_delay(start_delay), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2c_master_stop_gen.v(72[14] 78[5])
    
endmodule
//
// Verilog Description of module delay_gen
//

module delay_gen (i_clk_c, reset, delay_done, \count_threshold[4] , 
            \count_threshold[6] , GND_net, start_delay, VCC_net) /* synthesis syn_module_defined=1 */ ;
    input i_clk_c;
    input reset;
    output delay_done;
    input \count_threshold[4] ;
    input \count_threshold[6] ;
    input GND_net;
    input start_delay;
    input VCC_net;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    wire [15:0]count_15__N_149;
    wire [15:0]count;   // ../../../source/verilog/delay_gen.v(50[16:21])
    
    wire delay_done_N_181, n20, n22, n21, n2834, n23, n2783, n930, 
        n2782, n2781;
    wire [15:0]count_15__N_165;
    
    wire n2780, n2779, n2778, n2777, n2776, n2775, n2774, n2773, 
        n2772, n2771, n2770, n2769, n3056;
    
    SB_DFFR count_i0 (.Q(count[0]), .C(i_clk_c), .D(count_15__N_149[0]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR delay_done_12 (.Q(delay_done), .C(i_clk_c), .D(delay_done_N_181), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(69[16] 71[10])
    SB_DFFR count_i1 (.Q(count[1]), .C(i_clk_c), .D(count_15__N_149[1]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i2 (.Q(count[2]), .C(i_clk_c), .D(count_15__N_149[2]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i3 (.Q(count[3]), .C(i_clk_c), .D(count_15__N_149[3]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i4 (.Q(count[4]), .C(i_clk_c), .D(count_15__N_149[4]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i5 (.Q(count[5]), .C(i_clk_c), .D(count_15__N_149[5]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i6 (.Q(count[6]), .C(i_clk_c), .D(count_15__N_149[6]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i7 (.Q(count[7]), .C(i_clk_c), .D(count_15__N_149[7]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i8 (.Q(count[8]), .C(i_clk_c), .D(count_15__N_149[8]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i9 (.Q(count[9]), .C(i_clk_c), .D(count_15__N_149[9]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i10 (.Q(count[10]), .C(i_clk_c), .D(count_15__N_149[10]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i11 (.Q(count[11]), .C(i_clk_c), .D(count_15__N_149[11]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i12 (.Q(count[12]), .C(i_clk_c), .D(count_15__N_149[12]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i13 (.Q(count[13]), .C(i_clk_c), .D(count_15__N_149[13]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i14 (.Q(count[14]), .C(i_clk_c), .D(count_15__N_149[14]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i15 (.Q(count[15]), .C(i_clk_c), .D(count_15__N_149[15]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_LUT4 i7_4_lut (.I0(count[1]), .I1(count[7]), .I2(count[3]), .I3(count[2]), 
            .O(n20));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i7_4_lut.LUT_INIT = 16'hffdf;
    SB_LUT4 i9_4_lut (.I0(count[0]), .I1(count[14]), .I2(count[13]), .I3(count[9]), 
            .O(n22));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut (.I0(count[15]), .I1(count[10]), .I2(count[5]), .I3(count[12]), 
            .O(n21));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut (.I0(count[4]), .I1(count[6]), .I2(\count_threshold[4] ), 
            .I3(\count_threshold[6] ), .O(n2834));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i1_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i10_3_lut (.I0(count[8]), .I1(n20), .I2(count[11]), .I3(GND_net), 
            .O(n23));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i10_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 add_4_add_4_17_lut (.I0(n930), .I1(count[15]), .I2(GND_net), 
            .I3(n2783), .O(count_15__N_149[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i2964_4_lut (.I0(n23), .I1(n2834), .I2(n21), .I3(n22), .O(delay_done_N_181));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i2964_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 add_4_add_4_16_lut (.I0(n930), .I1(count[14]), .I2(GND_net), 
            .I3(n2782), .O(count_15__N_149[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_16_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_16 (.CI(n2782), .I0(count[14]), .I1(GND_net), 
            .CO(n2783));
    SB_LUT4 add_4_add_4_15_lut (.I0(n930), .I1(count[13]), .I2(GND_net), 
            .I3(n2781), .O(count_15__N_149[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_15_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1584_2_lut (.I0(count_15__N_165[0]), .I1(start_delay), .I2(GND_net), 
            .I3(GND_net), .O(count_15__N_149[0]));   // ../../../source/verilog/delay_gen.v(58[19] 62[13])
    defparam i1584_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY add_4_add_4_15 (.CI(n2781), .I0(count[13]), .I1(GND_net), 
            .CO(n2782));
    SB_LUT4 add_4_add_4_14_lut (.I0(n930), .I1(count[12]), .I2(GND_net), 
            .I3(n2780), .O(count_15__N_149[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_14_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_14 (.CI(n2780), .I0(count[12]), .I1(GND_net), 
            .CO(n2781));
    SB_LUT4 add_4_add_4_13_lut (.I0(n930), .I1(count[11]), .I2(GND_net), 
            .I3(n2779), .O(count_15__N_149[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_13_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_13 (.CI(n2779), .I0(count[11]), .I1(GND_net), 
            .CO(n2780));
    SB_LUT4 add_4_add_4_12_lut (.I0(n930), .I1(count[10]), .I2(GND_net), 
            .I3(n2778), .O(count_15__N_149[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_12_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_12 (.CI(n2778), .I0(count[10]), .I1(GND_net), 
            .CO(n2779));
    SB_LUT4 add_4_add_4_11_lut (.I0(n930), .I1(count[9]), .I2(GND_net), 
            .I3(n2777), .O(count_15__N_149[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_11_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_11 (.CI(n2777), .I0(count[9]), .I1(GND_net), 
            .CO(n2778));
    SB_LUT4 add_4_add_4_10_lut (.I0(n930), .I1(count[8]), .I2(GND_net), 
            .I3(n2776), .O(count_15__N_149[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_10_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_10 (.CI(n2776), .I0(count[8]), .I1(GND_net), 
            .CO(n2777));
    SB_LUT4 add_4_add_4_9_lut (.I0(n930), .I1(count[7]), .I2(GND_net), 
            .I3(n2775), .O(count_15__N_149[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_9 (.CI(n2775), .I0(count[7]), .I1(GND_net), .CO(n2776));
    SB_LUT4 add_4_add_4_8_lut (.I0(n930), .I1(count[6]), .I2(GND_net), 
            .I3(n2774), .O(count_15__N_149[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_8 (.CI(n2774), .I0(count[6]), .I1(GND_net), .CO(n2775));
    SB_LUT4 add_4_add_4_7_lut (.I0(n930), .I1(count[5]), .I2(GND_net), 
            .I3(n2773), .O(count_15__N_149[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_7 (.CI(n2773), .I0(count[5]), .I1(GND_net), .CO(n2774));
    SB_LUT4 add_4_add_4_6_lut (.I0(n930), .I1(count[4]), .I2(GND_net), 
            .I3(n2772), .O(count_15__N_149[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_6_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_6 (.CI(n2772), .I0(count[4]), .I1(GND_net), .CO(n2773));
    SB_LUT4 add_4_add_4_5_lut (.I0(n930), .I1(count[3]), .I2(GND_net), 
            .I3(n2771), .O(count_15__N_149[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_5_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_5 (.CI(n2771), .I0(count[3]), .I1(GND_net), .CO(n2772));
    SB_LUT4 add_4_add_4_4_lut (.I0(n930), .I1(count[2]), .I2(GND_net), 
            .I3(n2770), .O(count_15__N_149[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_4 (.CI(n2770), .I0(count[2]), .I1(GND_net), .CO(n2771));
    SB_LUT4 add_4_add_4_3_lut (.I0(n930), .I1(count[1]), .I2(GND_net), 
            .I3(n2769), .O(count_15__N_149[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_3 (.CI(n2769), .I0(count[1]), .I1(GND_net), .CO(n2770));
    SB_LUT4 add_4_add_4_2_lut (.I0(n3056), .I1(count[0]), .I2(GND_net), 
            .I3(VCC_net), .O(count_15__N_165[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_2 (.CI(VCC_net), .I0(count[0]), .I1(GND_net), 
            .CO(n2769));
    SB_LUT4 i2961_1_lut (.I0(delay_done_N_181), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3056));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i2961_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i886_2_lut (.I0(delay_done_N_181), .I1(start_delay), .I2(GND_net), 
            .I3(GND_net), .O(n930));   // ../../../source/verilog/delay_gen.v(58[19] 62[13])
    defparam i886_2_lut.LUT_INIT = 16'h1111;
    
endmodule
//
// Verilog Description of module i2c_master_stop_detect
//

module i2c_master_stop_detect (state_N_184, i_clk_c, reset, i2c_master_stop_detect, 
            out_n, out_n_adj_4, GND_net) /* synthesis syn_module_defined=1 */ ;
    input state_N_184;
    input i_clk_c;
    input reset;
    output i2c_master_stop_detect;
    input out_n;
    input out_n_adj_4;
    input GND_net;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    
    wire state, n2936;
    
    SB_DFFR state_16 (.Q(state), .C(i_clk_c), .D(state_N_184), .R(reset));   // ../../../source/verilog/i2c_master_stop_detect.v(54[16] 60[10])
    SB_DFFR o_i2c_master_stop_detect_17 (.Q(i2c_master_stop_detect), .C(i_clk_c), 
            .D(n2936), .R(reset));   // ../../../source/verilog/i2c_master_stop_detect.v(66[16] 69[10])
    SB_LUT4 i1_2_lut_3_lut (.I0(state), .I1(out_n), .I2(out_n_adj_4), 
            .I3(GND_net), .O(n2936));   // ../../../source/verilog/i2c_master_stop_detect.v(66[16] 69[10])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    
endmodule
//
// Verilog Description of module i2c_master_start_gen
//

module i2c_master_start_gen (out_n, GND_net, \count_threshold_15__N_103[4] , 
            \count_threshold[4] , i_clk_c, reset, i2c_master_start_sda_i, 
            \count_threshold_15__N_103[6] , \count_threshold[6] , i2c_master_start_ack, 
            tx_en, state_next_N_83, start_gen_en, out_n_adj_3, VCC_net) /* synthesis syn_module_defined=1 */ ;
    input out_n;
    input GND_net;
    input \count_threshold_15__N_103[4] ;
    output \count_threshold[4] ;
    input i_clk_c;
    input reset;
    output i2c_master_start_sda_i;
    input \count_threshold_15__N_103[6] ;
    output \count_threshold[6] ;
    output i2c_master_start_ack;
    input tx_en;
    input state_next_N_83;
    input start_gen_en;
    input out_n_adj_3;
    input VCC_net;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    
    wire start_delay_N_148, delay_done;
    wire [7:0]n100;
    
    wire n829, o_i2c_master_start_sda_N_144, start_delay_N_146, start_delay, 
        o_i2c_master_start_sda_N_142, n833, n720, o_i2c_master_start_sda_N_145, 
        o_i2c_master_start_ack_N_140, n831, n821, n124, n815, n813;
    
    SB_LUT4 i783_3_lut_4_lut (.I0(start_delay_N_148), .I1(out_n), .I2(delay_done), 
            .I3(n100[2]), .O(n829));   // ../../../source/verilog/i2c_master_start_gen.v(126[7:46])
    defparam i783_3_lut_4_lut.LUT_INIT = 16'h2f22;
    SB_LUT4 start_delay_I_0_2_lut_3_lut (.I0(start_delay_N_148), .I1(out_n), 
            .I2(o_i2c_master_start_sda_N_144), .I3(GND_net), .O(start_delay_N_146));   // ../../../source/verilog/i2c_master_start_gen.v(126[7:46])
    defparam start_delay_I_0_2_lut_3_lut.LUT_INIT = 16'hf2f2;
    SB_DFFS count_threshold_i1 (.Q(\count_threshold[4] ), .C(i_clk_c), .D(\count_threshold_15__N_103[4] ), 
            .S(reset));   // ../../../source/verilog/i2c_master_start_gen.v(146[16] 153[10])
    SB_DFFR start_delay_37 (.Q(start_delay), .C(i_clk_c), .D(start_delay_N_146), 
            .R(reset));   // ../../../source/verilog/i2c_master_start_gen.v(125[16] 132[10])
    SB_DFFS o_i2c_master_start_sda_36 (.Q(i2c_master_start_sda_i), .C(i_clk_c), 
            .D(o_i2c_master_start_sda_N_142), .S(reset));   // ../../../source/verilog/i2c_master_start_gen.v(111[16] 119[10])
    SB_DFFS count_threshold_i2 (.Q(\count_threshold[6] ), .C(i_clk_c), .D(\count_threshold_15__N_103[6] ), 
            .S(reset));   // ../../../source/verilog/i2c_master_start_gen.v(146[16] 153[10])
    SB_DFFS state_FSM_i1 (.Q(n100[0]), .C(i_clk_c), .D(n833), .S(reset));   // ../../../source/verilog/i2c_master_start_gen.v(96[6] 105[14])
    SB_DFFR o_i2c_master_start_ack_38 (.Q(i2c_master_start_ack), .C(i_clk_c), 
            .D(n720), .R(reset));   // ../../../source/verilog/i2c_master_start_gen.v(138[16] 140[10])
    SB_LUT4 i2950_3_lut (.I0(o_i2c_master_start_sda_N_145), .I1(o_i2c_master_start_ack_N_140), 
            .I2(o_i2c_master_start_sda_N_144), .I3(GND_net), .O(o_i2c_master_start_sda_N_142));   // ../../../source/verilog/i2c_master_start_gen.v(116[19] 118[13])
    defparam i2950_3_lut.LUT_INIT = 16'h0101;
    SB_DFFR state_FSM_i2 (.Q(start_delay_N_148), .C(i_clk_c), .D(n831), 
            .R(reset));   // ../../../source/verilog/i2c_master_start_gen.v(96[6] 105[14])
    SB_DFFR state_FSM_i3 (.Q(n100[2]), .C(i_clk_c), .D(n829), .R(reset));   // ../../../source/verilog/i2c_master_start_gen.v(96[6] 105[14])
    SB_DFFR state_FSM_i4 (.Q(n100[3]), .C(i_clk_c), .D(n821), .R(reset));   // ../../../source/verilog/i2c_master_start_gen.v(96[6] 105[14])
    SB_DFFR state_FSM_i5 (.Q(o_i2c_master_start_sda_N_144), .C(i_clk_c), 
            .D(n124), .R(reset));   // ../../../source/verilog/i2c_master_start_gen.v(96[6] 105[14])
    SB_DFFR state_FSM_i6 (.Q(o_i2c_master_start_ack_N_140), .C(i_clk_c), 
            .D(n815), .R(reset));   // ../../../source/verilog/i2c_master_start_gen.v(96[6] 105[14])
    SB_DFFR state_FSM_i7 (.Q(o_i2c_master_start_sda_N_145), .C(i_clk_c), 
            .D(n813), .R(reset));   // ../../../source/verilog/i2c_master_start_gen.v(96[6] 105[14])
    SB_LUT4 i770_4_lut (.I0(o_i2c_master_start_sda_N_145), .I1(out_n), .I2(tx_en), 
            .I3(o_i2c_master_start_ack_N_140), .O(n813));   // ../../../source/verilog/i2c_master_start_gen.v(96[6] 105[14])
    defparam i770_4_lut.LUT_INIT = 16'hce0a;
    SB_LUT4 i1581_2_lut (.I0(delay_done), .I1(o_i2c_master_start_ack_N_140), 
            .I2(GND_net), .I3(GND_net), .O(n720));   // ../../../source/verilog/i2c_master_start_gen.v(138[16] 140[10])
    defparam i1581_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i772_3_lut (.I0(o_i2c_master_start_ack_N_140), .I1(o_i2c_master_start_sda_N_144), 
            .I2(out_n), .I3(GND_net), .O(n815));   // ../../../source/verilog/i2c_master_start_gen.v(96[6] 105[14])
    defparam i772_3_lut.LUT_INIT = 16'hcece;
    SB_LUT4 i776_4_lut (.I0(n100[3]), .I1(delay_done), .I2(state_next_N_83), 
            .I3(n100[2]), .O(n821));   // ../../../source/verilog/i2c_master_start_gen.v(96[6] 105[14])
    defparam i776_4_lut.LUT_INIT = 16'hce0a;
    SB_LUT4 i785_4_lut (.I0(start_delay_N_148), .I1(start_gen_en), .I2(out_n), 
            .I3(n100[0]), .O(n831));   // ../../../source/verilog/i2c_master_start_gen.v(96[6] 105[14])
    defparam i785_4_lut.LUT_INIT = 16'heca0;
    SB_LUT4 i787_4_lut (.I0(n100[0]), .I1(tx_en), .I2(start_gen_en), .I3(o_i2c_master_start_sda_N_145), 
            .O(n833));   // ../../../source/verilog/i2c_master_start_gen.v(96[6] 105[14])
    defparam i787_4_lut.LUT_INIT = 16'hce0a;
    SB_LUT4 i78_2_lut_3_lut (.I0(out_n_adj_3), .I1(out_n), .I2(n100[3]), 
            .I3(GND_net), .O(n124));   // ../../../source/verilog/i2c_master_start_gen.v(96[6] 105[14])
    defparam i78_2_lut_3_lut.LUT_INIT = 16'h1010;
    delay_gen_U0 delay_gen (.i_clk_c(i_clk_c), .reset(reset), .delay_done(delay_done), 
            .GND_net(GND_net), .VCC_net(VCC_net), .\count_threshold[4] (\count_threshold[4] ), 
            .\count_threshold[6] (\count_threshold[6] ), .start_delay(start_delay)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2c_master_start_gen.v(78[14] 84[5])
    
endmodule
//
// Verilog Description of module delay_gen_U0
//

module delay_gen_U0 (i_clk_c, reset, delay_done, GND_net, VCC_net, 
            \count_threshold[4] , \count_threshold[6] , start_delay) /* synthesis syn_module_defined=1 */ ;
    input i_clk_c;
    input reset;
    output delay_done;
    input GND_net;
    input VCC_net;
    input \count_threshold[4] ;
    input \count_threshold[6] ;
    input start_delay;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    wire [15:0]count_15__N_149;
    wire [15:0]count;   // ../../../source/verilog/delay_gen.v(50[16:21])
    
    wire delay_done_N_181, n2766, n899, n2767, n2758, n2754, n2759, 
        n2765, n2755, n2757, n2764;
    wire [15:0]count_15__N_165;
    
    wire n3061, n2763, n2756, n2762, n20, n2761, n22, n21, n2837, 
        n23, n2760, n2768;
    
    SB_DFFR count_i0 (.Q(count[0]), .C(i_clk_c), .D(count_15__N_149[0]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR delay_done_12 (.Q(delay_done), .C(i_clk_c), .D(delay_done_N_181), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(69[16] 71[10])
    SB_DFFR count_i1 (.Q(count[1]), .C(i_clk_c), .D(count_15__N_149[1]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i2 (.Q(count[2]), .C(i_clk_c), .D(count_15__N_149[2]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i3 (.Q(count[3]), .C(i_clk_c), .D(count_15__N_149[3]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i4 (.Q(count[4]), .C(i_clk_c), .D(count_15__N_149[4]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i5 (.Q(count[5]), .C(i_clk_c), .D(count_15__N_149[5]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i6 (.Q(count[6]), .C(i_clk_c), .D(count_15__N_149[6]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i7 (.Q(count[7]), .C(i_clk_c), .D(count_15__N_149[7]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i8 (.Q(count[8]), .C(i_clk_c), .D(count_15__N_149[8]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i9 (.Q(count[9]), .C(i_clk_c), .D(count_15__N_149[9]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i10 (.Q(count[10]), .C(i_clk_c), .D(count_15__N_149[10]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i11 (.Q(count[11]), .C(i_clk_c), .D(count_15__N_149[11]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i12 (.Q(count[12]), .C(i_clk_c), .D(count_15__N_149[12]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i13 (.Q(count[13]), .C(i_clk_c), .D(count_15__N_149[13]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i14 (.Q(count[14]), .C(i_clk_c), .D(count_15__N_149[14]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_DFFR count_i15 (.Q(count[15]), .C(i_clk_c), .D(count_15__N_149[15]), 
            .R(reset));   // ../../../source/verilog/delay_gen.v(55[16] 63[10])
    SB_LUT4 add_4_add_4_15_lut (.I0(n899), .I1(count[13]), .I2(GND_net), 
            .I3(n2766), .O(count_15__N_149[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_15_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_15 (.CI(n2766), .I0(count[13]), .I1(GND_net), 
            .CO(n2767));
    SB_LUT4 add_4_add_4_7_lut (.I0(n899), .I1(count[5]), .I2(GND_net), 
            .I3(n2758), .O(count_15__N_149[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_7_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_4_add_4_3_lut (.I0(n899), .I1(count[1]), .I2(GND_net), 
            .I3(n2754), .O(count_15__N_149[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_7 (.CI(n2758), .I0(count[5]), .I1(GND_net), .CO(n2759));
    SB_LUT4 add_4_add_4_14_lut (.I0(n899), .I1(count[12]), .I2(GND_net), 
            .I3(n2765), .O(count_15__N_149[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_14_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_14 (.CI(n2765), .I0(count[12]), .I1(GND_net), 
            .CO(n2766));
    SB_CARRY add_4_add_4_3 (.CI(n2754), .I0(count[1]), .I1(GND_net), .CO(n2755));
    SB_LUT4 add_4_add_4_6_lut (.I0(n899), .I1(count[4]), .I2(GND_net), 
            .I3(n2757), .O(count_15__N_149[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_6_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_4_add_4_13_lut (.I0(n899), .I1(count[11]), .I2(GND_net), 
            .I3(n2764), .O(count_15__N_149[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_13_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_13 (.CI(n2764), .I0(count[11]), .I1(GND_net), 
            .CO(n2765));
    SB_LUT4 add_4_add_4_2_lut (.I0(n3061), .I1(count[0]), .I2(GND_net), 
            .I3(VCC_net), .O(count_15__N_165[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_2 (.CI(VCC_net), .I0(count[0]), .I1(GND_net), 
            .CO(n2754));
    SB_CARRY add_4_add_4_6 (.CI(n2757), .I0(count[4]), .I1(GND_net), .CO(n2758));
    SB_LUT4 add_4_add_4_12_lut (.I0(n899), .I1(count[10]), .I2(GND_net), 
            .I3(n2763), .O(count_15__N_149[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_12_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_12 (.CI(n2763), .I0(count[10]), .I1(GND_net), 
            .CO(n2764));
    SB_LUT4 add_4_add_4_5_lut (.I0(n899), .I1(count[3]), .I2(GND_net), 
            .I3(n2756), .O(count_15__N_149[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_5_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_4_add_4_11_lut (.I0(n899), .I1(count[9]), .I2(GND_net), 
            .I3(n2762), .O(count_15__N_149[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_11_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_11 (.CI(n2762), .I0(count[9]), .I1(GND_net), 
            .CO(n2763));
    SB_LUT4 i7_4_lut (.I0(count[1]), .I1(count[7]), .I2(count[3]), .I3(count[2]), 
            .O(n20));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i7_4_lut.LUT_INIT = 16'hffdf;
    SB_CARRY add_4_add_4_5 (.CI(n2756), .I0(count[3]), .I1(GND_net), .CO(n2757));
    SB_LUT4 add_4_add_4_10_lut (.I0(n899), .I1(count[8]), .I2(GND_net), 
            .I3(n2761), .O(count_15__N_149[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_10_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_10 (.CI(n2761), .I0(count[8]), .I1(GND_net), 
            .CO(n2762));
    SB_LUT4 i9_4_lut (.I0(count[0]), .I1(count[14]), .I2(count[13]), .I3(count[9]), 
            .O(n22));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut (.I0(count[15]), .I1(count[10]), .I2(count[5]), .I3(count[12]), 
            .O(n21));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut (.I0(count[4]), .I1(count[6]), .I2(\count_threshold[4] ), 
            .I3(\count_threshold[6] ), .O(n2837));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i1_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i10_3_lut (.I0(count[8]), .I1(n20), .I2(count[11]), .I3(GND_net), 
            .O(n23));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i10_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 add_4_add_4_4_lut (.I0(n899), .I1(count[2]), .I2(GND_net), 
            .I3(n2755), .O(count_15__N_149[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_4_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_4_add_4_9_lut (.I0(n899), .I1(count[7]), .I2(GND_net), 
            .I3(n2760), .O(count_15__N_149[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_9 (.CI(n2760), .I0(count[7]), .I1(GND_net), .CO(n2761));
    SB_LUT4 i2969_4_lut (.I0(n23), .I1(n2837), .I2(n21), .I3(n22), .O(delay_done_N_181));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i2969_4_lut.LUT_INIT = 16'h0001;
    SB_CARRY add_4_add_4_4 (.CI(n2755), .I0(count[2]), .I1(GND_net), .CO(n2756));
    SB_LUT4 add_4_add_4_8_lut (.I0(n899), .I1(count[6]), .I2(GND_net), 
            .I3(n2759), .O(count_15__N_149[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_4_add_4_8 (.CI(n2759), .I0(count[6]), .I1(GND_net), .CO(n2760));
    SB_LUT4 add_4_add_4_17_lut (.I0(n899), .I1(count[15]), .I2(GND_net), 
            .I3(n2768), .O(count_15__N_149[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_4_add_4_16_lut (.I0(n899), .I1(count[14]), .I2(GND_net), 
            .I3(n2767), .O(count_15__N_149[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_add_4_16_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1582_2_lut (.I0(count_15__N_165[0]), .I1(start_delay), .I2(GND_net), 
            .I3(GND_net), .O(count_15__N_149[0]));   // ../../../source/verilog/delay_gen.v(58[19] 62[13])
    defparam i1582_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY add_4_add_4_16 (.CI(n2767), .I0(count[14]), .I1(GND_net), 
            .CO(n2768));
    SB_LUT4 i2966_1_lut (.I0(delay_done_N_181), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3061));   // ../../../source/verilog/delay_gen.v(70[24:50])
    defparam i2966_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i855_2_lut (.I0(delay_done_N_181), .I1(start_delay), .I2(GND_net), 
            .I3(GND_net), .O(n899));   // ../../../source/verilog/delay_gen.v(58[19] 62[13])
    defparam i855_2_lut.LUT_INIT = 16'h1111;
    
endmodule
//
// Verilog Description of module i2c_master_start_detect
//

module i2c_master_start_detect (state_next_N_83, state, i_clk_c, reset, 
            out_n, out_n_adj_2, GND_net, state_N_184, n1186, i2cbus_busy_i_N_475) /* synthesis syn_module_defined=1 */ ;
    output state_next_N_83;
    output state;
    input i_clk_c;
    input reset;
    input out_n;
    input out_n_adj_2;
    input GND_net;
    output state_N_184;
    input n1186;
    output i2cbus_busy_i_N_475;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    
    SB_DFFR state_16 (.Q(state), .C(i_clk_c), .D(state_next_N_83), .R(reset));   // ../../../source/verilog/i2c_master_start_detect.v(61[16] 63[10])
    SB_LUT4 i2947_2_lut (.I0(out_n), .I1(out_n_adj_2), .I2(GND_net), .I3(GND_net), 
            .O(state_next_N_83));
    defparam i2947_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 o_i2c_master_start_detect_I_4_2_lut (.I0(out_n), .I1(out_n_adj_2), 
            .I2(GND_net), .I3(GND_net), .O(state_N_184));   // ../../../source/verilog/i2c_master_start_detect.v(80[42:73])
    defparam o_i2c_master_start_detect_I_4_2_lut.LUT_INIT = 16'h2222;
    SB_DFFR o_i2c_master_start_detect_17 (.Q(i2cbus_busy_i_N_475), .C(i_clk_c), 
            .D(n1186), .R(reset));   // ../../../source/verilog/i2c_master_start_detect.v(78[16] 82[10])
    
endmodule
//
// Verilog Description of module i2c_master_scl_gen
//

module i2c_master_scl_gen (i_clk_div_lsb_c_1, GND_net, VCC_net, i_clk_c, 
            reset, count_reset_N_69, count_eq_modby2, scl_oe_n, n807, 
            o_i2c_master_scl_N_68, n837, count_reset_N_73, n839, count_reset_N_72, 
            n803, o_i2c_master_scl_N_65, n39, n2889, count_en, count_en_N_74, 
            i_mode_reg_c_1, i_mode_reg_c_0, i_clk_div_lsb_c_7, i_clk_div_lsb_c_6, 
            i_clk_div_lsb_c_5, i_clk_div_lsb_c_4, i_clk_div_lsb_c_3, i_clk_div_lsb_c_2) /* synthesis syn_module_defined=1 */ ;
    input i_clk_div_lsb_c_1;
    input GND_net;
    input VCC_net;
    input i_clk_c;
    input reset;
    input count_reset_N_69;
    output count_eq_modby2;
    output scl_oe_n;
    input n807;
    output o_i2c_master_scl_N_68;
    input n837;
    output count_reset_N_73;
    input n839;
    output count_reset_N_72;
    input n803;
    output o_i2c_master_scl_N_65;
    output n39;
    input n2889;
    output count_en;
    input count_en_N_74;
    input i_mode_reg_c_1;
    input i_mode_reg_c_0;
    input i_clk_div_lsb_c_7;
    input i_clk_div_lsb_c_6;
    input i_clk_div_lsb_c_5;
    input i_clk_div_lsb_c_4;
    input i_clk_div_lsb_c_3;
    input i_clk_div_lsb_c_2;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    wire [9:0]modulus_8__N_32;
    wire [9:0]modulus;   // ../../../source/verilog/i2c_master_scl_gen.v(68[15:22])
    wire [8:0]n29;
    
    wire n1080;
    wire [8:0]count;   // ../../../source/verilog/i2c_master_scl_gen.v(69[15:20])
    
    wire count_reset, count_eq_modby2_N_77, o_i2c_master_scl_N_63, n10, 
        n14, n12, n13_adj_617, n11_adj_618, n1330, n2784, n2799, 
        n2798, n2797, n2796, n2795, n2794, n2793, n2792, n2791, 
        n2790, n2789, n2788, n2787, n2786, n2785;
    
    SB_LUT4 sub_7_add_2_add_4_2_lut (.I0(GND_net), .I1(i_clk_div_lsb_c_1), 
            .I2(GND_net), .I3(VCC_net), .O(modulus_8__N_32[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_7_add_2_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFR modulus_i1 (.Q(modulus[0]), .C(i_clk_c), .D(modulus_8__N_32[0]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(160[16] 162[10])
    SB_DFFER count__i6 (.Q(count[6]), .C(i_clk_c), .E(n1080), .D(n29[6]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(147[16] 153[10])
    SB_DFFER count__i5 (.Q(count[5]), .C(i_clk_c), .E(n1080), .D(n29[5]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(147[16] 153[10])
    SB_DFFER count__i4 (.Q(count[4]), .C(i_clk_c), .E(n1080), .D(n29[4]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(147[16] 153[10])
    SB_DFFER count__i3 (.Q(count[3]), .C(i_clk_c), .E(n1080), .D(n29[3]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(147[16] 153[10])
    SB_DFFR count_reset_43 (.Q(count_reset), .C(i_clk_c), .D(count_reset_N_69), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(118[16] 126[10])
    SB_DFFER count__i0 (.Q(count[0]), .C(i_clk_c), .E(n1080), .D(n29[0]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(147[16] 153[10])
    SB_DFFR count_eq_modby2_47 (.Q(count_eq_modby2), .C(i_clk_c), .D(count_eq_modby2_N_77), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(169[16] 171[10])
    SB_DFFS o_i2c_master_scl_42 (.Q(scl_oe_n), .C(i_clk_c), .D(o_i2c_master_scl_N_63), 
            .S(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(104[16] 112[10])
    SB_DFFS state_FSM_i1 (.Q(o_i2c_master_scl_N_68), .C(i_clk_c), .D(n807), 
            .S(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(89[7] 98[14])
    SB_DFFER count__i2 (.Q(count[2]), .C(i_clk_c), .E(n1080), .D(n29[2]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(147[16] 153[10])
    SB_DFFER count__i1 (.Q(count[1]), .C(i_clk_c), .E(n1080), .D(n29[1]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(147[16] 153[10])
    SB_DFFR modulus_i9 (.Q(modulus[8]), .C(i_clk_c), .D(modulus_8__N_32[8]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(160[16] 162[10])
    SB_DFFR modulus_i8 (.Q(modulus[7]), .C(i_clk_c), .D(modulus_8__N_32[7]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(160[16] 162[10])
    SB_DFFR modulus_i7 (.Q(modulus[6]), .C(i_clk_c), .D(modulus_8__N_32[6]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(160[16] 162[10])
    SB_DFFR modulus_i6 (.Q(modulus[5]), .C(i_clk_c), .D(modulus_8__N_32[5]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(160[16] 162[10])
    SB_DFFR modulus_i5 (.Q(modulus[4]), .C(i_clk_c), .D(modulus_8__N_32[4]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(160[16] 162[10])
    SB_DFFR modulus_i4 (.Q(modulus[3]), .C(i_clk_c), .D(modulus_8__N_32[3]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(160[16] 162[10])
    SB_DFFR modulus_i3 (.Q(modulus[2]), .C(i_clk_c), .D(modulus_8__N_32[2]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(160[16] 162[10])
    SB_DFFR modulus_i2 (.Q(modulus[1]), .C(i_clk_c), .D(modulus_8__N_32[1]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(160[16] 162[10])
    SB_DFFR state_FSM_i4 (.Q(count_reset_N_73), .C(i_clk_c), .D(n837), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(89[7] 98[14])
    SB_DFFR state_FSM_i3 (.Q(count_reset_N_72), .C(i_clk_c), .D(n839), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(89[7] 98[14])
    SB_DFFR state_FSM_i2 (.Q(o_i2c_master_scl_N_65), .C(i_clk_c), .D(n803), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(89[7] 98[14])
    SB_DFFER count__i8 (.Q(count[8]), .C(i_clk_c), .E(n1080), .D(n29[8]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(147[16] 153[10])
    SB_DFFER count__i7 (.Q(count[7]), .C(i_clk_c), .E(n1080), .D(n29[7]), 
            .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(147[16] 153[10])
    SB_LUT4 i1_4_lut (.I0(count[2]), .I1(count[3]), .I2(modulus[2]), .I3(modulus[3]), 
            .O(n10));   // ../../../source/verilog/i2c_master_scl_gen.v(170[29:52])
    defparam i1_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i5_3_lut (.I0(count[4]), .I1(n10), .I2(modulus[4]), .I3(GND_net), 
            .O(n14));   // ../../../source/verilog/i2c_master_scl_gen.v(170[29:52])
    defparam i5_3_lut.LUT_INIT = 16'hdede;
    SB_LUT4 i3_4_lut (.I0(count[8]), .I1(count[7]), .I2(modulus[8]), .I3(modulus[7]), 
            .O(n12));   // ../../../source/verilog/i2c_master_scl_gen.v(170[29:52])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i4_4_lut (.I0(count[5]), .I1(count[0]), .I2(modulus[5]), .I3(modulus[0]), 
            .O(n13_adj_617));   // ../../../source/verilog/i2c_master_scl_gen.v(170[29:52])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut (.I0(count[6]), .I1(count[1]), .I2(modulus[6]), .I3(modulus[1]), 
            .O(n11_adj_618));   // ../../../source/verilog/i2c_master_scl_gen.v(170[29:52])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_2_lut (.I0(count_reset_N_73), .I1(count_reset_N_72), .I2(GND_net), 
            .I3(GND_net), .O(n39));   // ../../../source/verilog/i2c_master_scl_gen.v(89[7] 98[14])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_DFFR count_en_44 (.Q(count_en), .C(i_clk_c), .D(n2889), .R(reset));   // ../../../source/verilog/i2c_master_scl_gen.v(133[16] 139[10])
    SB_LUT4 i2959_4_lut (.I0(n11_adj_618), .I1(n13_adj_617), .I2(n12), 
            .I3(n14), .O(count_eq_modby2_N_77));   // ../../../source/verilog/i2c_master_scl_gen.v(170[29:52])
    defparam i2959_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i1_2_lut_3_lut (.I0(count_eq_modby2), .I1(count_reset), .I2(count_en), 
            .I3(GND_net), .O(n1080));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i6_1_lut_2_lut (.I0(count_eq_modby2), .I1(count_reset), .I2(GND_net), 
            .I3(GND_net), .O(n1330));
    defparam i6_1_lut_2_lut.LUT_INIT = 16'h1111;
    SB_CARRY sub_7_add_2_add_4_2 (.CI(VCC_net), .I0(i_clk_div_lsb_c_1), 
            .I1(GND_net), .CO(n2784));
    SB_LUT4 i1_3_lut_4_lut_4_lut (.I0(count_eq_modby2), .I1(o_i2c_master_scl_N_65), 
            .I2(o_i2c_master_scl_N_68), .I3(count_en_N_74), .O(o_i2c_master_scl_N_63));   // ../../../source/verilog/i2c_master_scl_gen.v(169[16] 171[10])
    defparam i1_3_lut_4_lut_4_lut.LUT_INIT = 16'h0bfb;
    SB_LUT4 add_31_add_4_10_lut (.I0(n1330), .I1(count[8]), .I2(GND_net), 
            .I3(n2799), .O(n29[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_31_add_4_10_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_31_add_4_9_lut (.I0(n1330), .I1(count[7]), .I2(GND_net), 
            .I3(n2798), .O(n29[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_31_add_4_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_31_add_4_9 (.CI(n2798), .I0(count[7]), .I1(GND_net), 
            .CO(n2799));
    SB_LUT4 add_31_add_4_8_lut (.I0(n1330), .I1(count[6]), .I2(GND_net), 
            .I3(n2797), .O(n29[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_31_add_4_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_31_add_4_8 (.CI(n2797), .I0(count[6]), .I1(GND_net), 
            .CO(n2798));
    SB_LUT4 add_31_add_4_7_lut (.I0(n1330), .I1(count[5]), .I2(GND_net), 
            .I3(n2796), .O(n29[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_31_add_4_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_31_add_4_7 (.CI(n2796), .I0(count[5]), .I1(GND_net), 
            .CO(n2797));
    SB_LUT4 add_31_add_4_6_lut (.I0(n1330), .I1(count[4]), .I2(GND_net), 
            .I3(n2795), .O(n29[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_31_add_4_6_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_31_add_4_6 (.CI(n2795), .I0(count[4]), .I1(GND_net), 
            .CO(n2796));
    SB_LUT4 add_31_add_4_5_lut (.I0(n1330), .I1(count[3]), .I2(GND_net), 
            .I3(n2794), .O(n29[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_31_add_4_5_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_31_add_4_5 (.CI(n2794), .I0(count[3]), .I1(GND_net), 
            .CO(n2795));
    SB_LUT4 add_31_add_4_4_lut (.I0(n1330), .I1(count[2]), .I2(GND_net), 
            .I3(n2793), .O(n29[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_31_add_4_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_31_add_4_4 (.CI(n2793), .I0(count[2]), .I1(GND_net), 
            .CO(n2794));
    SB_LUT4 add_31_add_4_3_lut (.I0(n1330), .I1(count[1]), .I2(GND_net), 
            .I3(n2792), .O(n29[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_31_add_4_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_31_add_4_3 (.CI(n2792), .I0(count[1]), .I1(GND_net), 
            .CO(n2793));
    SB_LUT4 add_31_add_4_2_lut (.I0(n1330), .I1(count[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n29[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_31_add_4_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_31_add_4_2 (.CI(VCC_net), .I0(count[0]), .I1(GND_net), 
            .CO(n2792));
    SB_LUT4 sub_7_add_2_add_4_10_lut (.I0(GND_net), .I1(i_mode_reg_c_1), 
            .I2(VCC_net), .I3(n2791), .O(modulus_8__N_32[8])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_7_add_2_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_7_add_2_add_4_9_lut (.I0(GND_net), .I1(i_mode_reg_c_0), 
            .I2(VCC_net), .I3(n2790), .O(modulus_8__N_32[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_7_add_2_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_7_add_2_add_4_9 (.CI(n2790), .I0(i_mode_reg_c_0), .I1(VCC_net), 
            .CO(n2791));
    SB_LUT4 sub_7_add_2_add_4_8_lut (.I0(GND_net), .I1(i_clk_div_lsb_c_7), 
            .I2(VCC_net), .I3(n2789), .O(modulus_8__N_32[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_7_add_2_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_7_add_2_add_4_8 (.CI(n2789), .I0(i_clk_div_lsb_c_7), .I1(VCC_net), 
            .CO(n2790));
    SB_LUT4 sub_7_add_2_add_4_7_lut (.I0(GND_net), .I1(i_clk_div_lsb_c_6), 
            .I2(VCC_net), .I3(n2788), .O(modulus_8__N_32[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_7_add_2_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_7_add_2_add_4_7 (.CI(n2788), .I0(i_clk_div_lsb_c_6), .I1(VCC_net), 
            .CO(n2789));
    SB_LUT4 sub_7_add_2_add_4_6_lut (.I0(GND_net), .I1(i_clk_div_lsb_c_5), 
            .I2(VCC_net), .I3(n2787), .O(modulus_8__N_32[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_7_add_2_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_7_add_2_add_4_6 (.CI(n2787), .I0(i_clk_div_lsb_c_5), .I1(VCC_net), 
            .CO(n2788));
    SB_LUT4 sub_7_add_2_add_4_5_lut (.I0(GND_net), .I1(i_clk_div_lsb_c_4), 
            .I2(VCC_net), .I3(n2786), .O(modulus_8__N_32[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_7_add_2_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_7_add_2_add_4_5 (.CI(n2786), .I0(i_clk_div_lsb_c_4), .I1(VCC_net), 
            .CO(n2787));
    SB_LUT4 sub_7_add_2_add_4_4_lut (.I0(GND_net), .I1(i_clk_div_lsb_c_3), 
            .I2(VCC_net), .I3(n2785), .O(modulus_8__N_32[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_7_add_2_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_7_add_2_add_4_4 (.CI(n2785), .I0(i_clk_div_lsb_c_3), .I1(VCC_net), 
            .CO(n2786));
    SB_LUT4 sub_7_add_2_add_4_3_lut (.I0(GND_net), .I1(i_clk_div_lsb_c_2), 
            .I2(GND_net), .I3(n2784), .O(modulus_8__N_32[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_7_add_2_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_7_add_2_add_4_3 (.CI(n2784), .I0(i_clk_div_lsb_c_2), .I1(GND_net), 
            .CO(n2785));
    
endmodule
//
// Verilog Description of module i2c_master_falling_scl_detect
//

module i2c_master_falling_scl_detect (i2c_master_falling_scl_detect, i_clk_c, 
            reset, state, out_n, GND_net, n2885) /* synthesis syn_module_defined=1 */ ;
    output i2c_master_falling_scl_detect;
    input i_clk_c;
    input reset;
    output [1:0]state;
    input out_n;
    input GND_net;
    input n2885;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    wire [1:0]state_1__N_15;
    
    wire n1115;
    
    SB_DFFR o_i2c_master_falling_scl_detect_17 (.Q(i2c_master_falling_scl_detect), 
            .C(i_clk_c), .D(state_1__N_15[1]), .R(reset));   // ../../../source/verilog/i2c_master_falling_scl_detect.v(73[16] 75[10])
    SB_LUT4 i2928_3_lut (.I0(state[0]), .I1(state[1]), .I2(out_n), .I3(GND_net), 
            .O(n1115));
    defparam i2928_3_lut.LUT_INIT = 16'h3636;
    SB_DFFER state_i1 (.Q(state[1]), .C(i_clk_c), .E(n1115), .D(state_1__N_15[1]), 
            .R(reset));   // ../../../source/verilog/i2c_master_falling_scl_detect.v(58[16] 66[10])
    SB_LUT4 i1_2_lut (.I0(state[0]), .I1(state[1]), .I2(GND_net), .I3(GND_net), 
            .O(state_1__N_15[1]));   // ../../../source/verilog/i2c_master_falling_scl_detect.v(61[19] 65[13])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_DFFR state_i0 (.Q(state[0]), .C(i_clk_c), .D(n2885), .R(reset));   // ../../../source/verilog/i2c_master_falling_scl_detect.v(58[16] 66[10])
    
endmodule
//
// Verilog Description of module filter
//

module filter (in_d2, i_clk_c, reset, in_d3, sda_in, GND_net, out_n, 
            sda_in_filtered, n1204) /* synthesis syn_module_defined=1 */ ;
    output in_d2;
    input i_clk_c;
    input reset;
    output in_d3;
    input sda_in;
    input GND_net;
    output out_n;
    output sda_in_filtered;
    input n1204;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    
    wire in_d1, in_N_14;
    
    SB_DFFR in_d2_14 (.Q(in_d2), .C(i_clk_c), .D(in_d1), .R(reset));   // ../../../source/verilog/filter.v(58[16] 62[10])
    SB_DFFR in_d3_15 (.Q(in_d3), .C(i_clk_c), .D(in_d2), .R(reset));   // ../../../source/verilog/filter.v(58[16] 62[10])
    SB_DFFR in_d1_13 (.Q(in_d1), .C(i_clk_c), .D(in_N_14), .R(reset));   // ../../../source/verilog/filter.v(58[16] 62[10])
    SB_LUT4 in_I_0_1_lut (.I0(sda_in), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(in_N_14));   // ../../../source/verilog/filter.v(59[19:22])
    defparam in_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 out_n_I_0_1_lut (.I0(out_n), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(sda_in_filtered));   // ../../../source/verilog/filter.v(67[17:23])
    defparam out_n_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFFR out_n_16 (.Q(out_n), .C(i_clk_c), .D(n1204), .R(reset));   // ../../../source/verilog/filter.v(71[16] 73[10])
    
endmodule
//
// Verilog Description of module filter_U1
//

module filter_U1 (in_d2, i_clk_c, reset, in_d3, scl_in, GND_net, 
            n1205, out_n, count_eq_modby2, count_reset_N_72, count_reset_N_73, 
            n837) /* synthesis syn_module_defined=1 */ ;
    output in_d2;
    input i_clk_c;
    input reset;
    output in_d3;
    input scl_in;
    input GND_net;
    input n1205;
    output out_n;
    input count_eq_modby2;
    input count_reset_N_72;
    input count_reset_N_73;
    output n837;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    
    wire in_d1, in_N_14;
    
    SB_DFFR in_d2_14 (.Q(in_d2), .C(i_clk_c), .D(in_d1), .R(reset));   // ../../../source/verilog/filter.v(58[16] 62[10])
    SB_DFFR in_d3_15 (.Q(in_d3), .C(i_clk_c), .D(in_d2), .R(reset));   // ../../../source/verilog/filter.v(58[16] 62[10])
    SB_DFFR in_d1_13 (.Q(in_d1), .C(i_clk_c), .D(in_N_14), .R(reset));   // ../../../source/verilog/filter.v(58[16] 62[10])
    SB_LUT4 in_I_0_1_lut (.I0(scl_in), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(in_N_14));   // ../../../source/verilog/filter.v(59[19:22])
    defparam in_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFFR out_n_16 (.Q(out_n), .C(i_clk_c), .D(n1205), .R(reset));   // ../../../source/verilog/filter.v(71[16] 73[10])
    SB_LUT4 i1_4_lut (.I0(out_n), .I1(count_eq_modby2), .I2(count_reset_N_72), 
            .I3(count_reset_N_73), .O(n837));   // ../../../source/verilog/filter.v(71[16] 73[10])
    defparam i1_4_lut.LUT_INIT = 16'h5150;
    
endmodule
//
// Verilog Description of module i2c_master_cntrl_fsm_top
//

module i2c_master_cntrl_fsm_top (i_config_reg_c_4, VCC_net, i_clk_c, i_rst_n_N_7, 
            i_byte_cnt_reg_c_4, config_latch_en, i_byte_cnt_reg_c_0, i_config_reg_c_1, 
            i_byte_cnt_reg_c_5, i_config_reg_c_0, tx_done, tx_done_d1, 
            rx_done, rx_done_d1, tx_err_d1, rx_err, rx_err_d1, abort_ack, 
            abort_ack_d1, i_byte_cnt_reg_c_3, i_mode_reg_c_6, i_byte_cnt_reg_c_2, 
            i_byte_cnt_reg_c_1, \count_threshold_15__N_103[4] , GND_net, 
            i_mode_reg_c_7, i_byte_cnt_reg_c_7, i_mode_reg_c_3, rw_mode, 
            i_mode_reg_c_5, \slave_addr[6] , i_slave_addr_reg_c_5, i_byte_cnt_reg_c_6, 
            \slave_addr[3] , \slave_addr[1] , i_slave_addr_reg_c_2, i_slave_addr_reg_c_0, 
            i_config_reg_c_2, i_config_reg_c_3, n2875, o_cmd_status_reg_c_3, 
            n2817, int_out, n1201, n2873, o_cmd_status_reg_c_4, n2897, 
            o_cmd_status_reg_c_5, n2895, o_cmd_status_reg_c_6, n1196, 
            \slave_addr[4] , n1195, \slave_addr[5] , n1194, n1191, 
            \slave_addr[7] , n1190, \slave_addr[2] , n1189, i_slave_addr_reg_c_3, 
            byte_tx_err, i_slave_addr_reg_c_6, i_slave_addr_reg_c_4, i_slave_addr_reg_c_1, 
            n2905, o_cmd_status_reg_c_2, o_cmd_status_reg_c_7, n960, 
            intr_clr_pulse, \count_threshold_15__N_103[6] , i_rst_n_c, 
            i_transmit_data_c_3, o_enable_scl_N_406, o_start_ack_c, i_transmit_data_c_0, 
            i2c_master_stop_detect, o_enable_scl_N_409, n1101, start_gen_en, 
            tx_en, out_n, count_reset_N_73, count_eq_modby2, n807, 
            count_en_N_74, o_i2c_master_scl_N_68, rx_en, o_received_data_valid_c, 
            i2cbus_busy_i, o_enable_scl_N_410, n990, o_transmit_data_request_c, 
            stop_gen_en, transaction_complete, i_transmit_data_c_1, n2871, 
            n2913, n2909, i_transmit_data_c_7, i_transmit_data_c_4, 
            i_transmit_data_c_6, i_transmit_data_c_5, i_transmit_data_c_2, 
            count_reset_N_72, o_i2c_master_scl_N_65, n839, count_en, 
            n2889, i2c_master_start_ack, i2c_master_falling_scl_detect, 
            n803, n39, count_reset_N_69, byte_tx_sda, n1213, o_byte_tx_done_N_537, 
            n1212, n307, n1211, n308, n1210, n309, n1209, n310, 
            n1208, n311, n1207, n312, n1206, n313, n306, state_next_N_83, 
            sda_in_filtered, o_receive_data_c_0, o_rx_data_1__N_563, o_rx_data_2__N_560, 
            o_receive_data_c_6, o_receive_data_c_7, o_rx_data_5__N_551, 
            o_rx_data_4__N_554, o_rx_data_3__N_557, o_receive_data_c_3, 
            o_receive_data_c_4, o_receive_data_c_5, o_byte_rx_done_N_608, 
            o_receive_data_c_2, o_rx_data_6__N_548, o_receive_data_c_1, 
            n1221, n1220, n1219, n1218, n1217, n1216, n1215, n1214, 
            o_rx_data_0__N_566, rx_ack_sda, o_rx_data_7__N_545) /* synthesis syn_module_defined=1 */ ;
    input i_config_reg_c_4;
    input VCC_net;
    input i_clk_c;
    input i_rst_n_N_7;
    input i_byte_cnt_reg_c_4;
    output config_latch_en;
    input i_byte_cnt_reg_c_0;
    input i_config_reg_c_1;
    input i_byte_cnt_reg_c_5;
    input i_config_reg_c_0;
    output tx_done;
    output tx_done_d1;
    output rx_done;
    output rx_done_d1;
    output tx_err_d1;
    output rx_err;
    output rx_err_d1;
    output abort_ack;
    output abort_ack_d1;
    input i_byte_cnt_reg_c_3;
    input i_mode_reg_c_6;
    input i_byte_cnt_reg_c_2;
    input i_byte_cnt_reg_c_1;
    output \count_threshold_15__N_103[4] ;
    input GND_net;
    input i_mode_reg_c_7;
    input i_byte_cnt_reg_c_7;
    input i_mode_reg_c_3;
    output rw_mode;
    input i_mode_reg_c_5;
    output \slave_addr[6] ;
    input i_slave_addr_reg_c_5;
    input i_byte_cnt_reg_c_6;
    output \slave_addr[3] ;
    output \slave_addr[1] ;
    input i_slave_addr_reg_c_2;
    input i_slave_addr_reg_c_0;
    input i_config_reg_c_2;
    input i_config_reg_c_3;
    input n2875;
    output o_cmd_status_reg_c_3;
    input n2817;
    output int_out;
    input n1201;
    input n2873;
    output o_cmd_status_reg_c_4;
    input n2897;
    output o_cmd_status_reg_c_5;
    input n2895;
    output o_cmd_status_reg_c_6;
    input n1196;
    output \slave_addr[4] ;
    input n1195;
    output \slave_addr[5] ;
    input n1194;
    input n1191;
    output \slave_addr[7] ;
    input n1190;
    output \slave_addr[2] ;
    input n1189;
    input i_slave_addr_reg_c_3;
    output byte_tx_err;
    input i_slave_addr_reg_c_6;
    input i_slave_addr_reg_c_4;
    input i_slave_addr_reg_c_1;
    input n2905;
    output o_cmd_status_reg_c_2;
    output o_cmd_status_reg_c_7;
    output n960;
    output intr_clr_pulse;
    output \count_threshold_15__N_103[6] ;
    input i_rst_n_c;
    input i_transmit_data_c_3;
    output o_enable_scl_N_406;
    output o_start_ack_c;
    input i_transmit_data_c_0;
    input i2c_master_stop_detect;
    output o_enable_scl_N_409;
    input n1101;
    output start_gen_en;
    output tx_en;
    input out_n;
    input count_reset_N_73;
    input count_eq_modby2;
    output n807;
    output count_en_N_74;
    input o_i2c_master_scl_N_68;
    output rx_en;
    output o_received_data_valid_c;
    output i2cbus_busy_i;
    output o_enable_scl_N_410;
    output n990;
    output o_transmit_data_request_c;
    output stop_gen_en;
    output transaction_complete;
    input i_transmit_data_c_1;
    input n2871;
    input n2913;
    input n2909;
    input i_transmit_data_c_7;
    input i_transmit_data_c_4;
    input i_transmit_data_c_6;
    input i_transmit_data_c_5;
    input i_transmit_data_c_2;
    input count_reset_N_72;
    input o_i2c_master_scl_N_65;
    output n839;
    input count_en;
    output n2889;
    input i2c_master_start_ack;
    input i2c_master_falling_scl_detect;
    output n803;
    input n39;
    output count_reset_N_69;
    output byte_tx_sda;
    input n1213;
    output o_byte_tx_done_N_537;
    input n1212;
    output n307;
    input n1211;
    output n308;
    input n1210;
    output n309;
    input n1209;
    output n310;
    input n1208;
    output n311;
    input n1207;
    output n312;
    input n1206;
    output n313;
    output n306;
    input state_next_N_83;
    input sda_in_filtered;
    output o_receive_data_c_0;
    output o_rx_data_1__N_563;
    output o_rx_data_2__N_560;
    output o_receive_data_c_6;
    output o_receive_data_c_7;
    output o_rx_data_5__N_551;
    output o_rx_data_4__N_554;
    output o_rx_data_3__N_557;
    output o_receive_data_c_3;
    output o_receive_data_c_4;
    output o_receive_data_c_5;
    output o_byte_rx_done_N_608;
    output o_receive_data_c_2;
    output o_rx_data_6__N_548;
    output o_receive_data_c_1;
    input n1221;
    input n1220;
    input n1219;
    input n1218;
    input n1217;
    input n1216;
    input n1215;
    input n1214;
    output o_rx_data_0__N_566;
    output rx_ack_sda;
    output o_rx_data_7__N_545;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    
    wire abort_reg1;
    wire [7:0]byte_cnt;   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(131[15:23])
    
    wire intr_clr_reg, start_reg1, start_reg2, abort_reg2, intr_clr_reg1, 
        intr_clr_reg2, tx_err;
    wire [1:0]bps_mode;   // ../../../source/verilog/i2c_master_controller.v(85[14:22])
    
    wire slave_changed_N_310, slave_changed, adr_mode, n6, n8, rxintr_en, 
        txintr_en, int_rst, n2931, n1425, n12, n10, n6_adj_615, 
        n4;
    wire [7:0]tx_data;   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(82[15:22])
    
    wire o_tx_en_N_481, rx_en_adj_616, o_rxfifo_wren_N_453, n709, n705;
    wire [9:0]n579;
    
    wire byte_tx_done, n79, n849, n2847, n1064, n1067, n1061, 
        byte_rx_done;
    
    SB_DFFER abort_reg1_103 (.Q(abort_reg1), .C(i_clk_c), .E(VCC_net), 
            .D(i_config_reg_c_4), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(243[15] 247[9])
    SB_DFFER byte_cnt_i0_i4 (.Q(byte_cnt[4]), .C(i_clk_c), .E(config_latch_en), 
            .D(i_byte_cnt_reg_c_4), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_DFFER byte_cnt_i0_i0 (.Q(byte_cnt[0]), .C(i_clk_c), .E(config_latch_en), 
            .D(i_byte_cnt_reg_c_0), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_DFFR intr_clr_reg_105 (.Q(intr_clr_reg), .C(i_clk_c), .D(i_config_reg_c_1), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(243[15] 247[9])
    SB_DFFER byte_cnt_i0_i5 (.Q(byte_cnt[5]), .C(i_clk_c), .E(config_latch_en), 
            .D(i_byte_cnt_reg_c_5), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_DFFER start_reg1_104 (.Q(start_reg1), .C(i_clk_c), .E(VCC_net), 
            .D(i_config_reg_c_0), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(243[15] 247[9])
    SB_DFFR start_reg2_106 (.Q(start_reg2), .C(i_clk_c), .D(start_reg1), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(257[13] 262[9])
    SB_DFFR abort_reg2_107 (.Q(abort_reg2), .C(i_clk_c), .D(abort_reg1), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(257[13] 262[9])
    SB_DFFR intr_clr_reg1_108 (.Q(intr_clr_reg1), .C(i_clk_c), .D(intr_clr_reg), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(257[13] 262[9])
    SB_DFFR intr_clr_reg2_109 (.Q(intr_clr_reg2), .C(i_clk_c), .D(intr_clr_reg1), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(257[13] 262[9])
    SB_DFFR tx_done_d1_110 (.Q(tx_done_d1), .C(i_clk_c), .D(tx_done), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(285[15] 293[9])
    SB_DFFR rx_done_d1_111 (.Q(rx_done_d1), .C(i_clk_c), .D(rx_done), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(285[15] 293[9])
    SB_DFFR tx_err_d1_112 (.Q(tx_err_d1), .C(i_clk_c), .D(tx_err), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(285[15] 293[9])
    SB_DFFR rx_err_d1_113 (.Q(rx_err_d1), .C(i_clk_c), .D(rx_err), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(285[15] 293[9])
    SB_DFFR abort_ack_d1_114 (.Q(abort_ack_d1), .C(i_clk_c), .D(abort_ack), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(285[15] 293[9])
    SB_DFFER byte_cnt_i0_i3 (.Q(byte_cnt[3]), .C(i_clk_c), .E(config_latch_en), 
            .D(i_byte_cnt_reg_c_3), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_DFFER o_bps_mode_i0_i0 (.Q(bps_mode[0]), .C(i_clk_c), .E(config_latch_en), 
            .D(i_mode_reg_c_6), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(425[15] 432[9])
    SB_DFFR slave_changed_126 (.Q(slave_changed), .C(i_clk_c), .D(slave_changed_N_310), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(414[15] 416[9])
    SB_DFFER byte_cnt_i0_i2 (.Q(byte_cnt[2]), .C(i_clk_c), .E(config_latch_en), 
            .D(i_byte_cnt_reg_c_2), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_DFFER byte_cnt_i0_i1 (.Q(byte_cnt[1]), .C(i_clk_c), .E(config_latch_en), 
            .D(i_byte_cnt_reg_c_1), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_LUT4 i1538_1_lut (.I0(bps_mode[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(\count_threshold_15__N_103[4] ));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(425[15] 432[9])
    defparam i1538_1_lut.LUT_INIT = 16'h5555;
    SB_DFFER o_bps_mode_i0_i1 (.Q(bps_mode[1]), .C(i_clk_c), .E(config_latch_en), 
            .D(i_mode_reg_c_7), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(425[15] 432[9])
    SB_DFFER byte_cnt_i0_i7 (.Q(byte_cnt[7]), .C(i_clk_c), .E(config_latch_en), 
            .D(i_byte_cnt_reg_c_7), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_DFFER rw_mode_130 (.Q(rw_mode), .C(i_clk_c), .E(config_latch_en), 
            .D(i_mode_reg_c_3), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(425[15] 432[9])
    SB_DFFER adr_mode_128 (.Q(adr_mode), .C(i_clk_c), .E(config_latch_en), 
            .D(i_mode_reg_c_5), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(425[15] 432[9])
    SB_LUT4 slave_addr_7__I_0_i6_2_lut (.I0(\slave_addr[6] ), .I1(i_slave_addr_reg_c_5), 
            .I2(GND_net), .I3(GND_net), .O(n6));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(415[27:64])
    defparam slave_addr_7__I_0_i6_2_lut.LUT_INIT = 16'h6666;
    SB_DFFER byte_cnt_i0_i6 (.Q(byte_cnt[6]), .C(i_clk_c), .E(config_latch_en), 
            .D(i_byte_cnt_reg_c_6), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_LUT4 i1_4_lut (.I0(\slave_addr[3] ), .I1(\slave_addr[1] ), .I2(i_slave_addr_reg_c_2), 
            .I3(i_slave_addr_reg_c_0), .O(n8));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(415[27:64])
    defparam i1_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFER rxintr_en_102 (.Q(rxintr_en), .C(i_clk_c), .E(config_latch_en), 
            .D(i_config_reg_c_2), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(230[15] 235[9])
    SB_DFFER txintr_en_101 (.Q(txintr_en), .C(i_clk_c), .E(config_latch_en), 
            .D(i_config_reg_c_3), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(230[15] 235[9])
    SB_DFFR rx_err_reg_120 (.Q(o_cmd_status_reg_c_3), .C(i_clk_c), .D(n2875), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(335[15] 341[9])
    SB_DFFR o_int_out_131 (.Q(int_out), .C(i_clk_c), .D(n2817), .R(int_rst));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(446[15] 457[9])
    SB_DFFR slave_addr__i3 (.Q(\slave_addr[3] ), .C(i_clk_c), .D(n1201), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_LUT4 i1_2_lut (.I0(rw_mode), .I1(n2931), .I2(GND_net), .I3(GND_net), 
            .O(n1425));
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_DFFR tx_err_reg_119 (.Q(o_cmd_status_reg_c_4), .C(i_clk_c), .D(n2873), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(323[15] 329[9])
    SB_DFFR rx_done_reg_118 (.Q(o_cmd_status_reg_c_5), .C(i_clk_c), .D(n2897), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(311[15] 317[9])
    SB_DFFR tx_done_reg_117 (.Q(o_cmd_status_reg_c_6), .C(i_clk_c), .D(n2895), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(299[15] 305[9])
    SB_DFFR slave_addr__i4 (.Q(\slave_addr[4] ), .C(i_clk_c), .D(n1196), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_DFFR slave_addr__i5 (.Q(\slave_addr[5] ), .C(i_clk_c), .D(n1195), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_DFFR slave_addr__i6 (.Q(\slave_addr[6] ), .C(i_clk_c), .D(n1194), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_DFFR slave_addr__i7 (.Q(\slave_addr[7] ), .C(i_clk_c), .D(n1191), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_DFFR slave_addr__i2 (.Q(\slave_addr[2] ), .C(i_clk_c), .D(n1190), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_DFFR slave_addr__i1 (.Q(\slave_addr[1] ), .C(i_clk_c), .D(n1189), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(398[15] 403[9])
    SB_LUT4 i6_4_lut (.I0(\slave_addr[4] ), .I1(n12), .I2(n8), .I3(i_slave_addr_reg_c_3), 
            .O(slave_changed_N_310));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(415[27:64])
    defparam i6_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i1_2_lut_adj_50 (.I0(rw_mode), .I1(byte_tx_err), .I2(GND_net), 
            .I3(GND_net), .O(tx_err));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(425[15] 432[9])
    defparam i1_2_lut_adj_50.LUT_INIT = 16'h4444;
    SB_LUT4 i1_2_lut_adj_51 (.I0(rw_mode), .I1(byte_tx_err), .I2(GND_net), 
            .I3(GND_net), .O(rx_err));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(425[15] 432[9])
    defparam i1_2_lut_adj_51.LUT_INIT = 16'h8888;
    SB_LUT4 i5_4_lut (.I0(\slave_addr[7] ), .I1(n10), .I2(n6), .I3(i_slave_addr_reg_c_6), 
            .O(n12));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(415[27:64])
    defparam i5_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i3_4_lut (.I0(\slave_addr[5] ), .I1(\slave_addr[2] ), .I2(i_slave_addr_reg_c_4), 
            .I3(i_slave_addr_reg_c_1), .O(n10));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(415[27:64])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFR abort_ack_reg_121 (.Q(o_cmd_status_reg_c_2), .C(i_clk_c), .D(n2905), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(347[15] 353[9])
    SB_LUT4 i1_2_lut_adj_52 (.I0(intr_clr_reg1), .I1(intr_clr_reg2), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_615));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(440[20] 441[69])
    defparam i1_2_lut_adj_52.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_53 (.I0(o_cmd_status_reg_c_7), .I1(o_cmd_status_reg_c_4), 
            .I2(o_cmd_status_reg_c_6), .I3(o_cmd_status_reg_c_5), .O(n4));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(448[16] 449[59])
    defparam i1_4_lut_adj_53.LUT_INIT = 16'hdddc;
    SB_LUT4 i914_4_lut (.I0(o_cmd_status_reg_c_3), .I1(txintr_en), .I2(n4), 
            .I3(rxintr_en), .O(n960));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(446[15] 457[9])
    defparam i914_4_lut.LUT_INIT = 16'hfac8;
    SB_LUT4 intr_clr_reg1_I_0_2_lut (.I0(intr_clr_reg1), .I1(intr_clr_reg2), 
            .I2(GND_net), .I3(GND_net), .O(intr_clr_pulse));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(268[27:57])
    defparam intr_clr_reg1_I_0_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2972_2_lut (.I0(bps_mode[1]), .I1(bps_mode[0]), .I2(GND_net), 
            .I3(GND_net), .O(\count_threshold_15__N_103[6] ));
    defparam i2972_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i4_4_lut_4_lut (.I0(i_config_reg_c_1), .I1(i_rst_n_c), .I2(intr_clr_reg), 
            .I3(n6_adj_615), .O(int_rst));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(440[20] 441[69])
    defparam i4_4_lut_4_lut.LUT_INIT = 16'hfffb;
    i2c_master_cntrl_fsm cntrl_fsm (.tx_data({tx_data}), .i_transmit_data_c_3(i_transmit_data_c_3), 
            .GND_net(GND_net), .o_enable_scl_N_406(o_enable_scl_N_406), 
            .VCC_net(VCC_net), .o_start_ack_c(o_start_ack_c), .i_clk_c(i_clk_c), 
            .i_rst_n_N_7(i_rst_n_N_7), .adr_mode(adr_mode), .i_transmit_data_c_0(i_transmit_data_c_0), 
            .i2c_master_stop_detect(i2c_master_stop_detect), .start_reg2(start_reg2), 
            .o_enable_scl_N_409(o_enable_scl_N_409), .\slave_addr[3] (\slave_addr[3] ), 
            .n1101(n1101), .o_cmd_status_reg_c_7(o_cmd_status_reg_c_7), 
            .rw_mode(rw_mode), .start_gen_en(start_gen_en), .o_tx_en_N_481(o_tx_en_N_481), 
            .tx_en(tx_en), .out_n(out_n), .count_reset_N_73(count_reset_N_73), 
            .count_eq_modby2(count_eq_modby2), .n807(n807), .count_en_N_74(count_en_N_74), 
            .o_i2c_master_scl_N_68(o_i2c_master_scl_N_68), .rx_en(rx_en), 
            .rx_en_adj_1(rx_en_adj_616), .abort_ack(abort_ack), .o_rxfifo_wren_N_453(o_rxfifo_wren_N_453), 
            .o_received_data_valid_c(o_received_data_valid_c), .config_latch_en(config_latch_en), 
            .slave_changed(slave_changed), .i2cbus_busy_i(i2cbus_busy_i), 
            .o_enable_scl_N_410(o_enable_scl_N_410), .byte_cnt({byte_cnt}), 
            .n990(n990), .n709(n709), .o_transmit_data_request_c(o_transmit_data_request_c), 
            .rx_done(rx_done), .tx_done(tx_done), .stop_gen_en(stop_gen_en), 
            .n705(n705), .transaction_complete(transaction_complete), .i_transmit_data_c_1(i_transmit_data_c_1), 
            .n2871(n2871), .o_txfifo_rden_N_469(n579[5]), .o_txfifo_rden_N_470(n579[6]), 
            .byte_tx_done(byte_tx_done), .o_tx_data_7__N_428(n579[4]), .n79(n79), 
            .\slave_addr[1] (\slave_addr[1] ), .n849(n849), .n2847(n2847), 
            .n1064(n1064), .n1067(n1067), .o_i2c_sda_en_N_452(n579[7]), 
            .n1061(n1061), .n2913(n2913), .n2909(n2909), .i_transmit_data_c_7(i_transmit_data_c_7), 
            .i_transmit_data_c_4(i_transmit_data_c_4), .\slave_addr[7] (\slave_addr[7] ), 
            .\slave_addr[6] (\slave_addr[6] ), .\slave_addr[5] (\slave_addr[5] ), 
            .i_transmit_data_c_6(i_transmit_data_c_6), .i_transmit_data_c_5(i_transmit_data_c_5), 
            .i_transmit_data_c_2(i_transmit_data_c_2), .\slave_addr[2] (\slave_addr[2] ), 
            .\slave_addr[4] (\slave_addr[4] ), .count_reset_N_72(count_reset_N_72), 
            .o_i2c_master_scl_N_65(o_i2c_master_scl_N_65), .n839(n839), 
            .count_en(count_en), .n2889(n2889), .i2c_master_start_ack(i2c_master_start_ack), 
            .i2c_master_falling_scl_detect(i2c_master_falling_scl_detect), 
            .abort_reg2(abort_reg2), .n803(n803), .n39(n39), .count_reset_N_69(count_reset_N_69)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(149[25] 186[5])
    i2c_master_byte_tx_fsm byte_tx_fsm (.o_transmit_data_request_c(o_transmit_data_request_c), 
            .o_tx_data_7__N_428(n579[4]), .o_txfifo_rden_N_470(n579[6]), 
            .i2c_master_falling_scl_detect(i2c_master_falling_scl_detect), 
            .o_enable_scl_N_406(o_enable_scl_N_406), .o_tx_en_N_481(o_tx_en_N_481), 
            .GND_net(GND_net), .byte_tx_sda(byte_tx_sda), .i_clk_c(i_clk_c), 
            .i_rst_n_N_7(i_rst_n_N_7), .byte_tx_done(byte_tx_done), .adr_mode(adr_mode), 
            .o_txfifo_rden_N_469(n579[5]), .n2931(n2931), .byte_tx_err(byte_tx_err), 
            .abort_reg2(abort_reg2), .transaction_complete(transaction_complete), 
            .n1213(n1213), .o_byte_tx_done_N_537(o_byte_tx_done_N_537), 
            .n1212(n1212), .n307(n307), .n1211(n1211), .n308(n308), 
            .n1210(n1210), .n309(n309), .n1209(n1209), .n310(n310), 
            .n1208(n1208), .n311(n311), .n1207(n1207), .n312(n312), 
            .n1206(n1206), .n313(n313), .n1425(n1425), .n709(n709), 
            .n306(n306), .byte_rx_done(byte_rx_done), .n79(n79), .o_i2c_sda_en_N_452(n579[7]), 
            .n1061(n1061), .tx_data({tx_data}), .rw_mode(rw_mode), .n1067(n1067), 
            .tx_en(tx_en), .state_next_N_83(state_next_N_83), .n1064(n1064), 
            .n2847(n2847), .o_rxfifo_wren_N_453(o_rxfifo_wren_N_453), .n849(n849), 
            .n705(n705)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(188[27] 202[5])
    i2c_master_byte_rx_fsm byte_rx_fsm (.sda_in_filtered(sda_in_filtered), 
            .o_receive_data_c_0(o_receive_data_c_0), .i_clk_c(i_clk_c), 
            .out_n(out_n), .o_rx_data_1__N_563(o_rx_data_1__N_563), .GND_net(GND_net), 
            .o_rx_data_2__N_560(o_rx_data_2__N_560), .o_receive_data_c_6(o_receive_data_c_6), 
            .o_receive_data_c_7(o_receive_data_c_7), .o_rx_data_5__N_551(o_rx_data_5__N_551), 
            .o_rx_data_4__N_554(o_rx_data_4__N_554), .byte_rx_done(byte_rx_done), 
            .i_rst_n_N_7(i_rst_n_N_7), .o_rx_data_3__N_557(o_rx_data_3__N_557), 
            .o_receive_data_c_3(o_receive_data_c_3), .o_receive_data_c_4(o_receive_data_c_4), 
            .o_receive_data_c_5(o_receive_data_c_5), .i2c_master_falling_scl_detect(i2c_master_falling_scl_detect), 
            .o_byte_rx_done_N_608(o_byte_rx_done_N_608), .o_receive_data_c_2(o_receive_data_c_2), 
            .o_rx_data_6__N_548(o_rx_data_6__N_548), .o_receive_data_c_1(o_receive_data_c_1), 
            .n1221(n1221), .n1220(n1220), .n1219(n1219), .n1218(n1218), 
            .n1217(n1217), .n1216(n1216), .n1215(n1215), .n1214(n1214), 
            .o_rx_data_0__N_566(o_rx_data_0__N_566), .rx_ack_sda(rx_ack_sda), 
            .o_rx_data_7__N_545(o_rx_data_7__N_545), .transaction_complete(transaction_complete), 
            .rx_en(rx_en_adj_616)) /* synthesis syn_module_defined=1 */ ;   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(204[27] 218[5])
    
endmodule
//
// Verilog Description of module i2c_master_cntrl_fsm
//

module i2c_master_cntrl_fsm (tx_data, i_transmit_data_c_3, GND_net, o_enable_scl_N_406, 
            VCC_net, o_start_ack_c, i_clk_c, i_rst_n_N_7, adr_mode, 
            i_transmit_data_c_0, i2c_master_stop_detect, start_reg2, o_enable_scl_N_409, 
            \slave_addr[3] , n1101, o_cmd_status_reg_c_7, rw_mode, start_gen_en, 
            o_tx_en_N_481, tx_en, out_n, count_reset_N_73, count_eq_modby2, 
            n807, count_en_N_74, o_i2c_master_scl_N_68, rx_en, rx_en_adj_1, 
            abort_ack, o_rxfifo_wren_N_453, o_received_data_valid_c, config_latch_en, 
            slave_changed, i2cbus_busy_i, o_enable_scl_N_410, byte_cnt, 
            n990, n709, o_transmit_data_request_c, rx_done, tx_done, 
            stop_gen_en, n705, transaction_complete, i_transmit_data_c_1, 
            n2871, o_txfifo_rden_N_469, o_txfifo_rden_N_470, byte_tx_done, 
            o_tx_data_7__N_428, n79, \slave_addr[1] , n849, n2847, 
            n1064, n1067, o_i2c_sda_en_N_452, n1061, n2913, n2909, 
            i_transmit_data_c_7, i_transmit_data_c_4, \slave_addr[7] , 
            \slave_addr[6] , \slave_addr[5] , i_transmit_data_c_6, i_transmit_data_c_5, 
            i_transmit_data_c_2, \slave_addr[2] , \slave_addr[4] , count_reset_N_72, 
            o_i2c_master_scl_N_65, n839, count_en, n2889, i2c_master_start_ack, 
            i2c_master_falling_scl_detect, abort_reg2, n803, n39, count_reset_N_69) /* synthesis syn_module_defined=1 */ ;
    output [7:0]tx_data;
    input i_transmit_data_c_3;
    input GND_net;
    output o_enable_scl_N_406;
    input VCC_net;
    output o_start_ack_c;
    input i_clk_c;
    input i_rst_n_N_7;
    input adr_mode;
    input i_transmit_data_c_0;
    input i2c_master_stop_detect;
    input start_reg2;
    output o_enable_scl_N_409;
    input \slave_addr[3] ;
    input n1101;
    output o_cmd_status_reg_c_7;
    input rw_mode;
    output start_gen_en;
    input o_tx_en_N_481;
    output tx_en;
    input out_n;
    input count_reset_N_73;
    input count_eq_modby2;
    output n807;
    output count_en_N_74;
    input o_i2c_master_scl_N_68;
    output rx_en;
    output rx_en_adj_1;
    output abort_ack;
    input o_rxfifo_wren_N_453;
    output o_received_data_valid_c;
    output config_latch_en;
    input slave_changed;
    output i2cbus_busy_i;
    output o_enable_scl_N_410;
    input [7:0]byte_cnt;
    output n990;
    input n709;
    output o_transmit_data_request_c;
    output rx_done;
    output tx_done;
    output stop_gen_en;
    input n705;
    output transaction_complete;
    input i_transmit_data_c_1;
    input n2871;
    output o_txfifo_rden_N_469;
    output o_txfifo_rden_N_470;
    input byte_tx_done;
    output o_tx_data_7__N_428;
    output n79;
    input \slave_addr[1] ;
    input n849;
    input n2847;
    input n1064;
    input n1067;
    output o_i2c_sda_en_N_452;
    input n1061;
    input n2913;
    input n2909;
    input i_transmit_data_c_7;
    input i_transmit_data_c_4;
    input \slave_addr[7] ;
    input \slave_addr[6] ;
    input \slave_addr[5] ;
    input i_transmit_data_c_6;
    input i_transmit_data_c_5;
    input i_transmit_data_c_2;
    input \slave_addr[2] ;
    input \slave_addr[4] ;
    input count_reset_N_72;
    input o_i2c_master_scl_N_65;
    output n839;
    input count_en;
    output n2889;
    input i2c_master_start_ack;
    input i2c_master_falling_scl_detect;
    input abort_reg2;
    output n803;
    input n39;
    output count_reset_N_69;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    
    wire n788, n2954, n3025, n2963;
    wire [9:0]n579;
    
    wire n841, o_i2c_busy_N_435, n96;
    wire [7:0]o_tx_data_7__N_320;
    wire [7:0]n26;
    wire [7:0]byte_count_i;   // ../../../source/verilog/i2c_master_cntrl_fsm.v(105[16:28])
    
    wire n1107, o_start_gen_en_N_471, n1327, n701, o_config_latch_en_N_429;
    wire [3:0]state_next_3__N_332;
    
    wire n716, n10, n9, n11, n12_adj_612, n729, n1137, n95, 
        n2994, n2960, n843, n2922, n847, n857, n2966, n2975, 
        n24_adj_614, n2998, n3012, n2969, n2972, o_config_latch_en_N_431, 
        n2957, n2806, n2805, n2804, n2803, n2802, n2801, n2800, 
        n226;
    
    SB_LUT4 i2859_3_lut (.I0(tx_data[3]), .I1(i_transmit_data_c_3), .I2(n788), 
            .I3(GND_net), .O(n2954));
    defparam i2859_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFER o_start_ack_193 (.Q(o_start_ack_c), .C(i_clk_c), .E(VCC_net), 
            .D(o_enable_scl_N_406), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(380[16] 382[10])
    SB_LUT4 i2930_2_lut (.I0(n788), .I1(adr_mode), .I2(GND_net), .I3(GND_net), 
            .O(n3025));
    defparam i2930_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i2868_3_lut (.I0(tx_data[0]), .I1(i_transmit_data_c_0), .I2(n788), 
            .I3(GND_net), .O(n2963));
    defparam i2868_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i795_3_lut_4_lut (.I0(n579[9]), .I1(i2c_master_stop_detect), 
            .I2(start_reg2), .I3(o_enable_scl_N_409), .O(n841));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(406[13:54])
    defparam i795_3_lut_4_lut.LUT_INIT = 16'h8f88;
    SB_LUT4 i2943_2_lut_3_lut (.I0(n579[9]), .I1(i2c_master_stop_detect), 
            .I2(o_enable_scl_N_409), .I3(GND_net), .O(o_i2c_busy_N_435));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(406[13:54])
    defparam i2943_2_lut_3_lut.LUT_INIT = 16'h0707;
    SB_LUT4 i2860_4_lut (.I0(n3025), .I1(n2954), .I2(n96), .I3(\slave_addr[3] ), 
            .O(o_tx_data_7__N_320[3]));
    defparam i2860_4_lut.LUT_INIT = 16'hac0c;
    SB_DFFER byte_count_i__i0 (.Q(byte_count_i[0]), .C(i_clk_c), .E(n1101), 
            .D(n26[0]), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(245[16] 251[10])
    SB_DFFR o_tx_data_i7 (.Q(tx_data[7]), .C(i_clk_c), .D(o_tx_data_7__N_320[7]), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(297[18] 307[10])
    SB_DFFR o_tx_data_i6 (.Q(tx_data[6]), .C(i_clk_c), .D(o_tx_data_7__N_320[6]), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(297[18] 307[10])
    SB_DFFR o_tx_data_i5 (.Q(tx_data[5]), .C(i_clk_c), .D(o_tx_data_7__N_320[5]), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(297[18] 307[10])
    SB_DFFR o_tx_data_i4 (.Q(tx_data[4]), .C(i_clk_c), .D(o_tx_data_7__N_320[4]), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(297[18] 307[10])
    SB_DFFR o_tx_data_i3 (.Q(tx_data[3]), .C(i_clk_c), .D(o_tx_data_7__N_320[3]), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(297[18] 307[10])
    SB_DFFR o_tx_data_i2 (.Q(tx_data[2]), .C(i_clk_c), .D(o_tx_data_7__N_320[2]), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(297[18] 307[10])
    SB_DFFR o_tx_data_i1 (.Q(tx_data[1]), .C(i_clk_c), .D(o_tx_data_7__N_320[1]), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(297[18] 307[10])
    SB_DFFER byte_count_i__i6 (.Q(byte_count_i[6]), .C(i_clk_c), .E(n1101), 
            .D(n26[6]), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(245[16] 251[10])
    SB_DFFER byte_count_i__i5 (.Q(byte_count_i[5]), .C(i_clk_c), .E(n1101), 
            .D(n26[5]), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(245[16] 251[10])
    SB_DFFER byte_count_i__i4 (.Q(byte_count_i[4]), .C(i_clk_c), .E(n1101), 
            .D(n26[4]), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(245[16] 251[10])
    SB_DFFER byte_count_i__i3 (.Q(byte_count_i[3]), .C(i_clk_c), .E(n1101), 
            .D(n26[3]), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(245[16] 251[10])
    SB_DFFER o_i2c_busy_196 (.Q(o_cmd_status_reg_c_7), .C(i_clk_c), .E(n1107), 
            .D(o_i2c_busy_N_435), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(404[16] 411[10])
    SB_LUT4 i2869_4_lut (.I0(rw_mode), .I1(n2963), .I2(n96), .I3(n788), 
            .O(o_tx_data_7__N_320[0]));
    defparam i2869_4_lut.LUT_INIT = 16'h0cac;
    SB_DFFR o_start_gen_en_180 (.Q(start_gen_en), .C(i_clk_c), .D(o_start_gen_en_N_471), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(201[16] 209[10])
    SB_DFFER byte_count_i__i2 (.Q(byte_count_i[2]), .C(i_clk_c), .E(n1101), 
            .D(n26[2]), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(245[16] 251[10])
    SB_DFFER byte_count_i__i1 (.Q(byte_count_i[1]), .C(i_clk_c), .E(n1101), 
            .D(n26[1]), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(245[16] 251[10])
    SB_DFFR o_tx_data_i0 (.Q(tx_data[0]), .C(i_clk_c), .D(o_tx_data_7__N_320[0]), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(297[18] 307[10])
    SB_DFFR o_tx_en_188 (.Q(tx_en), .C(i_clk_c), .D(o_tx_en_N_481), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(313[16] 323[10])
    SB_LUT4 i1_4_lut (.I0(out_n), .I1(n1327), .I2(count_reset_N_73), .I3(count_eq_modby2), 
            .O(n807));
    defparam i1_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i1_2_lut (.I0(count_en_N_74), .I1(o_i2c_master_scl_N_68), .I2(GND_net), 
            .I3(GND_net), .O(n1327));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(228[16] 235[10])
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_DFFR o_rx_en_190 (.Q(rx_en_adj_1), .C(i_clk_c), .D(rx_en), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(342[16] 344[10])
    SB_DFFR o_abort_ack_197 (.Q(abort_ack), .C(i_clk_c), .D(n701), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(417[16] 419[10])
    SB_DFFER o_rxfifo_wren_189 (.Q(o_received_data_valid_c), .C(i_clk_c), 
            .E(VCC_net), .D(o_rxfifo_wren_N_453), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(334[16] 336[10])
    SB_DFFR o_config_latch_en_199 (.Q(config_latch_en), .C(i_clk_c), .D(o_config_latch_en_N_429), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(442[16] 446[10])
    SB_LUT4 i_start_I_0_234_2_lut (.I0(start_reg2), .I1(slave_changed), 
            .I2(GND_net), .I3(GND_net), .O(state_next_3__N_332[1]));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(445[11:40])
    defparam i_start_I_0_234_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 o_start_gen_en_I_0_4_lut (.I0(state_next_3__N_332[1]), .I1(i2cbus_busy_i), 
            .I2(n579[1]), .I3(o_enable_scl_N_410), .O(o_start_gen_en_N_471));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(204[19] 208[13])
    defparam o_start_gen_en_I_0_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 i1619_3_lut (.I0(start_reg2), .I1(o_enable_scl_N_410), .I2(slave_changed), 
            .I3(GND_net), .O(n716));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(215[16] 218[10])
    defparam i1619_3_lut.LUT_INIT = 16'hc4c4;
    SB_LUT4 i2_4_lut (.I0(byte_count_i[2]), .I1(byte_count_i[4]), .I2(byte_cnt[2]), 
            .I3(byte_cnt[4]), .O(n10));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(260[22:50])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_44 (.I0(byte_count_i[0]), .I1(byte_count_i[6]), 
            .I2(byte_cnt[0]), .I3(byte_cnt[6]), .O(n9));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(260[22:50])
    defparam i1_4_lut_adj_44.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(n9), .I1(n11), .I2(n10), .I3(n12_adj_612), 
            .O(n990));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(260[22:50])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFR o_txfifo_rden_186 (.Q(o_transmit_data_request_c), .C(i_clk_c), 
            .D(n709), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(281[16] 290[10])
    SB_DFFER o_rx_done_195 (.Q(rx_done), .C(i_clk_c), .E(n1137), .D(n729), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(389[16] 398[10])
    SB_DFFS state_FSM_i0 (.Q(o_enable_scl_N_409), .C(i_clk_c), .D(n841), 
            .S(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    SB_DFFER byte_count_i__i7 (.Q(byte_count_i[7]), .C(i_clk_c), .E(n1101), 
            .D(n26[7]), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(245[16] 251[10])
    SB_DFFER o_tx_done_194 (.Q(tx_done), .C(i_clk_c), .E(n1137), .D(n95), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(389[16] 398[10])
    SB_DFFR o_stop_gen_en_181 (.Q(stop_gen_en), .C(i_clk_c), .D(n716), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(215[16] 218[10])
    SB_LUT4 i2939_2_lut (.I0(n579[2]), .I1(rw_mode), .I2(GND_net), .I3(GND_net), 
            .O(n95));
    defparam i2939_2_lut.LUT_INIT = 16'h1111;
    SB_DFFR rx_en_191 (.Q(rx_en), .C(i_clk_c), .D(n705), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(350[16] 358[10])
    SB_LUT4 i1_3_lut (.I0(o_enable_scl_N_410), .I1(n579[2]), .I2(transaction_complete), 
            .I3(GND_net), .O(n1137));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(389[16] 398[10])
    defparam i1_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i1_2_lut_adj_45 (.I0(n579[2]), .I1(rw_mode), .I2(GND_net), 
            .I3(GND_net), .O(n729));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    defparam i1_2_lut_adj_45.LUT_INIT = 16'h4444;
    SB_LUT4 i2899_2_lut (.I0(adr_mode), .I1(n788), .I2(GND_net), .I3(GND_net), 
            .O(n2994));
    defparam i2899_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i2865_3_lut (.I0(tx_data[1]), .I1(i_transmit_data_c_1), .I2(n788), 
            .I3(GND_net), .O(n2960));
    defparam i2865_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFR o_transaction_complete_184 (.Q(transaction_complete), .C(i_clk_c), 
            .D(n2871), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(257[16] 263[10])
    SB_LUT4 i1_3_lut_4_lut (.I0(o_txfifo_rden_N_469), .I1(o_txfifo_rden_N_470), 
            .I2(byte_tx_done), .I3(o_tx_data_7__N_428), .O(n79));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf0e0;
    SB_LUT4 i2866_4_lut (.I0(\slave_addr[1] ), .I1(n2960), .I2(n96), .I3(n2994), 
            .O(o_tx_data_7__N_320[1]));
    defparam i2866_4_lut.LUT_INIT = 16'hac0c;
    SB_DFFR state_FSM_i1 (.Q(n579[1]), .C(i_clk_c), .D(n843), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    SB_DFFR state_FSM_i2 (.Q(n579[2]), .C(i_clk_c), .D(n2922), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    SB_DFFR state_FSM_i3 (.Q(o_enable_scl_N_406), .C(i_clk_c), .D(n847), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    SB_DFFR state_FSM_i4 (.Q(o_tx_data_7__N_428), .C(i_clk_c), .D(n849), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    SB_DFFR state_FSM_i5 (.Q(o_txfifo_rden_N_469), .C(i_clk_c), .D(n2847), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    SB_DFFR state_FSM_i6 (.Q(o_txfifo_rden_N_470), .C(i_clk_c), .D(n1064), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    SB_DFFR state_FSM_i7 (.Q(o_i2c_sda_en_N_452), .C(i_clk_c), .D(n1067), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    SB_DFFR state_FSM_i8 (.Q(o_enable_scl_N_410), .C(i_clk_c), .D(n1061), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    SB_DFFR state_FSM_i9 (.Q(n579[9]), .C(i_clk_c), .D(n857), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    SB_DFFR i2cbus_busy_i_192 (.Q(i2cbus_busy_i), .C(i_clk_c), .D(n2913), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(368[16] 374[10])
    SB_DFFR o_enable_scl_182 (.Q(count_en_N_74), .C(i_clk_c), .D(n2909), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(228[16] 235[10])
    SB_LUT4 i1_2_lut_3_lut (.I0(o_txfifo_rden_N_469), .I1(o_txfifo_rden_N_470), 
            .I2(o_tx_data_7__N_428), .I3(GND_net), .O(n788));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0e0e;
    SB_LUT4 i2871_3_lut (.I0(tx_data[7]), .I1(i_transmit_data_c_7), .I2(n788), 
            .I3(GND_net), .O(n2966));
    defparam i2871_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2880_3_lut (.I0(tx_data[4]), .I1(i_transmit_data_c_4), .I2(n788), 
            .I3(GND_net), .O(n2975));
    defparam i2880_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_46 (.I0(count_en_N_74), .I1(n990), .I2(GND_net), 
            .I3(GND_net), .O(n24_adj_614));
    defparam i1_2_lut_adj_46.LUT_INIT = 16'h8888;
    SB_LUT4 i4_4_lut (.I0(byte_count_i[1]), .I1(byte_count_i[7]), .I2(byte_cnt[1]), 
            .I3(byte_cnt[7]), .O(n12_adj_612));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(260[22:50])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i2872_4_lut (.I0(\slave_addr[7] ), .I1(n2966), .I2(n96), .I3(n2998), 
            .O(o_tx_data_7__N_320[7]));
    defparam i2872_4_lut.LUT_INIT = 16'hfcac;
    SB_LUT4 i1_2_lut_adj_47 (.I0(o_tx_data_7__N_428), .I1(o_txfifo_rden_N_469), 
            .I2(GND_net), .I3(GND_net), .O(n96));
    defparam i1_2_lut_adj_47.LUT_INIT = 16'heeee;
    SB_LUT4 i2875_4_lut (.I0(n3012), .I1(n2969), .I2(n96), .I3(\slave_addr[6] ), 
            .O(o_tx_data_7__N_320[6]));
    defparam i2875_4_lut.LUT_INIT = 16'hfcac;
    SB_LUT4 i2878_4_lut (.I0(n3012), .I1(n2972), .I2(n96), .I3(\slave_addr[5] ), 
            .O(o_tx_data_7__N_320[5]));
    defparam i2878_4_lut.LUT_INIT = 16'hfcac;
    SB_LUT4 i3_4_lut (.I0(byte_count_i[3]), .I1(byte_count_i[5]), .I2(byte_cnt[3]), 
            .I3(byte_cnt[5]), .O(n11));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(260[22:50])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 o_config_latch_en_I_0_2_lut_3_lut_4_lut (.I0(o_enable_scl_N_409), 
            .I1(start_reg2), .I2(o_enable_scl_N_410), .I3(slave_changed), 
            .O(o_config_latch_en_N_429));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(443[31:65])
    defparam o_config_latch_en_I_0_2_lut_3_lut_4_lut.LUT_INIT = 16'h88c8;
    SB_LUT4 i2903_2_lut (.I0(adr_mode), .I1(n788), .I2(GND_net), .I3(GND_net), 
            .O(n2998));
    defparam i2903_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2874_3_lut (.I0(tx_data[6]), .I1(i_transmit_data_c_6), .I2(n788), 
            .I3(GND_net), .O(n2969));
    defparam i2874_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 o_enable_scl_N_410_I_0_221_2_lut_3_lut (.I0(o_enable_scl_N_410), 
            .I1(start_reg2), .I2(slave_changed), .I3(GND_net), .O(o_config_latch_en_N_431));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(444[31] 445[41])
    defparam o_enable_scl_N_410_I_0_221_2_lut_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 i2877_3_lut (.I0(tx_data[5]), .I1(i_transmit_data_c_5), .I2(n788), 
            .I3(GND_net), .O(n2972));
    defparam i2877_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2862_3_lut (.I0(tx_data[2]), .I1(i_transmit_data_c_2), .I2(n788), 
            .I3(GND_net), .O(n2957));
    defparam i2862_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2863_4_lut (.I0(\slave_addr[2] ), .I1(n2957), .I2(n96), .I3(n2994), 
            .O(o_tx_data_7__N_320[2]));
    defparam i2863_4_lut.LUT_INIT = 16'hac0c;
    SB_LUT4 i2917_2_lut (.I0(n788), .I1(adr_mode), .I2(GND_net), .I3(GND_net), 
            .O(n3012));
    defparam i2917_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i2881_4_lut (.I0(n3012), .I1(n2975), .I2(n96), .I3(\slave_addr[4] ), 
            .O(o_tx_data_7__N_320[4]));
    defparam i2881_4_lut.LUT_INIT = 16'hfcac;
    SB_LUT4 add_57_add_4_9_lut (.I0(n24_adj_614), .I1(byte_count_i[7]), 
            .I2(GND_net), .I3(n2806), .O(n26[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_57_add_4_9_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_57_add_4_8_lut (.I0(n24_adj_614), .I1(byte_count_i[6]), 
            .I2(GND_net), .I3(n2805), .O(n26[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_57_add_4_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_57_add_4_8 (.CI(n2805), .I0(byte_count_i[6]), .I1(GND_net), 
            .CO(n2806));
    SB_LUT4 add_57_add_4_7_lut (.I0(n24_adj_614), .I1(byte_count_i[5]), 
            .I2(GND_net), .I3(n2804), .O(n26[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_57_add_4_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_57_add_4_7 (.CI(n2804), .I0(byte_count_i[5]), .I1(GND_net), 
            .CO(n2805));
    SB_LUT4 add_57_add_4_6_lut (.I0(n24_adj_614), .I1(byte_count_i[4]), 
            .I2(GND_net), .I3(n2803), .O(n26[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_57_add_4_6_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_57_add_4_6 (.CI(n2803), .I0(byte_count_i[4]), .I1(GND_net), 
            .CO(n2804));
    SB_LUT4 add_57_add_4_5_lut (.I0(n24_adj_614), .I1(byte_count_i[3]), 
            .I2(GND_net), .I3(n2802), .O(n26[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_57_add_4_5_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_57_add_4_5 (.CI(n2802), .I0(byte_count_i[3]), .I1(GND_net), 
            .CO(n2803));
    SB_LUT4 add_57_add_4_4_lut (.I0(n24_adj_614), .I1(byte_count_i[2]), 
            .I2(GND_net), .I3(n2801), .O(n26[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_57_add_4_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_57_add_4_4 (.CI(n2801), .I0(byte_count_i[2]), .I1(GND_net), 
            .CO(n2802));
    SB_LUT4 add_57_add_4_3_lut (.I0(n24_adj_614), .I1(byte_count_i[1]), 
            .I2(GND_net), .I3(n2800), .O(n26[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_57_add_4_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_57_add_4_3 (.CI(n2800), .I0(byte_count_i[1]), .I1(GND_net), 
            .CO(n2801));
    SB_LUT4 add_57_add_4_2_lut (.I0(n24_adj_614), .I1(byte_count_i[0]), 
            .I2(GND_net), .I3(VCC_net), .O(n26[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_57_add_4_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_57_add_4_2 (.CI(VCC_net), .I0(byte_count_i[0]), .I1(GND_net), 
            .CO(n2800));
    SB_LUT4 i70_4_lut (.I0(out_n), .I1(count_eq_modby2), .I2(count_reset_N_72), 
            .I3(o_i2c_master_scl_N_65), .O(n839));   // ../../../source/verilog/filter.v(51[9:14])
    defparam i70_4_lut.LUT_INIT = 16'heca0;
    SB_LUT4 i1_4_lut_adj_48 (.I0(count_en_N_74), .I1(o_i2c_master_scl_N_68), 
            .I2(count_en), .I3(i2c_master_stop_detect), .O(n2889));   // ../../../source/verilog/i2c_master_scl_gen.v(66[15:23])
    defparam i1_4_lut_adj_48.LUT_INIT = 16'haaba;
    SB_LUT4 i811_4_lut (.I0(n579[9]), .I1(state_next_3__N_332[1]), .I2(i2c_master_stop_detect), 
            .I3(o_enable_scl_N_410), .O(n857));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    defparam i811_4_lut.LUT_INIT = 16'h3b0a;
    SB_LUT4 i1_2_lut_4_lut (.I0(n579[2]), .I1(n579[9]), .I2(i2c_master_stop_detect), 
            .I3(o_enable_scl_N_409), .O(n1107));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hffea;
    SB_LUT4 i797_3_lut_4_lut (.I0(o_enable_scl_N_409), .I1(start_reg2), 
            .I2(i2cbus_busy_i), .I3(n579[1]), .O(n843));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(443[31:65])
    defparam i797_3_lut_4_lut.LUT_INIT = 16'h8f88;
    SB_LUT4 i801_4_lut (.I0(o_enable_scl_N_406), .I1(i2c_master_start_ack), 
            .I2(i2c_master_falling_scl_detect), .I3(n579[2]), .O(n847));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    defparam i801_4_lut.LUT_INIT = 16'hce0a;
    SB_LUT4 i1549_2_lut (.I0(abort_reg2), .I1(o_enable_scl_N_410), .I2(GND_net), 
            .I3(GND_net), .O(n701));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(417[16] 419[10])
    defparam i1549_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i162_2_lut (.I0(i2cbus_busy_i), .I1(n579[1]), .I2(GND_net), 
            .I3(GND_net), .O(n226));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    defparam i162_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_49 (.I0(o_config_latch_en_N_431), .I1(n226), .I2(n579[2]), 
            .I3(i2c_master_start_ack), .O(n2922));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(128[7] 190[14])
    defparam i1_4_lut_adj_49.LUT_INIT = 16'heefe;
    SB_LUT4 i760_2_lut_3_lut_4_lut (.I0(count_en_N_74), .I1(o_i2c_master_scl_N_68), 
            .I2(o_i2c_master_scl_N_65), .I3(count_eq_modby2), .O(n803));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(228[16] 235[10])
    defparam i760_2_lut_3_lut_4_lut.LUT_INIT = 16'h88f8;
    SB_LUT4 i1_4_lut_4_lut (.I0(count_en_N_74), .I1(o_i2c_master_scl_N_68), 
            .I2(out_n), .I3(n39), .O(count_reset_N_69));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(228[16] 235[10])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hb888;
    
endmodule
//
// Verilog Description of module i2c_master_byte_tx_fsm
//

module i2c_master_byte_tx_fsm (o_transmit_data_request_c, o_tx_data_7__N_428, 
            o_txfifo_rden_N_470, i2c_master_falling_scl_detect, o_enable_scl_N_406, 
            o_tx_en_N_481, GND_net, byte_tx_sda, i_clk_c, i_rst_n_N_7, 
            byte_tx_done, adr_mode, o_txfifo_rden_N_469, n2931, byte_tx_err, 
            abort_reg2, transaction_complete, n1213, o_byte_tx_done_N_537, 
            n1212, n307, n1211, n308, n1210, n309, n1209, n310, 
            n1208, n311, n1207, n312, n1206, n313, n1425, n709, 
            n306, byte_rx_done, n79, o_i2c_sda_en_N_452, n1061, tx_data, 
            rw_mode, n1067, tx_en, state_next_N_83, n1064, n2847, 
            o_rxfifo_wren_N_453, n849, n705) /* synthesis syn_module_defined=1 */ ;
    input o_transmit_data_request_c;
    input o_tx_data_7__N_428;
    input o_txfifo_rden_N_470;
    input i2c_master_falling_scl_detect;
    input o_enable_scl_N_406;
    output o_tx_en_N_481;
    input GND_net;
    output byte_tx_sda;
    input i_clk_c;
    input i_rst_n_N_7;
    output byte_tx_done;
    input adr_mode;
    input o_txfifo_rden_N_469;
    output n2931;
    output byte_tx_err;
    input abort_reg2;
    input transaction_complete;
    input n1213;
    output o_byte_tx_done_N_537;
    input n1212;
    output n307;
    input n1211;
    output n308;
    input n1210;
    output n309;
    input n1209;
    output n310;
    input n1208;
    output n311;
    input n1207;
    output n312;
    input n1206;
    output n313;
    input n1425;
    output n709;
    output n306;
    input byte_rx_done;
    input n79;
    input o_i2c_sda_en_N_452;
    output n1061;
    input [7:0]tx_data;
    input rw_mode;
    output n1067;
    input tx_en;
    input state_next_N_83;
    output n1064;
    output n2847;
    output o_rxfifo_wren_N_453;
    output n849;
    output n705;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    
    wire n2988, n8, o_byte_tx_sda_N_542, n699, n859;
    wire [15:0]n298;
    
    wire n55, n1, n2883, n875;
    wire [0:0]n545;
    
    wire n834, n835, n970, n971, n108, n969, n966, n2981;
    
    SB_LUT4 i22_4_lut (.I0(o_transmit_data_request_c), .I1(n2988), .I2(o_tx_data_7__N_428), 
            .I3(o_txfifo_rden_N_470), .O(n8));
    defparam i22_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i21_3_lut (.I0(n8), .I1(i2c_master_falling_scl_detect), .I2(o_enable_scl_N_406), 
            .I3(GND_net), .O(o_tx_en_N_481));
    defparam i21_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS o_byte_tx_sda_31 (.Q(byte_tx_sda), .C(i_clk_c), .D(o_byte_tx_sda_N_542), 
            .S(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(127[16] 141[10])
    SB_DFFR o_byte_tx_done_34 (.Q(byte_tx_done), .C(i_clk_c), .D(n699), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(179[16] 182[10])
    SB_DFFS state_FSM_i1 (.Q(n298[0]), .C(i_clk_c), .D(n859), .S(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    SB_LUT4 i1_2_lut (.I0(adr_mode), .I1(o_tx_data_7__N_428), .I2(GND_net), 
            .I3(GND_net), .O(n55));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(133[15:23])
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1_4_lut (.I0(n1), .I1(byte_tx_done), .I2(n55), .I3(o_txfifo_rden_N_469), 
            .O(n2931));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(133[15:23])
    defparam i1_4_lut.LUT_INIT = 16'h4440;
    SB_LUT4 i1_3_lut (.I0(byte_tx_err), .I1(abort_reg2), .I2(transaction_complete), 
            .I3(GND_net), .O(n1));
    defparam i1_3_lut.LUT_INIT = 16'hfefe;
    SB_DFFR state_FSM_i10 (.Q(o_byte_tx_done_N_537), .C(i_clk_c), .D(n1213), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    SB_DFFR state_FSM_i8 (.Q(n307), .C(i_clk_c), .D(n1212), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    SB_DFFR state_FSM_i7 (.Q(n308), .C(i_clk_c), .D(n1211), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    SB_DFFR state_FSM_i6 (.Q(n309), .C(i_clk_c), .D(n1210), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    SB_DFFR state_FSM_i5 (.Q(n310), .C(i_clk_c), .D(n1209), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    SB_DFFR state_FSM_i4 (.Q(n311), .C(i_clk_c), .D(n1208), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    SB_DFFR state_FSM_i3 (.Q(n312), .C(i_clk_c), .D(n1207), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    SB_DFFR state_FSM_i2 (.Q(n313), .C(i_clk_c), .D(n1206), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    SB_LUT4 i1_4_lut_adj_37 (.I0(o_txfifo_rden_N_470), .I1(n1425), .I2(byte_tx_done), 
            .I3(n1), .O(n709));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(133[15:23])
    defparam i1_4_lut_adj_37.LUT_INIT = 16'hccec;
    SB_DFFR o_byte_tx_err_33 (.Q(byte_tx_err), .C(i_clk_c), .D(n2883), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(164[16] 169[10])
    SB_DFFR state_FSM_i9 (.Q(n306), .C(i_clk_c), .D(n875), .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    SB_LUT4 i1404_4_lut_4_lut (.I0(n1), .I1(byte_rx_done), .I2(n79), .I3(o_i2c_sda_en_N_452), 
            .O(n1061));   // ../../../source/verilog/i2c_master_cntrl_fsm.v(80[23:32])
    defparam i1404_4_lut_4_lut.LUT_INIT = 16'ha8a0;
    SB_LUT4 i1548_2_lut (.I0(i2c_master_falling_scl_detect), .I1(o_byte_tx_done_N_537), 
            .I2(GND_net), .I3(GND_net), .O(n699));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(179[16] 182[10])
    defparam i1548_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 mux_437_i1_3_lut (.I0(tx_data[7]), .I1(tx_data[6]), .I2(n307), 
            .I3(GND_net), .O(n545[0]));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(128[10] 140[17])
    defparam mux_437_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i788_3_lut (.I0(n545[0]), .I1(tx_data[5]), .I2(n308), .I3(GND_net), 
            .O(n834));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(128[10] 140[17])
    defparam i788_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i789_3_lut (.I0(n834), .I1(tx_data[4]), .I2(n309), .I3(GND_net), 
            .O(n835));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(128[10] 140[17])
    defparam i789_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i923_3_lut (.I0(n835), .I1(tx_data[3]), .I2(n310), .I3(GND_net), 
            .O(n970));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(128[10] 140[17])
    defparam i923_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i924_3_lut (.I0(n970), .I1(tx_data[2]), .I2(n311), .I3(GND_net), 
            .O(n971));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(128[10] 140[17])
    defparam i924_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut (.I0(rw_mode), .I1(n2931), .I2(n108), .I3(o_i2c_sda_en_N_452), 
            .O(n1067));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(133[15:23])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h8f88;
    SB_LUT4 i922_3_lut (.I0(n971), .I1(tx_data[1]), .I2(n312), .I3(GND_net), 
            .O(n969));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(128[10] 140[17])
    defparam i922_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i919_3_lut (.I0(n969), .I1(tx_data[0]), .I2(n313), .I3(GND_net), 
            .O(n966));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(128[10] 140[17])
    defparam i919_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut (.I0(n298[0]), .I1(n966), .I2(o_byte_tx_done_N_537), 
            .I3(GND_net), .O(o_byte_tx_sda_N_542));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(128[10] 140[17])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i829_4_lut (.I0(n306), .I1(tx_en), .I2(i2c_master_falling_scl_detect), 
            .I3(n298[0]), .O(n875));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    defparam i829_4_lut.LUT_INIT = 16'hce0a;
    SB_LUT4 i1_4_lut_adj_38 (.I0(byte_tx_err), .I1(o_byte_tx_done_N_537), 
            .I2(byte_tx_done), .I3(state_next_N_83), .O(n2883));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(89[15:26])
    defparam i1_4_lut_adj_38.LUT_INIT = 16'hce0a;
    SB_LUT4 i1_2_lut_adj_39 (.I0(n1), .I1(byte_rx_done), .I2(GND_net), 
            .I3(GND_net), .O(n108));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(89[15:26])
    defparam i1_2_lut_adj_39.LUT_INIT = 16'h8888;
    SB_LUT4 i813_3_lut_4_lut (.I0(n298[0]), .I1(i2c_master_falling_scl_detect), 
            .I2(o_byte_tx_done_N_537), .I3(tx_en), .O(n859));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(85[7] 117[14])
    defparam i813_3_lut_4_lut.LUT_INIT = 16'hc0ea;
    SB_LUT4 i1_4_lut_adj_40 (.I0(byte_tx_done), .I1(n1425), .I2(o_txfifo_rden_N_470), 
            .I3(n1), .O(n1064));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(133[15:23])
    defparam i1_4_lut_adj_40.LUT_INIT = 16'hdcfc;
    SB_LUT4 i2923_2_lut (.I0(o_tx_data_7__N_428), .I1(adr_mode), .I2(GND_net), 
            .I3(GND_net), .O(n2981));
    defparam i2923_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut (.I0(o_txfifo_rden_N_469), .I1(n2981), .I2(byte_tx_done), 
            .I3(n1), .O(n2847));
    defparam i12_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_41 (.I0(o_i2c_sda_en_N_452), .I1(byte_rx_done), 
            .I2(GND_net), .I3(GND_net), .O(o_rxfifo_wren_N_453));   // ../../../source/verilog/i2c_master_byte_tx_fsm.v(164[16] 169[10])
    defparam i1_2_lut_adj_41.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_42 (.I0(o_tx_data_7__N_428), .I1(i2c_master_falling_scl_detect), 
            .I2(byte_tx_done), .I3(o_enable_scl_N_406), .O(n849));
    defparam i1_4_lut_adj_42.LUT_INIT = 16'hce0a;
    SB_LUT4 i2927_2_lut (.I0(adr_mode), .I1(byte_tx_done), .I2(GND_net), 
            .I3(GND_net), .O(n2988));
    defparam i2927_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_4_lut_adj_43 (.I0(rw_mode), .I1(n2931), .I2(n1), 
            .I3(o_rxfifo_wren_N_453), .O(n705));   // ../../../source/verilog/i2c_master_cntrl_fsm_top.v(133[15:23])
    defparam i1_3_lut_4_lut_adj_43.LUT_INIT = 16'h8f88;
    
endmodule
//
// Verilog Description of module i2c_master_byte_rx_fsm
//

module i2c_master_byte_rx_fsm (sda_in_filtered, o_receive_data_c_0, i_clk_c, 
            out_n, o_rx_data_1__N_563, GND_net, o_rx_data_2__N_560, 
            o_receive_data_c_6, o_receive_data_c_7, o_rx_data_5__N_551, 
            o_rx_data_4__N_554, byte_rx_done, i_rst_n_N_7, o_rx_data_3__N_557, 
            o_receive_data_c_3, o_receive_data_c_4, o_receive_data_c_5, 
            i2c_master_falling_scl_detect, o_byte_rx_done_N_608, o_receive_data_c_2, 
            o_rx_data_6__N_548, o_receive_data_c_1, n1221, n1220, n1219, 
            n1218, n1217, n1216, n1215, n1214, o_rx_data_0__N_566, 
            rx_ack_sda, o_rx_data_7__N_545, transaction_complete, rx_en) /* synthesis syn_module_defined=1 */ ;
    input sda_in_filtered;
    output o_receive_data_c_0;
    input i_clk_c;
    input out_n;
    output o_rx_data_1__N_563;
    input GND_net;
    output o_rx_data_2__N_560;
    output o_receive_data_c_6;
    output o_receive_data_c_7;
    output o_rx_data_5__N_551;
    output o_rx_data_4__N_554;
    output byte_rx_done;
    input i_rst_n_N_7;
    output o_rx_data_3__N_557;
    output o_receive_data_c_3;
    output o_receive_data_c_4;
    output o_receive_data_c_5;
    input i2c_master_falling_scl_detect;
    output o_byte_rx_done_N_608;
    output o_receive_data_c_2;
    output o_rx_data_6__N_548;
    output o_receive_data_c_1;
    input n1221;
    input n1220;
    input n1219;
    input n1218;
    input n1217;
    input n1216;
    input n1215;
    input n1214;
    output o_rx_data_0__N_566;
    output rx_ack_sda;
    output o_rx_data_7__N_545;
    input transaction_complete;
    input rx_en;
    
    wire i_clk_c /* synthesis SET_AS_NETWORK=i_clk_c, is_clock=1 */ ;   // ../../../source/verilog/i2c_master_controller_top.v(58[58:63])
    
    wire o_rx_data_0__N_565, o_rx_data_1__N_562, o_rx_data_2__N_559, o_rx_data_6__N_547, 
        o_rx_data_7__N_544, o_rx_data_5__N_550, o_rx_data_4__N_553, n415, 
        o_rx_data_3__N_556, n879;
    wire [15:0]n396;
    
    wire n1178, n1180, n895;
    
    SB_DFFE o_rx_data_0__66 (.Q(o_receive_data_c_0), .C(i_clk_c), .E(o_rx_data_0__N_565), 
            .D(sda_in_filtered));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(166[12] 170[8])
    SB_LUT4 i_i2c_bus_scl_I_0_83_2_lut (.I0(out_n), .I1(o_rx_data_1__N_563), 
            .I2(GND_net), .I3(GND_net), .O(o_rx_data_1__N_562));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(161[11:44])
    defparam i_i2c_bus_scl_I_0_83_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i_i2c_bus_scl_I_0_81_2_lut (.I0(out_n), .I1(o_rx_data_2__N_560), 
            .I2(GND_net), .I3(GND_net), .O(o_rx_data_2__N_559));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(155[11:44])
    defparam i_i2c_bus_scl_I_0_81_2_lut.LUT_INIT = 16'h4444;
    SB_DFFE o_rx_data_6__60 (.Q(o_receive_data_c_6), .C(i_clk_c), .E(o_rx_data_6__N_547), 
            .D(sda_in_filtered));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(130[12] 134[8])
    SB_DFFE o_rx_data_7__59 (.Q(o_receive_data_c_7), .C(i_clk_c), .E(o_rx_data_7__N_544), 
            .D(sda_in_filtered));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(124[12] 128[8])
    SB_LUT4 i_i2c_bus_scl_I_0_75_2_lut (.I0(out_n), .I1(o_rx_data_5__N_551), 
            .I2(GND_net), .I3(GND_net), .O(o_rx_data_5__N_550));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(137[11:44])
    defparam i_i2c_bus_scl_I_0_75_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i_i2c_bus_scl_I_0_77_2_lut (.I0(out_n), .I1(o_rx_data_4__N_554), 
            .I2(GND_net), .I3(GND_net), .O(o_rx_data_4__N_553));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(143[11:44])
    defparam i_i2c_bus_scl_I_0_77_2_lut.LUT_INIT = 16'h4444;
    SB_DFFR o_byte_rx_done_70 (.Q(byte_rx_done), .C(i_clk_c), .D(n415), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(205[17] 208[11])
    SB_LUT4 i_i2c_bus_scl_I_0_79_2_lut (.I0(out_n), .I1(o_rx_data_3__N_557), 
            .I2(GND_net), .I3(GND_net), .O(o_rx_data_3__N_556));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(149[11:44])
    defparam i_i2c_bus_scl_I_0_79_2_lut.LUT_INIT = 16'h4444;
    SB_DFFE o_rx_data_3__63 (.Q(o_receive_data_c_3), .C(i_clk_c), .E(o_rx_data_3__N_556), 
            .D(sda_in_filtered));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(148[12] 152[8])
    SB_DFFE o_rx_data_4__62 (.Q(o_receive_data_c_4), .C(i_clk_c), .E(o_rx_data_4__N_553), 
            .D(sda_in_filtered));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(142[12] 146[8])
    SB_DFFE o_rx_data_5__61 (.Q(o_receive_data_c_5), .C(i_clk_c), .E(o_rx_data_5__N_550), 
            .D(sda_in_filtered));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(136[12] 140[8])
    SB_LUT4 i314_2_lut (.I0(i2c_master_falling_scl_detect), .I1(o_byte_rx_done_N_608), 
            .I2(GND_net), .I3(GND_net), .O(n415));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    defparam i314_2_lut.LUT_INIT = 16'h8888;
    SB_DFFS state_FSM_i1 (.Q(n396[0]), .C(i_clk_c), .D(n879), .S(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    SB_DFFE o_rx_data_2__64 (.Q(o_receive_data_c_2), .C(i_clk_c), .E(o_rx_data_2__N_559), 
            .D(sda_in_filtered));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(154[12] 158[8])
    SB_LUT4 i_i2c_bus_scl_I_0_73_2_lut (.I0(out_n), .I1(o_rx_data_6__N_548), 
            .I2(GND_net), .I3(GND_net), .O(o_rx_data_6__N_547));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(131[11:44])
    defparam i_i2c_bus_scl_I_0_73_2_lut.LUT_INIT = 16'h4444;
    SB_DFFE o_rx_data_1__65 (.Q(o_receive_data_c_1), .C(i_clk_c), .E(o_rx_data_1__N_562), 
            .D(sda_in_filtered));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(160[12] 164[8])
    SB_DFFR state_FSM_i10 (.Q(o_byte_rx_done_N_608), .C(i_clk_c), .D(n1221), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    SB_DFFR state_FSM_i8 (.Q(o_rx_data_6__N_548), .C(i_clk_c), .D(n1220), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    SB_DFFR state_FSM_i7 (.Q(o_rx_data_5__N_551), .C(i_clk_c), .D(n1219), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    SB_DFFR state_FSM_i6 (.Q(o_rx_data_4__N_554), .C(i_clk_c), .D(n1218), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    SB_DFFR state_FSM_i5 (.Q(o_rx_data_3__N_557), .C(i_clk_c), .D(n1217), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    SB_DFFR state_FSM_i4 (.Q(o_rx_data_2__N_560), .C(i_clk_c), .D(n1216), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    SB_DFFR state_FSM_i3 (.Q(o_rx_data_1__N_563), .C(i_clk_c), .D(n1215), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    SB_DFFR state_FSM_i2 (.Q(o_rx_data_0__N_566), .C(i_clk_c), .D(n1214), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    SB_LUT4 i_i2c_bus_scl_I_0_2_lut (.I0(out_n), .I1(o_rx_data_0__N_566), 
            .I2(GND_net), .I3(GND_net), .O(o_rx_data_0__N_565));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(167[11:44])
    defparam i_i2c_bus_scl_I_0_2_lut.LUT_INIT = 16'h4444;
    SB_DFFES o_rx_ack_sda_69 (.Q(rx_ack_sda), .C(i_clk_c), .E(n1180), 
            .D(n1178), .S(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(191[17] 199[11])
    SB_DFFR state_FSM_i9 (.Q(o_rx_data_7__N_545), .C(i_clk_c), .D(n895), 
            .R(i_rst_n_N_7));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    SB_LUT4 i1129_2_lut (.I0(o_byte_rx_done_N_608), .I1(out_n), .I2(GND_net), 
            .I3(GND_net), .O(n1180));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(191[17] 199[11])
    defparam i1129_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i1550_2_lut (.I0(transaction_complete), .I1(o_byte_rx_done_N_608), 
            .I2(GND_net), .I3(GND_net), .O(n1178));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(191[17] 199[11])
    defparam i1550_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i849_4_lut (.I0(o_rx_data_7__N_545), .I1(rx_en), .I2(i2c_master_falling_scl_detect), 
            .I3(n396[0]), .O(n895));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    defparam i849_4_lut.LUT_INIT = 16'hce0a;
    SB_LUT4 i_i2c_bus_scl_I_0_71_2_lut (.I0(out_n), .I1(o_rx_data_7__N_545), 
            .I2(GND_net), .I3(GND_net), .O(o_rx_data_7__N_544));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(125[11:44])
    defparam i_i2c_bus_scl_I_0_71_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i833_3_lut_4_lut (.I0(n396[0]), .I1(i2c_master_falling_scl_detect), 
            .I2(o_byte_rx_done_N_608), .I3(rx_en), .O(n879));   // ../../../source/verilog/i2c_master_byte_rx_fsm.v(85[8] 117[15])
    defparam i833_3_lut_4_lut.LUT_INIT = 16'hc0ea;
    
endmodule
