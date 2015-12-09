/*
###############################################################
#  Generated by:      Cadence Encounter 13.11-s031_1
#  OS:                Linux x86_64(Host ID abelardo-Aspire-7720)
#  Generated on:      Wed Dec  9 12:37:52 2015
#  Design:            fullsystem
#  Command:           saveNetlist -excludeLeafCell final.v
###############################################################
*/
module fullsystem (
	clk1, 
	clk2, 
	reset1, 
	reset2, 
	start, 
	ready, 
	rcv);
   input clk1;
   input clk2;
   input reset1;
   input reset2;
   input start;
   output ready;
   output rcv;

   // Internal wires
   wire req_in;
   wire ack_out;
   wire listener_str_1xreq_sync;
   wire listener_str_1xsync_unitxn2;
   wire listener_str_1xsync_unitxmeta_reg;
   wire talker_str_1xfsm_unitxn9;
   wire talker_str_1xfsm_unitxn8;
   wire talker_str_1xfsm_unitxn7;
   wire talker_str_1xfsm_unitxn6;
   wire talker_str_1xfsm_unitxn4;
   wire talker_str_1xfsm_unitxstate_nextx1x;
   wire talker_str_1xfsm_unitxstate_regx0x;
   wire talker_str_1xfsm_unitxstate_regx1x;
   wire talker_str_1xsync_unitxmeta_reg;
   wire n6;
   wire n7;
   wire n15;
   wire n16;
   wire n18;
   wire n19;
   wire n21;
   wire n22;
   wire n24;
   wire n25;
   wire n27;
   wire n28;

   INVX1 listener_str_1xsync_unitxU4 (.Y(listener_str_1xsync_unitxn2),
	.A(reset1));
   XOR2X1 talker_str_1xfsm_unitxU13 (.Y(talker_str_1xfsm_unitxn8),
	.B(talker_str_1xfsm_unitxstate_regx0x),
	.A(talker_str_1xfsm_unitxstate_regx1x));
   NOR2X1 talker_str_1xfsm_unitxU12 (.Y(ready),
	.B(talker_str_1xfsm_unitxn8),
	.A(talker_str_1xfsm_unitxstate_regx0x));
   AOI22X1 talker_str_1xfsm_unitxU11 (.Y(talker_str_1xfsm_unitxn9),
	.D(talker_str_1xfsm_unitxn6),
	.C(start),
	.B(talker_str_1xfsm_unitxn7),
	.A(talker_str_1xfsm_unitxstate_regx0x));
   INVX1 talker_str_1xfsm_unitxU5 (.Y(talker_str_1xfsm_unitxn4),
	.A(reset2));
   DFFSR talker_str_1xfsm_unitxreq_buf_reg_reg (.S(1'b1),
	.R(talker_str_1xfsm_unitxn4),
	.Q(req_in),
	.D(n7),
	.CLK(clk2));
   DFFSR talker_str_1xfsm_unitxstate_reg_regx1x (.S(1'b1),
	.R(talker_str_1xfsm_unitxn4),
	.Q(talker_str_1xfsm_unitxstate_regx1x),
	.D(talker_str_1xfsm_unitxstate_nextx1x),
	.CLK(clk2));
   DFFSR talker_str_1xfsm_unitxstate_reg_regx0x (.S(1'b1),
	.R(talker_str_1xfsm_unitxn4),
	.Q(talker_str_1xfsm_unitxstate_regx0x),
	.D(n7),
	.CLK(clk2));
   OR2X2 U1 (.Y(n6),
	.B(talker_str_1xfsm_unitxn9),
	.A(talker_str_1xfsm_unitxstate_regx1x));
   AND2X2 U7 (.Y(talker_str_1xfsm_unitxstate_nextx1x),
	.B(talker_str_1xfsm_unitxn8),
	.A(rcv));
   INVX1 U8 (.Y(n7),
	.A(n6));
   INVX1 U13 (.Y(talker_str_1xfsm_unitxn7),
	.A(rcv));
   INVX1 U14 (.Y(talker_str_1xfsm_unitxn6),
	.A(talker_str_1xfsm_unitxstate_regx0x));
   DFFSR listener_str_1xsync_unitxsync_reg_reg (.S(1'b1),
	.R(listener_str_1xsync_unitxn2),
	.Q(listener_str_1xreq_sync),
	.D(n22),
	.CLK(clk1));
   DFFSR listener_str_1xsync_unitxmeta_reg_reg (.S(1'b1),
	.R(listener_str_1xsync_unitxn2),
	.Q(listener_str_1xsync_unitxmeta_reg),
	.D(n28),
	.CLK(clk1));
   DFFSR listener_str_1xfsm_unitxack_buf_reg_reg (.S(1'b1),
	.R(listener_str_1xsync_unitxn2),
	.Q(ack_out),
	.D(n25),
	.CLK(clk1));
   DFFSR talker_str_1xsync_unitxsync_reg_reg (.S(1'b1),
	.R(talker_str_1xfsm_unitxn4),
	.Q(rcv),
	.D(n16),
	.CLK(clk2));
   DFFSR talker_str_1xsync_unitxmeta_reg_reg (.S(1'b1),
	.R(talker_str_1xfsm_unitxn4),
	.Q(talker_str_1xsync_unitxmeta_reg),
	.D(n19),
	.CLK(clk2));
   INVX1 U2 (.Y(n15),
	.A(talker_str_1xsync_unitxmeta_reg));
   INVX1 U3 (.Y(n16),
	.A(n15));
   INVX1 U5 (.Y(n18),
	.A(ack_out));
   INVX1 U6 (.Y(n19),
	.A(n18));
   INVX1 U16 (.Y(n21),
	.A(listener_str_1xsync_unitxmeta_reg));
   INVX1 U17 (.Y(n22),
	.A(n21));
   INVX1 U19 (.Y(n24),
	.A(listener_str_1xreq_sync));
   INVX1 U20 (.Y(n25),
	.A(n24));
   INVX1 U22 (.Y(n27),
	.A(req_in));
   INVX1 U23 (.Y(n28),
	.A(n27));
endmodule

