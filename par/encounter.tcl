###################################
# Run the design through Encounter
###################################

# Setup design and create floorplan
loadConfig ./encounter.conf
#commitConfig

# Create Initial Floorplan
floorplan -r 1.0 0.6 20 20 20 20

# Create Power structures
addRing -spacing_bottom 5 -width_left 5 -width_bottom 5 -width_top 5 -spacing_top 5 -layer_bottom metal5 -width_right 5 -around core -center 1 -layer_top metal5 -spacing_right 5 -spacing_left 5 -layer_right metal6 -layer_left metal6 -nets { gnd vdd }

# Place standard cells
# placeDesign
amoebaPlace

# Route power nets
sroute -noBlockPins -noPadRings -padPinPreferredLayerOnly -padPinMinLayer 2 \
    -jogControl { preferWithChanges differentLayer }

# Perform trial route and get initial timing results
sroute -straightConnections { straightOnly straightWithDrcClean straightWithChanges } \
    -jogControl { preferWithChanges differentLayer }
buildTimingGraph
timeDesign -preCTS -idealClock -numPaths 10 -prefix preCTS
report_timing -nworst  10 -net > timing.rep.1.placed

# Run in-place optimization
# rearrange cells, insert buffers, and even perform resynthesis
optDesign -preCTS
buildTimingGraph
timeDesign -preCTS -idealClock -numPaths 10 -prefix preCTS2
report_timing -nworst  10 -net > timing.rep.2.ipo

# Run Clock Tree Synthesis
createClockTreeSpec -output encounter.cts
specifyClockTree -file encounter.cts
ckSynthesis -rguide cts.rguide -report report.ctsrpt -macromodel report.ctsmdl

# Output Results of CTS
trialRoute -highEffort -guide cts.rguide
extractRC
reportClockTree -postRoute -localSkew -report skew.post_troute_local.ctsrpt
reportClockTree -postRoute -report report.post_troute.ctsrpt

# Run Post-CTS Timing analysis
setAnalysisMode -checkType setup -asyncChecks async -skew true -clockPropagation sdcControl
buildTimingGraph
report_timing -nworst  10 -net > timing.rep.3.cts
timeDesign -postCTS -numPaths 10 -prefix postCTS

# Add filler cells
addFiller -cell FILL -prefix FILL -fillBoundary

# Connect all new cells to VDD/GND
globalNetConnect vdd -type tiehi
globalNetConnect vdd -type pgpin -pin vdd -override

globalNetConnect gnd -type tielo
globalNetConnect gnd -type pgpin -pin gnd -override

# Run global Routing
globalDetailRoute

# Get final timing results
extractRC
buildTimingGraph
timeDesign -postRoute -prefix postRoute
optDesign -postRoute

# Final checks
extractRC
buildTimingGraph
timeDesign -postRoute -prefix FINAL
reportSlacks -setup -outfile postroute_setup_slacks.rpt

# Output GDSII
streamOut final.gds -mapFile gds2_encounter.map -stripes 1 -units 1000 -mode ALL
saveNetlist -excludeLeafCell final.v

# Output SPEF RC Data
rcout -spef final.spef

# Output DSPF RC Data
rcout -spf final.dspf

# Output OpenAccess;
oaOut fullsystem fullsystem layout -refLibs {NCSU_TechLib_FreePDK45 NCSU_Devices_FreePDK45 freepdk45_cells} -leafViewNames {layout}

# Run DRC and Connection checks
verifyGeometry
verifyConnectivity -type all

# win

puts "**************************************"
puts "* Encounter script finished          *"
puts "*                                    *"
puts "* Results:                           *"
puts "* --------                           *"
puts "* Layout:  final.gds2                *"
puts "* Netlist: final.v                   *"
puts "* Timing:  timing.rep.5.final        *"
puts "*                                    *"
puts "* Type 'exit' to quit                *"
puts "*                                    *"
puts "**************************************"
