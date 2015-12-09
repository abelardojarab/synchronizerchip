create_constraint_mode -name mode -sdc_files ../synthesis/fullsystem.sdc
create_rc_corner -name rcTyp -cap_table 
update_rc_corner -name rcTyp -preRoute_cap 1
update_rc_corner -name rcTyp -preRoute_res 1
update_rc_corner -name rcTyp -preRoute_clkcap 0.0
update_rc_corner -name rcTyp -preRoute_clkres 0.0
update_rc_corner -name rcTyp -postRoute_cap 1
update_rc_corner -name rcTyp -postRoute_res 1
update_rc_corner -name rcTyp -postRoute_xcap 1
update_rc_corner -name rcTyp -postRoute_clkcap 0.0
update_rc_corner -name rcTyp -postRoute_clkres 0.0
create_library_set -name typLib -timing "/opt/FreePDK45/osu_soc/lib/files/gscl45nm.tlf"
create_delay_corner -name typDC -library_set typLib -rc_corner rcTyp
create_analysis_view -name typView -constraint_mode mode -delay_corner typDC
set_analysis_view -setup {typView} -hold {typView}
