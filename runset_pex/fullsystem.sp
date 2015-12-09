* SPICE NETLIST
***************************************

.SUBCKT M6_M5_0
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_2
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_1
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M5_M4_4
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M4_M3_3
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M6_M5_5
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_1
** N=1 EP=0 IP=5 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_via
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT FILL
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_2
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_via
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_3
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT DFFSR 1 gnd S R 5 vdd Q 8
** N=20 EP=8 IP=0 FDC=32
M0 gnd CLK gnd gnd NMOS_VTL L=5e-08 W=2.5e-07 AD=5.25e-14 AS=2.625e-14 PD=9.2e-07 PS=7.1e-07 $X=645 $Y=1310 $D=1
M1 11 D gnd gnd NMOS_VTL L=5e-08 W=2.5e-07 AD=5.25e-14 AS=5.25e-14 PD=9.2e-07 PS=9.2e-07 $X=1165 $Y=1310 $D=1
M2 1 gnd gnd gnd NMOS_VTL L=5e-08 W=2.5e-07 AD=2.625e-14 AS=4.5e-14 PD=7.1e-07 PS=8.6e-07 $X=1685 $Y=530 $D=1
M3 13 gnd 11 gnd NMOS_VTL L=5e-08 W=2.5e-07 AD=8.75e-14 AS=5.25e-14 PD=1.2e-06 PS=9.2e-07 $X=1685 $Y=1310 $D=1
M4 12 1 13 gnd NMOS_VTL L=5e-08 W=2.5e-07 AD=5.25e-14 AS=8.75e-14 PD=1.28e-06 PS=1.2e-06 $X=2485 $Y=1310 $D=1
M5 17 R 12 gnd NMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=5.25e-14 PD=1.28e-06 PS=1.28e-06 $X=2865 $Y=810 $D=1
M6 gnd 14 17 gnd NMOS_VTL L=5e-08 W=5e-07 AD=1.8e-13 AS=7e-14 PD=1.72e-06 PS=1.28e-06 $X=3245 $Y=810 $D=1
M7 18 13 gnd gnd NMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=1.8e-13 PD=1.28e-06 PS=1.72e-06 $X=4065 $Y=810 $D=1
M8 14 S 18 gnd NMOS_VTL L=5e-08 W=5e-07 AD=7.375e-14 AS=7e-14 PD=1.38e-06 PS=1.28e-06 $X=4445 $Y=810 $D=1
M9 5 1 14 gnd NMOS_VTL L=5e-08 W=2.5e-07 AD=6.75e-14 AS=7.375e-14 PD=1.04e-06 PS=1.38e-06 $X=4925 $Y=1100 $D=1
M10 15 gnd 5 gnd NMOS_VTL L=5e-08 W=2.5e-07 AD=5.25e-14 AS=6.75e-14 PD=1.28e-06 PS=1.04e-06 $X=5565 $Y=1100 $D=1
M11 19 S 15 gnd NMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=5.25e-14 PD=1.28e-06 PS=1.28e-06 $X=5945 $Y=600 $D=1
M12 gnd 16 19 gnd NMOS_VTL L=5e-08 W=5e-07 AD=9e-14 AS=7e-14 PD=1.36e-06 PS=1.28e-06 $X=6325 $Y=600 $D=1
M13 20 R gnd gnd NMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=9e-14 PD=1.28e-06 PS=1.36e-06 $X=6785 $Y=600 $D=1
M14 16 5 20 gnd NMOS_VTL L=5e-08 W=5e-07 AD=4.64625e-14 AS=7e-14 PD=1.21e-06 PS=1.28e-06 $X=7165 $Y=600 $D=1
M15 Q 16 gnd gnd NMOS_VTL L=5e-08 W=2.5e-07 AD=2.625e-14 AS=4.115e-14 PD=7.1e-07 PS=8.6e-07 $X=7970 $Y=355 $D=1
M16 vdd CLK gnd 8 PMOS_VTL L=5e-08 W=5e-07 AD=1.075e-13 AS=5.25e-14 PD=1.43e-06 PS=1.21e-06 $X=635 $Y=2370 $D=0
M17 11 D vdd 8 PMOS_VTL L=5e-08 W=5e-07 AD=5.25e-14 AS=1.075e-13 PD=1.28e-06 PS=1.43e-06 $X=1165 $Y=2370 $D=0
M18 13 1 11 8 PMOS_VTL L=5e-08 W=2.5e-07 AD=7.375e-14 AS=5.25e-14 PD=1.09e-06 PS=1.28e-06 $X=1545 $Y=2370 $D=0
M19 12 gnd 13 8 PMOS_VTL L=5e-08 W=2.5e-07 AD=6.5e-14 AS=7.375e-14 PD=1.38e-06 PS=1.09e-06 $X=2235 $Y=2370 $D=0
M20 vdd gnd 1 8 PMOS_VTL L=5e-08 W=5e-07 AD=5.25e-14 AS=5.25e-14 PD=1.21e-06 PS=1.21e-06 $X=2235 $Y=3585 $D=0
M21 vdd R 12 8 PMOS_VTL L=5e-08 W=5e-07 AD=1.5415e-13 AS=6.5e-14 PD=2.33e-06 PS=1.38e-06 $X=2715 $Y=2370 $D=0
M22 12 14 vdd 8 PMOS_VTL L=5e-08 W=5e-07 AD=5.25e-14 AS=1.5415e-13 PD=1.21e-06 PS=2.33e-06 $X=3275 $Y=2370 $D=0
M23 14 S vdd 8 PMOS_VTL L=5e-08 W=5e-07 AD=1.9415e-13 AS=9.7675e-14 PD=3.12e-06 PS=1.895e-06 $X=4315 $Y=2625 $D=0
M24 5 gnd 14 8 PMOS_VTL L=5e-08 W=2.5e-07 AD=3.5e-14 AS=1.9415e-13 PD=7.8e-07 PS=3.12e-06 $X=5065 $Y=2625 $D=0
M25 vdd 13 14 8 PMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=1.9415e-13 PD=1.28e-06 PS=3.12e-06 $X=5065 $Y=3495 $D=0
M26 15 1 5 8 PMOS_VTL L=5e-08 W=2.5e-07 AD=3.058e-13 AS=3.5e-14 PD=3.3e-06 PS=7.8e-07 $X=5445 $Y=2625 $D=0
M27 15 16 vdd 8 PMOS_VTL L=5e-08 W=5e-07 AD=3.058e-13 AS=7e-14 PD=3.3e-06 PS=1.28e-06 $X=5445 $Y=3495 $D=0
M28 vdd S 15 8 PMOS_VTL L=5e-08 W=5e-07 AD=1.22675e-13 AS=3.058e-13 PD=1.995e-06 PS=3.3e-06 $X=6305 $Y=2625 $D=0
M29 16 R vdd 8 PMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=1.22675e-13 PD=1.28e-06 PS=1.995e-06 $X=6785 $Y=2625 $D=0
M30 vdd 5 16 8 PMOS_VTL L=5e-08 W=5e-07 AD=1.025e-13 AS=7e-14 PD=1.41e-06 PS=1.28e-06 $X=7165 $Y=2625 $D=0
M31 Q 16 vdd 8 PMOS_VTL L=5e-08 W=5e-07 AD=5.25e-14 AS=1.025e-13 PD=1.21e-06 PS=1.41e-06 $X=7675 $Y=2625 $D=0
.ENDS
***************************************
.SUBCKT INVX8 A gnd Y vdd
** N=4 EP=4 IP=0 FDC=7
M0 Y A gnd gnd NMOS_VTL L=5e-08 W=6.675e-07 AD=9.345e-14 AS=2.2695e-13 PD=1.615e-06 PS=2.015e-06 $X=845 $Y=355 $D=1
M1 gnd A Y gnd NMOS_VTL L=5e-08 W=6.675e-07 AD=9.3275e-14 AS=9.345e-14 PD=1.615e-06 PS=1.615e-06 $X=1225 $Y=355 $D=1
M2 Y A gnd gnd NMOS_VTL L=5e-08 W=6.65e-07 AD=6.9825e-14 AS=9.3275e-14 PD=1.54e-06 PS=1.615e-06 $X=1605 $Y=360 $D=1
M3 Y A vdd vdd PMOS_VTL L=5e-08 W=1e-06 AD=1.4e-13 AS=3.4e-13 PD=2.28e-06 PS=2.68e-06 $X=845 $Y=2580 $D=0
M4 vdd A Y vdd PMOS_VTL L=5e-08 W=1e-06 AD=1.4e-13 AS=1.4e-13 PD=2.28e-06 PS=2.28e-06 $X=1225 $Y=2580 $D=0
M5 Y A vdd vdd PMOS_VTL L=5e-08 W=1e-06 AD=1.4e-13 AS=1.4e-13 PD=2.28e-06 PS=2.28e-06 $X=1605 $Y=2580 $D=0
M6 vdd A Y vdd PMOS_VTL L=5e-08 W=1e-06 AD=1.05e-13 AS=1.4e-13 PD=2.21e-06 PS=2.28e-06 $X=1985 $Y=2580 $D=0
.ENDS
***************************************
.SUBCKT INVX1 gnd vdd Y
** N=4 EP=3 IP=0 FDC=2
M0 Y A gnd gnd NMOS_VTL L=5e-08 W=2.5e-07 AD=2.625e-14 AS=2.625e-14 PD=7.1e-07 PS=7.1e-07 $X=525 $Y=355 $D=1
M1 Y A vdd vdd PMOS_VTL L=5e-08 W=5e-07 AD=5.25e-14 AS=5.25e-14 PD=1.21e-06 PS=1.21e-06 $X=525 $Y=2580 $D=0
.ENDS
***************************************
.SUBCKT INVX4 Y A gnd vdd
** N=4 EP=4 IP=0 FDC=4
M0 Y A gnd gnd NMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=8.75e-14 PD=1.28e-06 PS=1.35e-06 $X=750 $Y=645 $D=1
M1 gnd A Y gnd NMOS_VTL L=5e-08 W=5e-07 AD=5.25e-14 AS=7e-14 PD=1.21e-06 PS=1.28e-06 $X=1130 $Y=645 $D=1
M2 Y A vdd vdd PMOS_VTL L=5e-08 W=1e-06 AD=1.4e-13 AS=1.05e-13 PD=2.28e-06 PS=2.21e-06 $X=750 $Y=2580 $D=0
M3 vdd A Y vdd PMOS_VTL L=5e-08 W=1e-06 AD=1.05e-13 AS=1.4e-13 PD=2.21e-06 PS=2.28e-06 $X=1130 $Y=2580 $D=0
.ENDS
***************************************
.SUBCKT fullsystem
** N=50 EP=0 IP=245 FDC=328
M0 17 4 1 1 NMOS_VTL L=5e-08 W=2.5e-07 AD=3.5e-14 AS=2.625e-14 PD=7.8e-07 PS=7.1e-07 $X=48600 $Y=55659 $D=1
M1 1 7 17 1 NMOS_VTL L=5e-08 W=2.5e-07 AD=2.625e-14 AS=3.5e-14 PD=7.1e-07 PS=7.8e-07 $X=48980 $Y=55659 $D=1
M2 1 21 1 1 NMOS_VTL L=5e-08 W=5e-07 AD=1.225e-13 AS=5.25e-14 PD=1.515e-06 PS=1.21e-06 $X=50665 $Y=53620 $D=1
M3 46 20 7 1 NMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=5.25e-14 PD=1.28e-06 PS=1.21e-06 $X=50695 $Y=63785 $D=1
M4 1 18 1 1 NMOS_VTL L=5e-08 W=2.5e-07 AD=3.5e-14 AS=2.625e-14 PD=7.8e-07 PS=7.1e-07 $X=50880 $Y=44065 $D=1
M5 47 19 1 1 NMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=5.25e-14 PD=1.28e-06 PS=1.21e-06 $X=50880 $Y=65539 $D=1
M6 1 22 46 1 NMOS_VTL L=5e-08 W=5e-07 AD=1.175e-13 AS=7e-14 PD=1.47e-06 PS=1.28e-06 $X=51075 $Y=63785 $D=1
M7 48 21 1 1 NMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=1.225e-13 PD=1.28e-06 PS=1.515e-06 $X=51255 $Y=53645 $D=1
M8 1 1 1 1 NMOS_VTL L=5e-08 W=2.5e-07 AD=7.875e-14 AS=3.5e-14 PD=1.49e-06 PS=7.8e-07 $X=51260 $Y=44065 $D=1
M9 23 8 47 1 NMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=7e-14 PD=1.28e-06 PS=1.28e-06 $X=51260 $Y=65539 $D=1
M10 24 7 48 1 NMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=7e-14 PD=1.28e-06 PS=1.28e-06 $X=51635 $Y=53645 $D=1
M11 49 9 23 1 NMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=7e-14 PD=1.28e-06 PS=1.28e-06 $X=51640 $Y=65539 $D=1
M12 25 7 1 1 NMOS_VTL L=5e-08 W=5e-07 AD=5.25e-14 AS=1.175e-13 PD=1.21e-06 PS=1.47e-06 $X=51645 $Y=63785 $D=1
M13 1 1 1 1 NMOS_VTL L=5e-08 W=5e-07 AD=5.25e-14 AS=7.875e-14 PD=1.21e-06 PS=1.49e-06 $X=51850 $Y=44065 $D=1
M14 50 27 24 1 NMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=7e-14 PD=1.28e-06 PS=1.28e-06 $X=52015 $Y=53645 $D=1
M15 1 4 49 1 NMOS_VTL L=5e-08 W=5e-07 AD=5.25e-14 AS=7e-14 PD=1.21e-06 PS=1.28e-06 $X=52020 $Y=65539 $D=1
M16 1 1 50 1 NMOS_VTL L=5e-08 W=5e-07 AD=2.025e-13 AS=7e-14 PD=1.81e-06 PS=1.28e-06 $X=52395 $Y=53645 $D=1
M17 27 7 1 1 NMOS_VTL L=5e-08 W=5e-07 AD=5.25e-14 AS=2.025e-13 PD=1.21e-06 PS=1.81e-06 $X=53305 $Y=53645 $D=1
M18 1 1 1 1 NMOS_VTL L=5e-08 W=5e-07 AD=8.75e-14 AS=5.25e-14 PD=1.49e-06 PS=1.21e-06 $X=55440 $Y=53945 $D=1
M19 1 1 1 1 NMOS_VTL L=5e-08 W=2.5e-07 AD=2.625e-14 AS=8.75e-14 PD=7.1e-07 PS=1.49e-06 $X=56030 $Y=53945 $D=1
M20 6 28 1 1 NMOS_VTL L=5e-08 W=5e-07 AD=5.25e-14 AS=5.25e-14 PD=1.21e-06 PS=1.21e-06 $X=68360 $Y=55655 $D=1
M21 42 4 5 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.4e-13 AS=1.05e-13 PD=2.28e-06 PS=2.21e-06 $X=48600 $Y=56649 $D=0
M22 17 7 42 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.05e-13 AS=1.4e-13 PD=2.21e-06 PS=2.28e-06 $X=48980 $Y=56649 $D=0
M23 5 21 1 5 PMOS_VTL L=5e-08 W=1e-06 AD=3.05e-13 AS=1.05e-13 PD=2.61e-06 PS=2.21e-06 $X=50665 $Y=50715 $D=0
M24 7 20 5 5 PMOS_VTL L=5e-08 W=5e-07 AD=7e-14 AS=5.25e-14 PD=1.28e-06 PS=1.21e-06 $X=50695 $Y=61600 $D=0
M25 43 18 1 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.4e-13 AS=1.05e-13 PD=2.28e-06 PS=2.21e-06 $X=50880 $Y=40840 $D=0
M26 23 19 26 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.4e-13 AS=1.05e-13 PD=2.28e-06 PS=2.21e-06 $X=50880 $Y=67429 $D=0
M27 5 22 7 5 PMOS_VTL L=5e-08 W=5e-07 AD=1.575e-13 AS=7e-14 PD=2.49e-06 PS=1.28e-06 $X=51075 $Y=61600 $D=0
M28 5 1 43 5 PMOS_VTL L=5e-08 W=1e-06 AD=2.45e-13 AS=1.4e-13 PD=2.49e-06 PS=2.28e-06 $X=51260 $Y=40840 $D=0
M29 26 8 23 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.4e-13 AS=1.4e-13 PD=2.28e-06 PS=2.28e-06 $X=51260 $Y=67429 $D=0
M30 44 21 5 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.4e-13 AS=3.05e-13 PD=2.28e-06 PS=2.61e-06 $X=51375 $Y=50715 $D=0
M31 5 9 26 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.4e-13 AS=1.4e-13 PD=2.28e-06 PS=2.28e-06 $X=51640 $Y=67429 $D=0
M32 25 7 5 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.05e-13 AS=1.575e-13 PD=2.21e-06 PS=2.49e-06 $X=51665 $Y=60600 $D=0
M33 24 27 44 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.4e-13 AS=1.4e-13 PD=2.28e-06 PS=2.28e-06 $X=51755 $Y=50715 $D=0
M34 1 1 5 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.05e-13 AS=2.45e-13 PD=2.21e-06 PS=2.49e-06 $X=51850 $Y=40840 $D=0
M35 26 4 5 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.05e-13 AS=1.4e-13 PD=2.21e-06 PS=2.28e-06 $X=52020 $Y=67429 $D=0
M36 45 7 24 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.4e-13 AS=1.4e-13 PD=2.28e-06 PS=2.28e-06 $X=52135 $Y=50715 $D=0
M37 5 1 45 5 PMOS_VTL L=5e-08 W=1e-06 AD=3.45e-13 AS=1.4e-13 PD=2.69e-06 PS=2.28e-06 $X=52515 $Y=50715 $D=0
M38 27 7 5 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.05e-13 AS=3.45e-13 PD=2.21e-06 PS=2.69e-06 $X=53305 $Y=50715 $D=0
M39 5 1 1 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.75e-13 AS=1.05e-13 PD=2.49e-06 PS=2.21e-06 $X=55440 $Y=50720 $D=0
M40 1 1 5 5 PMOS_VTL L=5e-08 W=5e-07 AD=5.25e-14 AS=1.75e-13 PD=1.21e-06 PS=2.49e-06 $X=56030 $Y=51720 $D=0
M41 6 28 5 5 PMOS_VTL L=5e-08 W=1e-06 AD=1.05e-13 AS=1.05e-13 PD=2.21e-06 PS=2.21e-06 $X=68360 $Y=57880 $D=0
X153 29 1 5 6 1 5 4 5 DFFSR $T=41240 55300 1 0 $X=41040 $Y=50160
X154 5 1 5 6 30 5 11 5 DFFSR $T=44280 45420 0 0 $X=44080 $Y=45220
X155 5 1 5 6 31 5 7 5 DFFSR $T=54160 45420 0 0 $X=53960 $Y=45220
X156 32 1 5 14 1 5 1 5 DFFSR $T=54160 65180 1 0 $X=53960 $Y=60040
X157 5 1 5 14 33 5 34 5 DFFSR $T=57200 55300 0 0 $X=57000 $Y=55100
X158 35 1 5 6 1 5 1 5 DFFSR $T=57960 45420 1 0 $X=57760 $Y=40280
X159 5 1 5 6 36 5 37 5 DFFSR $T=62520 45420 0 0 $X=62320 $Y=45220
X160 38 1 5 14 1 5 1 5 DFFSR $T=62520 65180 1 0 $X=62320 $Y=60040
X161 12 1 12 5 INVX8 $T=52640 45420 1 0 $X=52440 $Y=40280
X162 15 1 39 5 INVX8 $T=57960 65180 0 0 $X=57760 $Y=64980
X163 1 5 1 INVX1 $T=43520 45420 1 0 $X=43320 $Y=40280
X164 1 5 9 INVX1 $T=43520 65180 1 0 $X=43320 $Y=60040
X165 1 5 8 INVX1 $T=43520 65180 0 0 $X=43320 $Y=64980
X166 1 5 14 INVX1 $T=55680 65180 0 0 $X=55480 $Y=64980
X167 1 40 1 5 INVX4 $T=52640 45420 0 0 $X=52440 $Y=45220
X168 41 1 1 5 INVX4 $T=55680 55300 0 0 $X=55480 $Y=55100
.ENDS
***************************************
