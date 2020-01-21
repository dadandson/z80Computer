set SIM_DIR "<ENTER simulation DIRECTORY PATH HERE>"
# Example:
# set SIM_DIR "D:\rd1139_i2c_master_controller\rd1139\simulation"
cd $SIM_DIR/ice40/verilog
if {![file exists timing_verilog]} {
vlib timing_verilog
}
endif

design create timing_verilog .
design open timing_verilog
adel -all


cd $SIM_DIR/ice40/verilog

#####Run the Place and Route for the Project in the iCEcube2 software for generating the below mentioned sbt.v and sdf files.

vlog ../../../project/ice40/verilog/ice40_verilog_Implmnt/sbt/outputs/simulation_netlist/i2c_master_controller_top_sbt.v
vlog ../../../testbench/verilog/i2c_master_controller_tb.v
vlog ../../../testbench/verilog/i2c_slave_model.v

vsim -L ovi_ice_timing -PL pmi_work +access +r i2c_master_controller_tb -noglitch +no_tchk_msg -sdfmax /i2c_master_controller_tb/dut = "../../../project/ice40/verilog/ice40_verilog_Implmnt/sbt/outputs/simulation_netlist/i2c_master_controller_top_sbt.sdf"


add wave /i2c_master_controller_tb/dut/io_scl
add wave /i2c_master_controller_tb/dut/io_sda
add wave /i2c_master_controller_tb/dut/o_int_n
add wave /i2c_master_controller_tb/dut/i_slave_addr_reg
add wave /i2c_master_controller_tb/dut/i_byte_cnt_reg
add wave /i2c_master_controller_tb/dut/i_clk_div_lsb
add wave /i2c_master_controller_tb/dut/i_config_reg
add wave /i2c_master_controller_tb/dut/i_mode_reg
add wave /i2c_master_controller_tb/dut/o_cmd_status_reg
add wave /i2c_master_controller_tb/dut/o_start_ack
add wave /i2c_master_controller_tb/dut/i_transmit_data
add wave /i2c_master_controller_tb/dut/o_transmit_data_request
add wave /i2c_master_controller_tb/dut/o_received_data_valid
add wave /i2c_master_controller_tb/dut/o_receive_data  
add wave /i2c_master_controller_tb/dut/i_rst_n
add wave /i2c_master_controller_tb/dut/i_clk
run -all
