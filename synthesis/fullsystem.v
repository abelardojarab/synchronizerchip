
module fullsystem ( clk1, clk2, reset1, reset2, start, ready, rcv );
  input clk1, clk2, reset1, reset2, start;
  output ready, rcv;
  wire   n14, req_in, ack_out, listener_str_1xreq_sync,
         listener_str_1xsync_unitxn2, listener_str_1xsync_unitxmeta_reg,
         talker_str_1xfsm_unitxn9, talker_str_1xfsm_unitxn8,
         talker_str_1xfsm_unitxn7, talker_str_1xfsm_unitxn6,
         talker_str_1xfsm_unitxn4, talker_str_1xfsm_unitxstate_nextx1x,
         talker_str_1xfsm_unitxstate_regx0x,
         talker_str_1xfsm_unitxstate_regx1x, talker_str_1xsync_unitxmeta_reg,
         n6, n7, n8, n10, n11, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29;

  INVX1 listener_str_1xsync_unitxU4 ( .A(reset1), .Y(
        listener_str_1xsync_unitxn2) );
  XOR2X1 talker_str_1xfsm_unitxU13 ( .A(n10), .B(n11), .Y(
        talker_str_1xfsm_unitxn8) );
  NOR2X1 talker_str_1xfsm_unitxU12 ( .A(n11), .B(talker_str_1xfsm_unitxn8), 
        .Y(ready) );
  AOI22X1 talker_str_1xfsm_unitxU11 ( .A(n11), .B(talker_str_1xfsm_unitxn7), 
        .C(start), .D(talker_str_1xfsm_unitxn6), .Y(talker_str_1xfsm_unitxn9)
         );
  INVX1 talker_str_1xfsm_unitxU5 ( .A(reset2), .Y(talker_str_1xfsm_unitxn4) );
  DFFSR talker_str_1xfsm_unitxreq_buf_reg_reg ( .D(n7), .CLK(clk2), .R(
        talker_str_1xfsm_unitxn4), .S(1'b1), .Q(req_in) );
  DFFSR talker_str_1xfsm_unitxstate_reg_regx1x ( .D(
        talker_str_1xfsm_unitxstate_nextx1x), .CLK(clk2), .R(
        talker_str_1xfsm_unitxn4), .S(1'b1), .Q(
        talker_str_1xfsm_unitxstate_regx1x) );
  DFFSR talker_str_1xfsm_unitxstate_reg_regx0x ( .D(n7), .CLK(clk2), .R(
        talker_str_1xfsm_unitxn4), .S(1'b1), .Q(
        talker_str_1xfsm_unitxstate_regx0x) );
  OR2X1 U1 ( .A(n10), .B(n8), .Y(n6) );
  AND2X1 U7 ( .A(rcv), .B(talker_str_1xfsm_unitxn8), .Y(
        talker_str_1xfsm_unitxstate_nextx1x) );
  INVX1 U8 ( .A(n6), .Y(n7) );
  BUFX2 U9 ( .A(talker_str_1xfsm_unitxn9), .Y(n8) );
  BUFX2 U10 ( .A(n14), .Y(rcv) );
  BUFX2 U11 ( .A(talker_str_1xfsm_unitxstate_regx1x), .Y(n10) );
  BUFX2 U12 ( .A(talker_str_1xfsm_unitxstate_regx0x), .Y(n11) );
  INVX1 U13 ( .A(rcv), .Y(talker_str_1xfsm_unitxn7) );
  INVX1 U14 ( .A(n11), .Y(talker_str_1xfsm_unitxn6) );
  DFFSR listener_str_1xsync_unitxsync_reg_reg ( .D(n22), .CLK(clk1), .R(
        listener_str_1xsync_unitxn2), .S(1'b1), .Q(listener_str_1xreq_sync) );
  DFFSR listener_str_1xsync_unitxmeta_reg_reg ( .D(n28), .CLK(clk1), .R(
        listener_str_1xsync_unitxn2), .S(1'b1), .Q(
        listener_str_1xsync_unitxmeta_reg) );
  DFFSR listener_str_1xfsm_unitxack_buf_reg_reg ( .D(n25), .CLK(clk1), .R(
        listener_str_1xsync_unitxn2), .S(1'b1), .Q(ack_out) );
  DFFSR talker_str_1xsync_unitxsync_reg_reg ( .D(n16), .CLK(clk2), .R(
        talker_str_1xfsm_unitxn4), .S(1'b1), .Q(n14) );
  DFFSR talker_str_1xsync_unitxmeta_reg_reg ( .D(n19), .CLK(clk2), .R(
        talker_str_1xfsm_unitxn4), .S(1'b1), .Q(
        talker_str_1xsync_unitxmeta_reg) );
  INVX1 U2 ( .A(n17), .Y(n15) );
  INVX1 U3 ( .A(n15), .Y(n16) );
  BUFX2 U4 ( .A(talker_str_1xsync_unitxmeta_reg), .Y(n17) );
  INVX1 U5 ( .A(n20), .Y(n18) );
  INVX1 U6 ( .A(n18), .Y(n19) );
  BUFX2 U15 ( .A(ack_out), .Y(n20) );
  INVX1 U16 ( .A(n23), .Y(n21) );
  INVX1 U17 ( .A(n21), .Y(n22) );
  BUFX2 U18 ( .A(listener_str_1xsync_unitxmeta_reg), .Y(n23) );
  INVX1 U19 ( .A(n26), .Y(n24) );
  INVX1 U20 ( .A(n24), .Y(n25) );
  BUFX2 U21 ( .A(listener_str_1xreq_sync), .Y(n26) );
  INVX1 U22 ( .A(n29), .Y(n27) );
  INVX1 U23 ( .A(n27), .Y(n28) );
  BUFX2 U24 ( .A(req_in), .Y(n29) );
endmodule

