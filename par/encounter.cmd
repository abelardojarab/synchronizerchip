#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Wed Dec  9 12:37:38 2015                #
#                                                     #
#######################################################

#@(#)CDS: Encounter v13.11-s031_1 (32bit) 05/23/2013 18:10 (Linux 2.6)
#@(#)CDS: NanoRoute v13.11-s001 NR130506-1501/13_10-UB (database version 2.30, 190.4.1) {superthreading v1.19}
#@(#)CDS: CeltIC v13.11-s002_1 (32bit) 05/16/2013 04:30:26 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 13.11-s002 (32bit) 05/23/2013 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 13.11-s002_1 (32bit) May 16 2013 04:05:19 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v13.11-s004
#@(#)CDS: IQRC/TQRC 12.1.0-s388 (32bit) Fri Mar 29 14:17:34 PDT 2013 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
set init_verilog ../synthesis/fullsystem.v
set init_top_cell fullsystem
set init_design_netlisttype Verilog
set init_design_settop 1
set init_io_file {}
set init_lef_file /opt/FreePDK45/osu_soc/lib/files/gscl45nm.lef
set delaycal_use_default_delay_limit 1000
set delaycal_default_net_delay 1000.0ps
set delaycal_default_net_load 0.5pf
set delaycal_input_transition_delay 120.0ps
set extract_shrink_factor 1.0
setLibraryUnit -time 1ns
setLibraryUnit -cap 1pf
set init_pwr_net vdd
set init_gnd_net gnd
set init_assign_buffer 0
set init_mmmc_file encounter.mmmc
init_design
floorPlan -r 1.0 0.6 20 20 20 20
addRing -spacing_bottom 5 -width_left 5 -width_bottom 5 -width_top 5 -spacing_top 5 -layer_bottom metal5 -width_right 5 -around core -center 1 -layer_top metal5 -spacing_right 5 -spacing_left 5 -layer_right metal6 -layer_left metal6 -nets { gnd vdd }
amoebaPlace
sroute -noBlockPins -noPadRings -padPinPreferredLayerOnly -padPinMinLayer 2 -jogControl { preferWithChanges differentLayer }
sroute -straightConnections { straightOnly straightWithDrcClean straightWithChanges } -jogControl { preferWithChanges differentLayer }
buildTimingGraph
timeDesign -preCTS -idealClock -numPaths 10 -prefix preCTS
report_timing -nworst  10 -net > timing.rep.1.placed
optDesign -preCTS
buildTimingGraph
timeDesign -preCTS -idealClock -numPaths 10 -prefix preCTS2
report_timing -nworst  10 -net > timing.rep.2.ipo
createClockTreeSpec -output encounter.cts
specifyClockTree -file encounter.cts
ckSynthesis -rguide cts.rguide -report report.ctsrpt -macromodel report.ctsmdl
trialRoute -highEffort -guide cts.rguide
extractRC
reportClockTree -postRoute -localSkew -report skew.post_troute_local.ctsrpt
reportClockTree -postRoute -report report.post_troute.ctsrpt
setAnalysisMode -checkType setup -asyncChecks async -skew true -clockPropagation sdcControl
buildTimingGraph
report_timing -nworst  10 -net > timing.rep.3.cts
timeDesign -postCTS -numPaths 10 -prefix postCTS
addFiller -cell FILL -prefix FILL -fillBoundary
globalNetConnect vdd -type tiehi
globalNetConnect vdd -type pgpin -pin vdd -override
globalNetConnect gnd -type tielo
globalNetConnect gnd -type pgpin -pin gnd -override
globalDetailRoute
extractRC
buildTimingGraph
timeDesign -postRoute -prefix postRoute
optDesign -postRoute
extractRC
buildTimingGraph
timeDesign -postRoute -prefix FINAL
reportSlacks -setup -outfile postroute_setup_slacks.rpt
streamOut final.gds -mapFile gds2_encounter.map -stripes 1 -units 1000 -mode ALL
saveNetlist -excludeLeafCell final.v
rcOut -spef final.spef
rcOut -spf final.dspf
oaOut fullsystem fullsystem layout -refLibs {NCSU_TechLib_FreePDK45 NCSU_Devices_FreePDK45 freepdk45_cells} -leafViewNames layout
verifyGeometry
verifyConnectivity -type all
win
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1Cont -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM8 -isVisible 0
setLayerPreference allM9Cont -isVisible 0
setLayerPreference allM9 -isVisible 0
setLayerPreference allM10Cont -isVisible 0
setLayerPreference allM10 -isVisible 0
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2 -isVisible 1
zoomBox 18.314 41.361 46.581 19.834
zoomBox 24.436 37.111 39.511 21.210
zoomBox 26.439 24.689 32.583 21.481
setLayerPreference allM2Cont -isVisible 1
zoomBox 27.892 22.204 28.575 21.491
