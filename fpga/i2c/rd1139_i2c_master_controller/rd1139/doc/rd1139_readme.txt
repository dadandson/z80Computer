    I2C Master Controller Reference Design
=====================================================================================

File List :

1.  \rd1139\docs\rd1139.pdf                                        									--> RD1139 document
    \rd1139\docs\rd1139_readme.txt                                 									--> read me file (this file)
	\rd1139\docs\revision_history.xls																--> Revision History
	
2.  \rd1139\project\ice40\verilog\ice40_verilog_lse.prj												--> iCEcube2 project strategy file 
	\rd1139\project\ice40\verilog\ice40_verilog_sbt.project                            				--> iCEcube2 project file
    \rd1139\project\ice40\verilog\ice40_timing.sdc                                 					--> Timing constraint file
	
3.  \rd1139\simulation\ice40\verilog\rtl_verilog.do				 		          					--> RTL simulation script file for verilog
	\rd1139\simulation\ice40\verilog\timing_verilog.do			 		          					--> Timing simulation script file for verilog  
	
4.  \rd1139\source\verilog\delay_gen.v                             									-->  Verilog source code file
    \rd1139\source\verilog\filter.v                                      							-->  Verilog source code file
	\rd1139\source\verilog\i2c_master_byte_rx_fsm.v													-->  Verilog source code file
	\rd1139\source\verilog\i2c_master_byte_tx_fsm.v													-->  Verilog source code file
	\rd1139\source\verilog\i2c_master_cntrl_fsm.v													-->  Verilog source code file
	\rd1139\source\verilog\i2c_master_cntrl_fsm_top.v												-->  Verilog source code file
	\rd1139\source\verilog\i2c_master_controller.v													-->  Verilog source code file
	\rd1139\source\verilog\i2c_master_controller_top.v												-->  Verilog source code file
	\rd1139\source\verilog\i2c_master_falling_scl_detect.v											-->  Verilog source code file
	\rd1139\source\verilog\i2c_master_scl_gen.v														-->  Verilog source code file
	\rd1139\source\verilog\i2c_master_start_detect.v												-->  Verilog source code file
	\rd1139\source\verilog\i2c_master_start_gen.v													-->  Verilog source code file
	\rd1139\source\verilog\i2c_master_stop_ detect.v												-->  Verilog source code file
	\rd1139\source\verilog\i2c_master_stop_gen.v													-->  Verilog source code file
	\rd1139\source\verilog\i2cbus_cntrl_fsm_top.v													-->  Verilog source code file
	
5.  \rd1139\testbench\verilog\i2c_master_controller_tb.v                     						-->  Verilog testbench for simulation
    \rd1139\testbench\verilog\i2c_slave_model.v														-->  Verilog testbench file
===================================================================================================  
Using iCEcube2 Software
---------------------------------------------------------------------------------------------------  
HOW TO CREATE A PROJECT IN iCEcube2:
1. Launch iCEcube2 software, in the GUI, select Project >> New Project.
2. In the New Project popup, select the Project Directory and provide a Project name. Select appropriate device. Click Next
3. Add the necessary source files from the rd1139\source\verilog directory.
4. Click Finish. Now the project is successfully created. 
5. Under P&R Flow> Add P&R Input Files> Constraint Files, right click and select Add Files.
	Add the timing constraint file from the location rd1139\project\ice40\verilog directory.

----------------------------------------------------------------------------------------------------      
HOW TO RUN SIMULATION UNDER iCEcube2:
1. Bring up the Simulation Wizard by clicking on the Active HDL icon. 
2. Next provide a name for simulation project, and select RTL or post-route simulation
	2.1 For post-route simulation, must export verilog or vhdl simulation file after Place and Route
3. Next add the test bench files form the rd1139\testBench\verilog directory. Click Next.
	3.1 For VHDL, make sure the top-level test bench is last to be added
4. Next click Finish, this will bring up the Aldec simulator automatically
5. In Aldec environment, you can manually activate the simulation or you can use a script
	5.1 Use the provided script in the rd1139\Simulation\ice40\verilog directory
	  a. For functional simulation, change the library name to the device family
	  	i) iCE40: ovi_ice for verilog ;ovi_ice_timing for Timing simulations			
	  b. For POST-ROUTE simulation, open the script and change the following:
			i) Run the Place and Route in iCEcube2 to generate the verilog netlist file and the timing delay file required for timing simulations.
			ii) Provide the path to the simulation folder in the timing_verilog.do file
			ii) Change the library name (if required)using the library name described above
		c. Click Tools > Execute Macro and select the xxx.do file to run the simulation
		d. This will run the simulation until finish
	5.2 Manually activate the simulation
		a. Click Design> Compile All
		b. Click Design> Settings.In the Design Settings Window,General > Top-level, select the top level testbench in the right column and click Apply
		c. Click Simulation > Initialize Simulation
		d. Click File > New > Waveform, this will bring up the Waveform panel
		c. Click on the top-level testbench, drag all the signals into the Waveform panel
		d. At the Console panel, type "run 5500us" for VHDL simulation, or "run -all" for Verilog 
		   simulation
		e. For timing simulation, Run the Place and Route for the Project in the iCEcube2 software for generating the sbt.v and sdf files

	6. The simulation result will be similar to the one described below. 
   
                       0ns i2c_slave_model 10 detected stop condition.
                  100ns Writing to slave
                  100ns Starting Double byte Write operation
                 1215ns i2c_slave_model 10 detected start condition.
                14867ns i2c_slave_model 10 claimed wr cmd, offset 0.
                29177ns i2c_slave_model 10 stored wr data 75 to address 0.
                29177ns **TRANSMIT DATA IS SUCCESSFULLY LOADED TO I2C SLAVE**
                43487ns i2c_slave_model 10 stored wr data 53 to address 1.
                43487ns **TRANSMIT DATA IS SUCCESSFULLY LOADED TO I2C SLAVE**
                46815ns i2c_slave_model 10 detected stop condition.
                47025ns Interrupt Clear
               597025ns Reading from slave
               597025ns Starting Single Byte Read operation
               598575ns i2c_slave_model 10 detected start condition.
               612227ns i2c_slave_model 10 claimed rd cmd, offset 0.
               615410ns i2c_slave_model 10 fetched rd data 75 from address 0.
               628370ns **SUCESSFULLY READ**.RECEIVED DATA 75 FETCHED DATA 75
               629865ns i2c_slave_model 10 detected stop condition.
               630075ns Interrupt Clear
              1180075ns Writing to slave
              1180075ns Starting Single Byte Write operation
              1181175ns i2c_slave_model 10 detected start condition.
              1194827ns i2c_slave_model 10 claimed wr cmd, offset 0.
              1209137ns i2c_slave_model 10 stored wr data 88 to address 0.
              1209137ns **TRANSMIT DATA IS SUCCESSFULLY LOADED TO I2C SLAVE**
              1212495ns i2c_slave_model 10 detected start condition.
              1226147ns i2c_slave_model 10 claimed wr cmd, offset 0.
              1228065ns Interrupt Clear
              1229475ns i2c_slave_model 10 detected stop condition.
              1778065ns Reading from slave
              1778065ns Starting Single Byte Read operation with Repeat start
              1779615ns i2c_slave_model 10 detected start condition.
              1793267ns i2c_slave_model 10 claimed rd cmd, offset 0.
              1796450ns i2c_slave_model 10 fetched rd data 88 from address 0.
              1809410ns **SUCESSFULLY READ**.RECEIVED DATA 88 FETCHED DATA 88
              1810935ns i2c_slave_model 10 detected start condition.
              1824587ns i2c_slave_model 10 claimed rd cmd, offset 0.
              1827770ns i2c_slave_model 10 fetched rd data 88 from address 0.
              1840730ns **SUCESSFULLY READ**.RECEIVED DATA 88 FETCHED DATA 88
              1842225ns i2c_slave_model 10 detected stop condition.
              2893485ns Writing to slave
              2893485ns Starting Double byte Write operation with Repeat Start
              2894595ns i2c_slave_model 10 detected start condition.
              2908247ns i2c_slave_model 10 claimed wr cmd, offset 0.
              2922557ns i2c_slave_model 10 stored wr data 88 to address 0.
              2922557ns **TRANSMIT DATA IS SUCCESSFULLY LOADED TO I2C SLAVE**
              2936867ns i2c_slave_model 10 stored wr data 88 to address 1.
              2936867ns **TRANSMIT DATA IS SUCCESSFULLY LOADED TO I2C SLAVE**
              2940225ns i2c_slave_model 10 detected start condition.
              2953877ns i2c_slave_model 10 claimed wr cmd, offset 0.
              2968187ns i2c_slave_model 10 stored wr data 88 to address 0.
              2968187ns **TRANSMIT DATA IS SUCCESSFULLY LOADED TO I2C SLAVE**
              2982497ns i2c_slave_model 10 stored wr data 88 to address 1.
              2982497ns **TRANSMIT DATA IS SUCCESSFULLY LOADED TO I2C SLAVE**
              2985825ns i2c_slave_model 10 detected stop condition.
              2986035ns Interrupt Clear
              3536035ns Writing to slave
              3536035ns Starting Double Byte Write operation with Repeat start & Double byte Read operation
              3537135ns i2c_slave_model 10 detected start condition.
              3550787ns i2c_slave_model 10 claimed wr cmd, offset 0.
              3565097ns i2c_slave_model 10 stored wr data 31 to address 0.
              3565097ns **TRANSMIT DATA IS SUCCESSFULLY LOADED TO I2C SLAVE**
              3579407ns i2c_slave_model 10 stored wr data 31 to address 1.
              3579407ns **TRANSMIT DATA IS SUCCESSFULLY LOADED TO I2C SLAVE**
              3582765ns i2c_slave_model 10 detected start condition.
              3596417ns i2c_slave_model 10 claimed rd cmd, offset 0.
              3599600ns i2c_slave_model 10 fetched rd data 31 from address 0.
              3612560ns **SUCESSFULLY READ**.RECEIVED DATA 31 FETCHED DATA 31
              3613910ns i2c_slave_model 10 fetched rd data 31 from address 1.
              3626870ns **SUCESSFULLY READ**.RECEIVED DATA 31 FETCHED DATA 31
              3628365ns i2c_slave_model 10 detected stop condition.
              3628575ns Interrupt Clear
              4178575ns Writing to slave
              4178575ns Starting Double byte write operation
              4179675ns i2c_slave_model 10 detected start condition.
              4193327ns i2c_slave_model 10 claimed wr cmd, offset 0.
              4207637ns i2c_slave_model 10 stored wr data 75 to address 0.
              4207637ns **TRANSMIT DATA IS SUCCESSFULLY LOADED TO I2C SLAVE**
              4221947ns i2c_slave_model 10 stored wr data 75 to address 1.
              4221947ns **TRANSMIT DATA IS SUCCESSFULLY LOADED TO I2C SLAVE**
              4225275ns i2c_slave_model 10 detected stop condition.
              4225485ns Interrupt Clear
              4230485ns Testcases done







































