 create_clock -period 5.000 -name i2c_master_controller_top|i_clk [ get_nets i_clk_c ]
create_clock -period 5.000000 -name clk500 [get_nets i_clk_c]
