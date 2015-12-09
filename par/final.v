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
   wire clk1__L2_N0;
   wire clk1__L1_N0;
   wire clk2__L2_N0;
   wire clk2__L1_N0;
   wire FE_OCP_RBN3_reset1;
   wire FE_OCP_RBN1_reset2;
   wire n14;
   wire req_in;
   wire ack_out;
   wire listener_str_1xreq_sync;
   wire listener_str_1xsync_unitxmeta_reg;
   wire talker_str_1xfsm_unitxn9;
   wire talker_str_1xfsm_unitxn8;
   wire talker_str_1xfsm_unitxn7;
   wire talker_str_1xfsm_unitxn6;
   wire talker_str_1xfsm_unitxstate_nextx1x;
   wire talker_str_1xfsm_unitxstate_regx0x;
   wire talker_str_1xfsm_unitxstate_regx1x;
   wire talker_str_1xsync_unitxmeta_reg;
   wire n6;
   wire n7;
   wire n8;
   wire n10;
   wire n11;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;

   INVX4 clk1__L2_I0 (.Y(clk1__L2_N0), 
	.A(clk1__L1_N0));
   INVX8 clk1__L1_I0 (.Y(clk1__L1_N0), 
	.A(clk1));
   INVX4 clk2__L2_I0 (.Y(clk2__L2_N0), 
	.A(clk2__L1_N0));
   INVX8 clk2__L1_I0 (.Y(clk2__L1_N0), 
	.A(clk2));
   INVX2 FE_OCP_RBC3_reset1 (.Y(FE_OCP_RBN3_reset1), 
	.A(reset1));
   INVX4 FE_OCP_RBC1_reset2 (.Y(FE_OCP_RBN1_reset2), 
	.A(reset2));
   XOR2X1 talker_str_1xfsm_unitxU13 (.Y(talker_str_1xfsm_unitxn8), 
	.B(n11), 
	.A(n10));
   NOR2X1 talker_str_1xfsm_unitxU12 (.Y(ready), 
	.B(talker_str_1xfsm_unitxn8), 
	.A(n11));
   AOI22X1 talker_str_1xfsm_unitxU11 (.Y(talker_str_1xfsm_unitxn9), 
	.D(talker_str_1xfsm_unitxn6), 
	.C(start), 
	.B(talker_str_1xfsm_unitxn7), 
	.A(n11));
   DFFSR talker_str_1xfsm_unitxreq_buf_reg_reg (.S(1'b1), 
	.R(FE_OCP_RBN1_reset2), 
	.Q(req_in), 
	.D(n7), 
	.CLK(clk2__L2_N0));
   DFFSR talker_str_1xfsm_unitxstate_reg_regx1x (.S(1'b1), 
	.R(FE_OCP_RBN1_reset2), 
	.Q(talker_str_1xfsm_unitxstate_regx1x), 
	.D(talker_str_1xfsm_unitxstate_nextx1x), 
	.CLK(clk2__L2_N0));
   DFFSR talker_str_1xfsm_unitxstate_reg_regx0x (.S(1'b1), 
	.R(FE_OCP_RBN1_reset2), 
	.Q(talker_str_1xfsm_unitxstate_regx0x), 
	.D(n7), 
	.CLK(clk2__L2_N0));
   OR2X2 U1 (.Y(n6), 
	.B(n8), 
	.A(n10));
   AND2X2 U7 (.Y(talker_str_1xfsm_unitxstate_nextx1x), 
	.B(talker_str_1xfsm_unitxn8), 
	.A(rcv));
   INVX1 U8 (.Y(n7), 
	.A(n6));
   BUFX2 U9 (.Y(n8), 
	.A(talker_str_1xfsm_unitxn9));
   BUFX2 U10 (.Y(rcv), 
	.A(n14));
   BUFX2 U11 (.Y(n10), 
	.A(talker_str_1xfsm_unitxstate_regx1x));
   BUFX2 U12 (.Y(n11), 
	.A(talker_str_1xfsm_unitxstate_regx0x));
   INVX1 U13 (.Y(talker_str_1xfsm_unitxn7), 
	.A(rcv));
   INVX1 U14 (.Y(talker_str_1xfsm_unitxn6), 
	.A(n11));
   DFFSR listener_str_1xsync_unitxsync_reg_reg (.S(1'b1), 
	.R(FE_OCP_RBN3_reset1), 
	.Q(listener_str_1xreq_sync), 
	.D(n22), 
	.CLK(clk1__L2_N0));
   DFFSR listener_str_1xsync_unitxmeta_reg_reg (.S(1'b1), 
	.R(FE_OCP_RBN3_reset1), 
	.Q(listener_str_1xsync_unitxmeta_reg), 
	.D(n28), 
	.CLK(clk1__L2_N0));
   DFFSR listener_str_1xfsm_unitxack_buf_reg_reg (.S(1'b1), 
	.R(FE_OCP_RBN3_reset1), 
	.Q(ack_out), 
	.D(n25), 
	.CLK(clk1__L2_N0));
   DFFSR talker_str_1xsync_unitxsync_reg_reg (.S(1'b1), 
	.R(FE_OCP_RBN1_reset2), 
	.Q(n14), 
	.D(n16), 
	.CLK(clk2__L2_N0));
   DFFSR talker_str_1xsync_unitxmeta_reg_reg (.S(1'b1), 
	.R(FE_OCP_RBN1_reset2), 
	.Q(talker_str_1xsync_unitxmeta_reg), 
	.D(n19), 
	.CLK(clk2__L2_N0));
   INVX1 U2 (.Y(n15), 
	.A(n17));
   INVX1 U3 (.Y(n16), 
	.A(n15));
   BUFX2 U4 (.Y(n17), 
	.A(talker_str_1xsync_unitxmeta_reg));
   INVX1 U5 (.Y(n18), 
	.A(n20));
   INVX1 U6 (.Y(n19), 
	.A(n18));
   BUFX2 U15 (.Y(n20), 
	.A(ack_out));
   INVX1 U16 (.Y(n21), 
	.A(n23));
   INVX1 U17 (.Y(n22), 
	.A(n21));
   BUFX2 U18 (.Y(n23), 
	.A(listener_str_1xsync_unitxmeta_reg));
   INVX1 U19 (.Y(n24), 
	.A(n26));
   INVX1 U20 (.Y(n25), 
	.A(n24));
   BUFX2 U21 (.Y(n26), 
	.A(listener_str_1xreq_sync));
   INVX1 U22 (.Y(n27), 
	.A(n29));
   INVX1 U23 (.Y(n28), 
	.A(n27));
   BUFX2 U24 (.Y(n29), 
	.A(req_in));
endmodule

