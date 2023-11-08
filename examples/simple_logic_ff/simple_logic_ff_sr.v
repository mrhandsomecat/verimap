module simple_logic_ff (clk, out, a, b, c, d, reset);
  input   clk, a, b, c, d, reset;
  output  out;
  wire    N3, temp1, N1, temp2, N2;

  OR2 C10 ( .A(a), .B(b), .Q(temp1) );
  OR2 C11 ( .A(c), .B(d), .Q(temp2) );
  AND2 C12 ( .A(temp1), .B(temp2), .Q(N3) );

  DFA temp1_reg (.C(clk), .D(temp1), .Q(N1), .QN(), .RN(reset));
  DFA temp2_reg (.C(clk), .D(temp2), .Q(N2), .QN(), .RN(reset));
  DFA out_reg (.C(clk), .D(N3), .Q(out), .QN(), .RN(reset));
  

endmodule




