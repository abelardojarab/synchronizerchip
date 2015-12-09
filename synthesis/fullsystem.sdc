###################################################################

# Created by write_sdc on Sun Dec  6 12:14:39 2015

###################################################################
set sdc_version 1.7

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_driving_cell -lib_cell INVX1 [get_ports clk1]
set_driving_cell -lib_cell INVX1 [get_ports clk2]
set_driving_cell -lib_cell INVX1 [get_ports reset1]
set_driving_cell -lib_cell INVX1 [get_ports reset2]
set_driving_cell -lib_cell INVX1 [get_ports start]
create_clock [get_ports clk1]  -period 1  -waveform {0 0.5}
create_clock [get_ports clk2]  -period 1  -waveform {0 0.5}
set_input_delay -clock clk2  0.1  [get_ports reset1]
set_input_delay -clock clk2  0.1  [get_ports reset2]
set_input_delay -clock clk2  0.1  [get_ports start]
set_output_delay 0.1  [get_ports ready]
set_output_delay 0.1  [get_ports rcv]
