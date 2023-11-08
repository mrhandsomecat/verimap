module simple_logic ( out, a, b, c, d, );
  input a, b, c, d;
  output out;
  wire   temp1, temp2;

  OR2 C9 ( .A(a), .B(b), .Q(temp1) );
  OR2 C10 ( .A(c), .B(d), .Q(temp2) );
  AND2 C11 ( .A(temp1), .B(temp2), .Q(out) );
endmodule

module simple_logic_ff (clk, out, a, b, c, d)
  input   clk, a, b, c, d;
  output  out;
  wire    N0, temp1, N1, temp2, N2;

  OR2 C10 ( .A(a), .B(b), .Q(temp1) );
  OR2 C11 ( .A(c), .B(d), .Q(temp2) );
  AND2 C12 ( .A(temp1), .B(temp2), .Q(out) );

  DF8 temp1_reg (.C(clk), .D(N0), .Q(temp1), .QN());
  DF8 temp1_reg (.C(clk), .D(N1), .Q(temp2), .QN());
  DF8 out_reg (.C(clk), .D(N2), .Q(out), .QN());
  
 
 

endmodule


module DFB (C, D, Q, QN, RN, SN);
  input C;
  input D;
  output Q;
  output QN;
  input RN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  DFF_UDP (Q_buf, D, C, SN, RN, notifier);
endmodule


module simple_logic_ff_netlist ( clk, out, a, b, c, d );
  input clk, a, b, c, d;
  output out;
  wire   N0, temp1, N1, temp2, N2;

  \**SEQGEN**  temp1_reg ( .clear(1'b0), .preset(1'b0), .next_state(N0), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(temp1), .QN(), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  temp2_reg ( .clear(1'b0), .preset(1'b0), .next_state(N1), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(temp2), .QN(), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  out_reg ( .clear(1'b0), .preset(1'b0), .next_state(N2), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(out), .QN(), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  GTECH_OR2 C10 ( .A(a), .B(b), .Z(N0) );
  GTECH_OR2 C11 ( .A(c), .B(d), .Z(N1) );
  GTECH_AND2 C12 ( .A(temp1), .B(temp2), .Z(N2) );
endmodule