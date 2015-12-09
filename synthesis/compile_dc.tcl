#/**************************************************/
#/* Compile Script for Synopsys                    */
#/*                                                */
#/* dc_shell-t -f compile_dc.tcl                   */
#/*                                                */
#/* OSU FreePDK 45nm                               */
#/**************************************************/

#/* All vhdl files, separated by spaces         */
set my_vhdl_files [list src/synchronizer.vhd src/talker_fsm.vhd src/talker_str.vhd src/listener_fsm.vhd src/listener_str.vhd src/fullsystem.vhd]

#/* Top-level Module                               */
set my_toplevel fullsystem

#/* The name of the clock pin. If no clock-pin     */
#/* exists, pick anything                          */
set my_clock1_pin clk1
set my_clock2_pin clk2

#/* Target frequency in MHz for optimization       */
set my_clk_freq_MHz 1000

#/* Delay of input signals (Clock-to-Q, Package etc.)  */
set my_input_delay_ns 0.1

#/* Reserved time for output signals (Holdtime etc.)   */
set my_output_delay_ns 0.1


#/**************************************************/
#/* No modifications needed below                  */
#/**************************************************/
set OSU_FREEPDK [format "%s%s"  [getenv "PDK_DIR"] "/osu_soc/lib/files"]
set search_path [concat  $search_path $OSU_FREEPDK]
set alib_library_analysis_path $OSU_FREEPDK

set link_library [set target_library [concat  [list gscl45nm.db] [list dw_foundation.sldb]]]
set target_library "gscl45nm.db"
define_design_lib WORK -path ./work
set verilogout_show_unconnected_pins "true"

analyze -f vhdl $my_vhdl_files

elaborate $my_toplevel

current_design $my_toplevel

link
uniquify

set my_period [expr 1000 / $my_clk_freq_MHz]

set clk_name $my_clock1_pin
create_clock -period $my_period $clk_name

set clk_name $my_clock2_pin
create_clock -period $my_period $clk_name

set_driving_cell  -lib_cell INVX1  [all_inputs]
set_input_delay $my_input_delay_ns -clock $clk_name [remove_from_collection [all_inputs] [list $my_clock1_pin $my_clock2_pin]]
set_output_delay $my_output_delay_ns [all_outputs]

compile -ungroup_all -map_effort medium

compile -incremental_mapping -map_effort medium

check_design
report_constraint -all_violators

set filename [format "%s%s"  $my_toplevel ".v"]
redirect change_names { change_names -rules vhdl -hierarchy -verbose }
write -f verilog -output $filename

set filename [format "%s%s"  $my_toplevel ".sdc"]
write_sdc $filename

set filename [format "%s%s" $my_toplevel ".sdf"]
write_sdf -version 1.0 $filename

set filename [format "%s%s"  $my_toplevel ".ddc"]
write -hierarchy -output $filename

redirect timing.rep { report_timing }
redirect cell.rep { report_cell }
redirect power.rep { report_power }

quit
