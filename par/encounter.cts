#
# FirstEncounter(TM) Clock Synthesis Technology File Format
#

#-- MacroModel --
#MacroModel pin <pin> <maxRiseDelay> <minRiseDelay> <maxFallDelay> <minFallDelay> <inputCap>

#-- Special Route Type --
#RouteTypeName specialRoute
#TopPreferredLayer 4
#BottomPreferredLayer 3
#PreferredExtraSpace 1
#End

#-- Regular Route Type --
#RouteTypeName regularRoute
#TopPreferredLayer 4
#BottomPreferredLayer 3
#PreferredExtraSpace 1
#End

#-- Clock Group --
#ClkGroup
#+ <clockName>

#------------------------------------------------------------
# Clock Root   : clk2
# Clock Name   : clk2
# Clock Period : 1ns
#------------------------------------------------------------
AutoCTSRootPin clk2
Period         1ns
MaxDelay       1ns # default value
MinDelay       0ns   # default value
MaxSkew        300ps # default value
SinkMaxTran    400ps # default value
BufMaxTran     400ps # default value
Buffer         BUFX2 BUFX4 INVX1 INVX2 INVX4 INVX8 
NoGating       NO
DetailReport   YES
#SetDPinAsSync  NO
#SetIoPinAsSync NO
#RouteClkNet    NO
#PostOpt        YES
#OptAddBuffer   NO
#RouteType      specialRoute
#LeafRouteType  regularRoute
ThroughPin
END

#------------------------------------------------------------
# Clock Root   : clk1
# Clock Name   : clk1
# Clock Period : 1ns
#------------------------------------------------------------
AutoCTSRootPin clk1
Period         1ns
MaxDelay       1ns # default value
MinDelay       0ns   # default value
MaxSkew        300ps # default value
SinkMaxTran    400ps # default value
BufMaxTran     400ps # default value
Buffer         BUFX2 BUFX4 INVX1 INVX2 INVX4 INVX8 
NoGating       NO
DetailReport   YES
#SetDPinAsSync  NO
#SetIoPinAsSync NO
#RouteClkNet    NO
#PostOpt        YES
#OptAddBuffer   NO
#RouteType      specialRoute
#LeafRouteType  regularRoute
ThroughPin
END

