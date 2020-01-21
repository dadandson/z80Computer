####---- CreateClock list ----3
create_clock  -period 5.00 -waveform {0.00 2.50} -name {i2c_master_controller_top|i_clk} [get_nets {i_clk_c}] 
create_clock  -period 31.25 -name {i_clk_c} [get_nets {i_clk_c}] 
create_clock  -period 5.00 -name {clk500} [get_nets {i_clk_c}] 

