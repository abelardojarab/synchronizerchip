#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Wed Dec  9 08:17:33                     #
#                                                     #
#######################################################
loadConfig ./encounter.conf
floorplan -r 1.0 0.6 20 20 20 20
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
rcout -spef final.spef
rcout -spf final.dspf
oaOut fullsystem fullsystem layout -refLibs {NCSU_TechLib_FreePDK45 NCSU_Devices_FreePDK45 freepdk45_cells} -leafViewNames layout
verifyGeometry
verifyConnectivity -type all
