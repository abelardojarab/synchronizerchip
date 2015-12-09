proc createViewDefFile {conf viewFile verbose} {

    set fp [open $viewFile w]

    source $conf

    set viewList ""

    ### constraint mode

    set sdcOption "\[list /dev/null\]"

    if {([info exists rda_Input(ui_timingcon_file)]) && ($rda_Input(ui_timingcon_file) != "")} {set sdcOption $rda_Input(ui_timingcon_file)}

    puts $fp "create_constraint_mode -name mode -sdc_files $sdcOption"

    ### rc corner 

    set rcWorstFound 0

    set rcTypFound 0

    set rcBestFound 0

    if {([info exists rda_Input(ui_captbl_file)]) && ([llength $rda_Input(ui_captbl_file)] >=2)} {

        if {$verbose} {puts "INFO : Found multiple captables in configuration file $conf."}

        if  {[lsearch -exact $rda_Input(ui_captbl_file) "-typical"] >= 0} {

            set capTable [lindex $rda_Input(ui_captbl_file) [expr [lsearch -exact $rda_Input(ui_captbl_file) "-typical"]+1]]

            puts $fp "create_rc_corner -name rcTyp -cap_table $capTable"

            set rcTypFound 1

        } 

        if {[lsearch -exact $rda_Input(ui_captbl_file) "-worst"] >= 0} {

            set capTable [lindex $rda_Input(ui_captbl_file) [expr [lsearch -exact $rda_Input(ui_captbl_file) "-worst"]+1]]

            puts $fp "create_rc_corner -name rcWorst -cap_table $capTable"

            set rcWorstFound 1

        } 

        if {[lsearch -exact $rda_Input(ui_captbl_file) "-best"] >= 0} {

            set capTable [lindex $rda_Input(ui_captbl_file) [expr [lsearch -exact $rda_Input(ui_captbl_file) "-best"]+1]]

            puts $fp "create_rc_corner -name rcBest -cap_table $capTable"

            set rcBestFound 1

        } 

        if {$rcTypFound == 0 && $rcWorstFound == 0 && $rcBestFound == 0} {

            puts "ERROR --> Cannot process variable rda_Input(ui_captbl_file) from $conf file correctly.  The supported formats are\n

                  set rda_Input(ui_captbl_file) \"typical.captbl\" OR\n

                  set rda_Input(ui_captbl_file) \"-best best.captbl -typical typical.captbl -worst worst.captbl\""

        }

    } else {

      puts $fp "create_rc_corner -name rcTyp -cap_table $rda_Input(ui_captbl_file)"

      set rcTypFound 1

    }

    #

    # Determine best, typical and worst RC corner. If scaling factors are defined they are applied to worst corner. Scaling factors for best corners are set to 1.

    #

    if {$rcWorstFound == 1} {

      set rcWorstCorner "rcWorst"

    } elseif {$rcTypFound == 1} {

      set rcWorstCorner "rcTyp"

    } else {

      set rcWorstCorner "rcBest"

    }

    if {$rcBestFound == 1} {

      set rcBestCorner "rcBest"

    } elseif {$rcTypFound == 1} {

      set rcBestCorner "rcTyp"

    } else {

      set rcBestCorner "rcWorst"

    }

    if {$rcTypFound == 1} {

      set rcTypCorner "rcTyp"

    } elseif {$rcBest == 1} {

      set rcTypCorner "rcBest"

    } else {

      set rcTypCorner "rcWorst"

    }

    if {([info exists rda_Input(ui_qxtech_file)]) && ($rda_Input(ui_qxtech_file) != "")} {puts $fp "update_rc_corner -name $rcWorstCorner -qx_tech_file $rda_Input(ui_qxtech_file)"}

    if {([info exists rda_Input(ui_preRoute_cap)]) && ($rda_Input(ui_preRoute_cap) != "")} {puts $fp "update_rc_corner -name $rcWorstCorner -preRoute_cap $rda_Input(ui_preRoute_cap)"}

    if {([info exists rda_Input(ui_preRoute_res)]) && ($rda_Input(ui_preRoute_res) != "")} {puts $fp "update_rc_corner -name $rcWorstCorner -preRoute_res $rda_Input(ui_preRoute_res)"}

    if {([info exists rda_Input(ui_preRoute_clkcap)]) && ($rda_Input(ui_preRoute_clkcap) != "")} {puts $fp "update_rc_corner -name $rcWorstCorner -preRoute_clkcap $rda_Input(ui_preRoute_clkcap)"}

    if {([info exists rda_Input(ui_preRoute_clkres)]) && ($rda_Input(ui_preRoute_clkres) != "")} {puts $fp "update_rc_corner -name $rcWorstCorner -preRoute_clkres $rda_Input(ui_preRoute_clkres)"}

    if {([info exists rda_Input(ui_postRoute_cap)]) && ($rda_Input(ui_postRoute_cap) != "")} {puts $fp "update_rc_corner -name $rcWorstCorner -postRoute_cap $rda_Input(ui_postRoute_cap)"}

    if {([info exists rda_Input(ui_postRoute_res)]) && ($rda_Input(ui_postRoute_res) != "")} {puts $fp "update_rc_corner -name $rcWorstCorner -postRoute_res $rda_Input(ui_postRoute_res)"}

    if {([info exists rda_Input(ui_postRoute_xcap)]) && ($rda_Input(ui_postRoute_xcap) != "")} {puts $fp "update_rc_corner -name $rcWorstCorner -postRoute_xcap $rda_Input(ui_postRoute_xcap)"}

    if {([info exists rda_Input(ui_postRoute_clkcap)]) && ($rda_Input(ui_postRoute_cap) != "")} {puts $fp "update_rc_corner -name $rcWorstCorner -postRoute_clkcap $rda_Input(ui_postRoute_clkcap)"}

    if {([info exists rda_Input(ui_postRoute_clkres)]) && ($rda_Input(ui_postRoute_clkres) != "")} {puts $fp "update_rc_corner -name $rcWorstCorner -postRoute_clkres $rda_Input(ui_postRoute_clkres)"}



    ### library set

    if {([info exists rda_Input(ui_timelib,max)]) && ($rda_Input(ui_timelib,max) != "")} {

        puts $fp "create_library_set -name maxLib -timing \"$rda_Input(ui_timelib,max)\""

        if {([info exists rda_Input(ui_cdb_file,max)]) && ($rda_Input(ui_cdb_file,max) != "")} {puts $fp "update_library_set -name maxLib -si \"$rda_Input(ui_cdb_file,max)\""}

        puts $fp "create_delay_corner -name maxDC -library_set maxLib -rc_corner $rcWorstCorner"

        puts $fp "create_analysis_view -name maxView -constraint_mode mode -delay_corner maxDC"

        lappend viewList maxView

    }

    if {([info exists rda_Input(ui_timelib)]) && ($rda_Input(ui_timelib) != "")} {

        puts $fp "create_library_set -name typLib -timing \"$rda_Input(ui_timelib)\""

        if {([info exists rda_Input(ui_cdb_file)]) && ($rda_Input(ui_cdb_file) != "")} {puts $fp "update_library_set -name typLib -si \"$rda_Input(ui_cdb_file)\""}

        puts $fp "create_delay_corner -name typDC -library_set typLib -rc_corner $rcTypCorner"

        puts $fp "create_analysis_view -name typView -constraint_mode mode -delay_corner typDC"

        lappend viewList typView

    }

    if {([info exists rda_Input(ui_timelib,min)]) && ($rda_Input(ui_timelib,min) != "")} { 

        puts $fp "create_library_set -name minLib -timing \"$rda_Input(ui_timelib,min)\""

        if {([info exists rda_Input(ui_cdb_file,min)]) && ($rda_Input(ui_cdb_file,min) != "")} {puts $fp "update_library_set -name minLib -si \"$rda_Input(ui_cdb_file,min)\""}

        puts $fp "create_delay_corner -name minDC -library_set minLib -rc_corner $rcBestCorner"

        puts $fp "create_analysis_view -name minView -constraint_mode mode -delay_corner minDC"

        lappend viewList minView

    }

    puts $fp "set_analysis_view -setup {$viewList} -hold {$viewList}"

    close $fp

}



proc createMappingTable {} {

    global obsoleteList

    set obsoleteList " \

        rda_Input(double_back) \

        rda_Input(flip_first) \

        rda_Input(ui_areaiolib) \

        rda_Input(ui_aspect_ratio) \

        rda_Input(ui_cdb_file) \

        rda_Input(ui_core_cntl) \

        rda_Input(ui_core_height) \

        rda_Input(ui_core_to_bottom) \

        rda_Input(ui_core_to_left) \

        rda_Input(ui_core_to_right) \

        rda_Input(ui_core_to_top) \

        rda_Input(ui_core_util) \

        rda_Input(ui_core_width) \

        rda_Input(ui_cts_cell_list) \

        rda_Input(ui_dpath) \

        rda_Input(ui_echo_file) \

        rda_Input(ui_echo_file,max) \

        rda_Input(ui_echo_file,min) \

        rda_Input(ui_exc_net) \

        rda_Input(ui_ilmdir) \

        rda_Input(ui_iolib) \

        rda_Input(ui_ioOri) \

        rda_Input(ui_isHorTrackHalfPitch) \

        rda_Input(ui_isOrigCenter) \

        rda_Input(ui_isVerticalRow) \

        rda_Input(ui_isVerTrackHalfPitch) \

        rda_Input(ui_kboxlib) \

        rda_Input(ui_latency_file) \

        rda_Input(ui_locvlib) \

        rda_Input(ui_max_io_height) \

        rda_Input(ui_non_sdc_constr) \

        rda_Input(ui_non_sdc_constr,ilm) \

        rda_Input(ui_qxconf_file) \

        rda_Input(ui_qxlayermap_file) \

        rda_Input(ui_qxlib_file) \

        rda_Input(ui_row_height) \

        rda_Input(ui_rtllist) \

        rda_Input(ui_scheduling_file) \

        rda_Input(ui_smodData) \

        rda_Input(ui_smodDef) \

        rda_Input(ui_xtwf_file) \

        rda_Input(ui_yldfile) \

        rda_Input(use_io_row_flow) \

    "



    global initList

    set initList " \

        rda_Input(assign_buffer)           init_assign_buffer \

        rda_Input(import_mode)             init_import_mode \

        rda_Input(ui_delay_limit)          delaycal_use_default_delay_limit \

        rda_Input(ui_gndnet)               init_gnd_net \

        rda_Input(ui_in_tran_delay)        delaycal_input_transition_delay \

        rda_Input(ui_io_file)              init_io_file \

        rda_Input(ui_leffile)              init_lef_file \

        rda_Input(ui_net_delay)            delaycal_default_net_delay \

        rda_Input(ui_netlist)              init_verilog \

        rda_Input(ui_netlisttype)          init_design_netlisttype \

        rda_Input(ui_net_load)             delaycal_default_net_load \

        rda_Input(ui_oa_abstractname)      init_abstract_view \

        rda_Input(ui_oa_designCell)        init_oa_design _cell \

        rda_Input(ui_oa_designLib)         init_oa_design_lib \

        rda_Input(ui_oa_designView)        init_oa_design_view \

        rda_Input(ui_oa_layoutname)        init_layout_view \

        rda_Input(ui_oa_reflib)            init_oa_ref_lib \

        rda_Input(ui_pwrnet)               init_pwr_net \

        rda_Input(ui_settop)               init_design_settop \

        rda_Input(ui_shr_scale)            extract_shrink_factor \

        rda_Input(ui_topcell)              init_top_cell \

        rda_Input(ui_view_definition_file) init_mmmc_file \

    "



    global unitList

    set unitList " \

        rda_Input(ui_cap_unit)     {setLibraryUnit -cap} \

        rda_Input(ui_time_unit)    {setLibraryUnit -time} \

    "



    global extractModeList

    set extractModeList " \

        rda_Input(ui_rel_c_thresh) {setExtractRCMode -relative_c_th} \

        rda_Input(ui_tot_c_thresh) {setExtractRCMode -total_c_th} \

        rda_Input(ui_cpl_c_thresh) {setExtractRCMode -coupling_c_th} \

    "



    global mmmcList

    set mmmcList " \

        rda_Input(ui_aocvlib) \

        rda_Input(ui_captbl_file) \

        rda_Input(ui_cdb_file) \

        rda_Input(ui_cdb_file,max) \

        rda_Input(ui_cdb_file,min) \

        rda_Input(ui_postRoute_cap) \

        rda_Input(ui_postRoute_res) \

        rda_Input(ui_postRoute_xcap) \

        rda_Input(ui_preRoute_cap) \

        rda_Input(ui_preRoute_res) \

        rda_Input(ui_qxtech_file) \

        rda_Input(ui_timelib) \

        rda_Input(ui_timelib,max) \

        rda_Input(ui_timelib,min) \

        rda_Input(ui_timingcon_file) \

        rda_Input(ui_timingcon_file,full) \

    "

}



proc conf2init {args} {

    global obsoleteList

    global initList

    global unitList

    global extractModeList

    global mmmcList



    set verbose 1

    set mmmcMode 0

    set viewDef 0

    set config 0

    set outfile $config.init.global

    foreach arg $args {

        if {[regexp {\-} $arg]} {

            regsub {\-} $arg "" option

            switch $option {

                "config"   { set config    [lindex $args [expr [lsearch $args $arg]+1]] }

                "outfile"  { set outfile   [lindex $args [expr [lsearch $args $arg]+1]] }

                "verbose"  { set verbose   [lindex $args [expr [lsearch $args $arg]+1]] }

                "help"     { puts "conf2init"

                             puts "    \[-config  <config>\]     #Config file name"

                             puts "    \[-outfile <outfile>\]    #Output file name,  default=<config_file>.init.global"

                             puts "    \[-verbose <1|0>\]        #Verbose,  default=0"

                             return

                }

            }

        }

    }

    if {$config == 0} {puts "ERROR --> Must specify input config file.  Use conf2init -help for more details."; return} 

    set infp [open $config r]

    set outfp [open $outfile w]

    createMappingTable

    source $config

    if {$rda_Input(ui_view_definition_file) != ""} {

        if {$verbose} {puts "INFO : Configuration file is in MMMC mode."}

        set mmmcMode 1

    } else {

        if {$verbose} {puts "INFO : Configuration file $config is not in MMMC mode.  Encounter 11.1 will only support MMMC mode design entry.\n       This script will create MMMC view definition file automaticalliy.  Please refer to .conf2init.viewDefinition.tcl file more more details."}

        createViewDefFile $config .conf2init.viewDefinition.tcl $verbose

    }

    while {[gets $infp line]>=0} {

        if {[regexp {^\s*set\s*} $line]} {

            set varName [lindex $line 1]

            if {![regexp {^\s*set\s*rda_Input} $line]} {

                puts $outfp "$line"

            } else {

                if {[lsearch -exact $initList $varName] >= 0} {

                    if {($mmmcMode == 0) && ($varName == "rda_Input(ui_view_definition_file)")} {

                        set viewDef 1

                        puts $outfp "set init_mmmc_file .conf2init.viewDefinition.tcl"

                    } else { 

                        if {$varName == "rda_Input(ui_view_definition_file)"} {set viewDef 1}

                        regexp {^\s*set\s*rda_Input\(.*\) (.*)} $line full val 

                        puts $outfp "set [lindex $initList [expr [lsearch -exact $initList $varName]+1]] $val"

                    }

                } elseif {[lsearch -exact $obsoleteList $varName] >= 0} {

                    if {$verbose} {puts $outfp "# INFO : $varName is an obsolete configuration variable now."}

                } elseif {[lsearch -exact $unitList $varName] >= 0} {

                    set varValue [lindex $line 2]

                    if {($varValue == "none") || ($varValue == "")} {

                        if {$varName == "rda_Input(ui_cap_unit)"} {set varValue 1pf}

                        if {$varName == "rda_Input(ui_time_unit)"} {set varValue 1ns}

                    } 

                    set mappedCmd [lindex $unitList [expr [lsearch -exact $unitList $varName]+1]]

                    puts $outfp "$mappedCmd $varValue"

                 } elseif {[lsearch -exact $extractModeList $varName] >= 0} {

                    set varValue [lindex $line 2]

                    if {$varValue != ""} {

                        set mappedCmd [lindex $extractModeList [expr [lsearch -exact $extractModeList $varName]+1]]

                        puts $outfp "# INFO : ${varName}, set the following in postRoute stage. $mappedCmd $varValue"

                        puts "INFO : ${varName}, set the following in postRoute stage. $mappedCmd $varValue"

                    }

                } elseif {[lsearch -exact $mmmcList $varName] >= 0} {

                    if {$mmmcMode} {

                        if {$verbose} {puts $outfp "# INFO : $varName is not required since this information is captured in the view definition file."}

                    }    

                } else {

                    if {$verbose} {puts $outfp "# ERROR : Did not find an equivalent for $varName" }

                }

            }

        }

    }

    if {$viewDef == 0} {puts $outfp "set init_mmmc_file .conf2init.viewDefinition.tcl"}

    puts "INFO : Initialization file $outfile created.  To import design type\n       source $outfile\n       init_design"

    close $infp

    close $outfp

}
