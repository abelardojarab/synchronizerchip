** Generated for: hspiceD
** Generated on: Oct 17 20:49:12 2015
** Design library name: fullsystem
** Design cell name: fullsystem_tb
** Design view name: schematic

.GLOBAL vdd!
.GLOBAL gnd!

** Library name: fullsystem
** Cell name: INVX4
** View name: schematic
.subckt INVX4 a y
m0 y a vdd! vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m1 vdd! a y vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m2 y a 0 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m3 0 a y 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
.ends INVX4
** End of subcircuit definition.

** Library name: fullsystem
** Cell name: INVX8
** View name: schematic
.subckt INVX8 a y
m0 y a vdd! vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m1 vdd! a y vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m2 y a vdd! vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m3 vdd! a y vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m4 y a 0 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m5 0 a y 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m6 y a 0 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m7 0 a y 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
.ends INVX8
** End of subcircuit definition.

** Library name: fullsystem
** Cell name: INVX1
** View name: schematic
.subckt INVX1 a y
m0 y a vdd! vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m1 y a 0 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
.ends INVX1
** End of subcircuit definition.

** Library name: fullsystem
** Cell name: XOR2X1
** View name: schematic
.subckt XOR2X1 a b y
m2 y a a_18_54__ vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m1 a_18_54__ a_13_43__ vdd! vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m3 a_35_54__ a_2_6__ y vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m4 vdd! b a_35_54__ vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m0 vdd! a a_2_6__ vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m5 a_13_43__ b vdd! vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m8 y a_2_6__ a_18_6__ 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m7 a_18_6__ a_13_43__ 0 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m9 a_35_6__ a y 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m10 0 b a_35_6__ 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m6 0 a a_2_6__ 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m11 a_13_43__ b 0 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
.ends XOR2X1
** End of subcircuit definition.

** Library name: fullsystem
** Cell name: NOR2X1
** View name: schematic
.subckt NOR2X1 a b y
m2 y a 0 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m3 0 b y 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m1 y b a_9_54__ vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m0 a_9_54__ a vdd! vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
.ends NOR2X1
** End of subcircuit definition.

** Library name: fullsystem
** Cell name: AOI22X1
** View name: schematic
.subckt AOI22X1 a b c d y
m5 y b a_11_6__ 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m4 a_11_6__ a 0 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m7 0 c a_28_6__ 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m6 a_28_6__ d y 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m1 a_2_54__ b vdd! vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m0 vdd! a a_2_54__ vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m2 y d a_2_54__ vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m3 a_2_54__ c y vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
.ends AOI22X1
** End of subcircuit definition.

** Library name: fullsystem
** Cell name: INVX2
** View name: schematic
.subckt INVX2 a y
m0 y a vdd! vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m1 y a 0 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
.ends INVX2
** End of subcircuit definition.

** Library name: fullsystem
** Cell name: DFFSR
** View name: schematic
.subckt DFFSR clk d q r s
m6 vdd! d a_57_6__ vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m8 a_47_71__ clk vdd! vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m15 vdd! a_122_6__ q vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m0 a_2_6__ r vdd! vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m1 vdd! a_10_61__ a_2_6__ vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m12 vdd! r a_122_6__ vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m11 a_122_6__ a_105_6__ vdd! vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m4 a_23_27__ a_47_71__ a_2_6__ vdd! PMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m2 a_10_61__ a_23_27__ vdd! vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m7 vdd! a_47_71__ a_47_4__ vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m9 a_105_6__ a_47_71__ a_10_61__ vdd! PMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m3 vdd! s a_10_61__ vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m5 a_57_6__ a_47_4__ a_23_27__ vdd! PMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m10 a_113_6__ a_47_4__ a_105_6__ vdd! PMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m13 a_113_6__ a_122_6__ vdd! vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m14 vdd! s a_113_6__ vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m16 a_10_6__ r a_2_6__ 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m17 0 a_10_61__ a_10_6__ 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m28 0 r a_130_6__ 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m27 a_130_6__ a_105_6__ a_122_6__ 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m18 a_26_6__ a_23_27__ 0 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m19 a_10_61__ s a_26_6__ 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m30 a_113_6__ s a_146_6__ 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m29 a_146_6__ a_122_6__ 0 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m22 0 d a_57_6__ 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m24 a_47_71__ clk 0 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m31 0 a_122_6__ q 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m25 a_105_6__ a_47_4__ a_10_61__ 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m20 a_23_27__ a_47_4__ a_2_6__ 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m23 0 a_47_71__ a_47_4__ 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m21 a_57_6__ a_47_71__ a_23_27__ 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m26 a_113_6__ a_47_71__ a_105_6__ 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
.ends DFFSR
** End of subcircuit definition.

** Library name: fullsystem
** Cell name: OR2X2
** View name: schematic
.subckt OR2X2 a b y
m0 a_9_54__ a a_2_54__ vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m1 vdd! b a_9_54__ vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m2 y a_2_54__ vdd! vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m4 0 b a_2_54__ 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m3 a_2_54__ a 0 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m5 y a_2_54__ 0 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
.ends OR2X2
** End of subcircuit definition.

** Library name: fullsystem
** Cell name: AND2X2
** View name: schematic
.subckt AND2X2 a b y
m0 a_2_6__ a vdd! vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m1 vdd! b a_2_6__ vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m2 y a_2_6__ vdd! vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m3 a_9_6__ a a_2_6__ 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m4 0 b a_9_6__ 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m5 y a_2_6__ 0 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
.ends AND2X2
** End of subcircuit definition.

** Library name: fullsystem
** Cell name: BUFX2
** View name: schematic
.subckt BUFX2 a y
m0 vdd! a a_2_6__ vdd! PMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
m1 y a_2_6__ vdd! vdd! PMOS_VTL L=50e-9 W=1e-6 AD=0 AS=0 PD=0 PS=0 M=1
m2 0 a a_2_6__ 0 NMOS_VTL L=50e-9 W=250e-9 AD=0 AS=0 PD=0 PS=0 M=1
m3 y a_2_6__ 0 0 NMOS_VTL L=50e-9 W=500e-9 AD=0 AS=0 PD=0 PS=0 M=1
.ends BUFX2
** End of subcircuit definition.

** Library name: fullsystem
** Cell name: fullsystem
** View name: schematic
.subckt fullsystem clk1 clk2 reset1 reset2 start ready rcv
xclk2__l2_i0 clk2__l1_n0 clk2__l2_n0 INVX4
xclk1__l2_i0 clk1__l1_n0 clk1__l2_n0 INVX4
xclk2__l1_i0 clk2 clk2__l1_n0 INVX8
xclk1__l1_i0 clk1 clk1__l1_n0 INVX8
xu14 talker_str_1xfsm_unitxstate_regx0x talker_str_1xfsm_unitxn6 INVX1
xu13 rcv talker_str_1xfsm_unitxn7 INVX1
xu8 n6 n7 INVX1
xfe_ocp_rbc1_reset1 reset1 fe_ocp_rbn1_reset1 INVX1
xtalker_str_1xfsm_unitxu13 talker_str_1xfsm_unitxstate_regx1x talker_str_1xfsm_unitxstate_regx0x talker_str_1xfsm_unitxn8 XOR2X1
xtalker_str_1xfsm_unitxu12 talker_str_1xfsm_unitxstate_regx0x talker_str_1xfsm_unitxn8 ready NOR2X1
xtalker_str_1xfsm_unitxu11 talker_str_1xfsm_unitxstate_regx0x talker_str_1xfsm_unitxn7 start talker_str_1xfsm_unitxn6 talker_str_1xfsm_unitxn9 AOI22X1
xtalker_str_1xfsm_unitxu5 reset2 talker_str_1xfsm_unitxn4 INVX2
xtalker_str_1xsync_unitxmeta_reg_reg clk2__l2_n0 ack_out talker_str_1xsync_unitxmeta_reg talker_str_1xfsm_unitxn4 vdd! DFFSR
xtalker_str_1xsync_unitxsync_reg_reg clk2__l2_n0 talker_str_1xsync_unitxmeta_reg n14 talker_str_1xfsm_unitxn4 vdd! DFFSR
xlistener_str_1xfsm_unitxack_buf_reg_reg clk1__l2_n0 listener_str_1xreq_sync ack_out fe_ocp_rbn1_reset1 vdd! DFFSR
xlistener_str_1xsync_unitxmeta_reg_reg clk1__l2_n0 req_in listener_str_1xsync_unitxmeta_reg fe_ocp_rbn1_reset1 vdd! DFFSR
xlistener_str_1xsync_unitxsync_reg_reg clk1__l2_n0 listener_str_1xsync_unitxmeta_reg listener_str_1xreq_sync fe_ocp_rbn1_reset1 vdd! DFFSR
xtalker_str_1xfsm_unitxstate_reg_regx0x clk2__l2_n0 n7 talker_str_1xfsm_unitxstate_regx0x talker_str_1xfsm_unitxn4 vdd! DFFSR
xtalker_str_1xfsm_unitxstate_reg_regx1x clk2__l2_n0 talker_str_1xfsm_unitxstate_nextx1x talker_str_1xfsm_unitxstate_regx1x talker_str_1xfsm_unitxn4 vdd! DFFSR
xtalker_str_1xfsm_unitxreq_buf_reg_reg clk2__l2_n0 n7 req_in talker_str_1xfsm_unitxn4 vdd! DFFSR
xu1 talker_str_1xfsm_unitxstate_regx1x talker_str_1xfsm_unitxn9 n6 OR2X2
xu7 rcv talker_str_1xfsm_unitxn8 talker_str_1xfsm_unitxstate_nextx1x AND2X2
xu10 n14 rcv BUFX2
.ends fullsystem
** End of subcircuit definition.

** Library name: fullsystem
** Cell name: fullsystem_tb
** View name: schematic
** Goes in this order: clk1 clk2 reset1 reset2 start ready rcv
xfullsystem  clk1 clk2 reset1 reset2 start ready rcv fullsystem

**** Parameters ****
.param clk2_pw = 2n

**** Constant Voltage Sources and Components ****
Vdd  vdd!   gnd!  1.0
Vss  gnd    0     0
C1   ready  gnd   1p
C2   rcv    gnd   1p

**** Transient Voltage Sources ****
**** PWL (T1 V1 T2 V2 T3 V3 ... Tn Vn ... )
Vinput1  reset1  gnd  pwl (0n 1.0 10n 1.0 10.1n 0)
Vinput2  reset2  gnd  pwl (0n 1.0 10n 1.0 10.1n 0)
Vinput3  start   gnd  pwl (0n 0.0 10n 0.0 10.1n 1 20n 1 20.1n 0)

**** Periodic Voltage Sources ****
****  PULSE (V1 V2 Td Tr Tf Pw Period)

Vinput4  clk1  gnd  pulse (0 1 2n 1n 1n 1n 8n 15n)
Vinput5  clk2  gnd  pulse (0 1 2n 1n 1n 1n 2n 4n)

**** Simulation models ****
.inc '$PDK_DIR/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTL.inc'
.inc '$PDK_DIR/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTL.inc'

**** Simulation Control ****

**** Enabling post processing by AvanWaves ****
.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    POST

**** Analysis - 80 nS, Step - 1ns ****
.TRAN 1p 150n START=0.0

**** Simulation Output ****
.print v(clk1) v(clk2) v(rcv)
.plot v(clk1) v(clk2) v(rcv)

**** End line ****
.TEMP 70
.end
