set SIM_DIR "<ENTER simulation DIRECTORY PATH HERE>"
# Example:
# set SIM_DIR "D:\rd1139_i2c_master_controller\rd1139\simulation"
cd $SIM_DIR/ice40/verilog
if {![file exists rtl_verilog]} {
vlib rtl_verilog
}
endif

design create rtl_verilog .
design open rtl_verilog
adel -all
cd $SIM_DIR/ice40/verilog
vlog ../../../source/verilog/i2c_master_controller_top.v
vlog ../../../source/verilog/delay_gen.v
vlog ../../../source/verilog/filter.v
vlog ../../../source/verilog/i2c_master_byte_rx_fsm.v
vlog ../../../source/verilog/i2c_master_byte_tx_fsm.v
vlog ../../../source/verilog/i2c_master_cntrl_fsm.v
vlog ../../../source/verilog/i2c_master_cntrl_fsm_top.v
vlog ../../../source/verilog/i2c_master_controller.v
vlog ../../../source/verilog/i2c_master_falling_scl_detect.v
vlog ../../../source/verilog/i2c_master_scl_gen.v
vlog ../../../source/verilog/i2c_master_start_detect.v
vlog ../../../source/verilog/i2c_master_start_gen.v
vlog ../../../source/verilog/i2c_master_stop_detect.v
vlog ../../../source/verilog/i2c_master_stop_gen.v
vlog ../../../source/verilog/i2cbus_cntrl_fsm_top.v

vlog ../../../testbench/verilog/i2c_master_controller_tb.v
vlog ../../../testbench/verilog/i2c_slave_model.v

asim -O5 -L ovi_ice -PL pmi_work +access +r i2c_master_controller_tb

add wave /i2c_master_controller_tb/dut/*
run -all
