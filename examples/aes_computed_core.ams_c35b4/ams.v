// Verilog simulation library for c35 CORELIB 3.3V
// $Id: c35_CORELIB.v,v 1.2 2002/05/28 13:12:19 mbo Exp mbo $
// Owner: austriamicrosystems AG  HIT-Kit: Digital
`timescale 1ns/1ps
`celldefine 
module ADD21 (A, B, CO, S);
  input A;
  input B;
  output CO;
  output S;

  and (net_1, B, A);
  buf ( CO, net_1);
  xor (S, B, A);

`ifdef functional
`else
  specify
    (A => CO) = (1,1);
    (A => S) = (1,1);
    (B => CO) = (1,1);
    (B => S) = (1,1);
  endspecify
`endif

endmodule

module ADD22 (A, B, CO, S);
  input A;
  input B;
  output CO;
  output S;

  and (net_1, B, A);
  buf ( CO, net_1);
  xor (S, B, A);

`ifdef functional
`else
  specify
    (A => CO) = (1,1);
    (A => S) = (1,1);
    (B => CO) = (1,1);
    (B => S) = (1,1);
  endspecify
`endif

endmodule

module ADD31 (A, B, CI, CO, S);
  input A;
  input B;
  input CI;
  output CO;
  output S;

  and (net_1, CI, B);
  and (net_2, CI, A);
  and (net_3, B, A);
  or ( CO, net_1, net_2, net_3);
  xor (S, CI, B, A);

`ifdef functional
`else
  specify
    (A => CO) = (1,1);
    (A => S) = (1,1);
    (B => CO) = (1,1);
    (B => S) = (1,1);
    (CI => CO) = (1,1);
    (CI => S) = (1,1);
  endspecify
`endif

endmodule

module ADD32 (A, B, CI, CO, S);
  input A;
  input B;
  input CI;
  output CO;
  output S;

  and (net_1, CI, B);
  and (net_2, CI, A);
  and (net_3, B, A);
  or ( CO, net_1, net_2, net_3);
  xor (S, CI, B, A);

`ifdef functional
`else
  specify
    (A => CO) = (1,1);
    (A => S) = (1,1);
    (B => CO) = (1,1);
    (B => S) = (1,1);
    (CI => CO) = (1,1);
    (CI => S) = (1,1);
  endspecify
`endif

endmodule

module AOI210 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  not (Q,Q_I);
  and (net_0, A, B);
  or (Q_I, net_0, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module AOI211 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  not (Q,Q_I);
  and (net_0, A, B);
  or (Q_I, net_0, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module AOI212 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  not (Q,Q_I);
  and (net_0, A, B);
  or (Q_I, net_0, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module AOI2110 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  and (net_2, B, A);
  or (Q_I, D, C, net_2);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module AOI2111 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  and (net_2, B, A);
  or (Q_I, D, C, net_2);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module AOI2112 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  and (net_2, B, A);
  or (Q_I, D, C, net_2);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module AOI220 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  and (net_0, B, A);
  and (net_1, D, C);
  or (Q_I, net_0, net_1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module AOI221 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  and (net_0, B, A);
  and (net_1, D, C);
  or (Q_I, net_0, net_1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module AOI222 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  and (net_0, B, A);
  and (net_1, D, C);
  or (Q_I, net_0, net_1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module AOI310 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  and (net_0, B, A, C);
  or (Q_I, net_0, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module AOI311 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  and (net_0, B, A, C);
  or (Q_I, net_0, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module AOI312 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  and (net_0, B, A, C);
  or (Q_I, net_0, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFE2 (A, E, Q);
  input A;
  input E;
  output Q;

  bufif1 (Q, A, E);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (E => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFE4 (A, E, Q);
  input A;
  input E;
  output Q;

  bufif1 (Q, A, E);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (E => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFE6 (A, E, Q);
  input A;
  input E;
  output Q;

  bufif1 (Q, A, E);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (E => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFE8 (A, E, Q);
  input A;
  input E;
  output Q;

  bufif1 (Q, A, E);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (E => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFE10 (A, E, Q);
  input A;
  input E;
  output Q;

  bufif1 (Q, A, E);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (E => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFE12 (A, E, Q);
  input A;
  input E;
  output Q;

  bufif1 (Q, A, E);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (E => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFE15 (A, E, Q);
  input A;
  input E;
  output Q;

  bufif1 (Q, A, E);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (E => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFT2 (A, EN, Q);
  input A;
  input EN;
  output Q;

  bufif0 (Q, A, EN);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (EN => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFT4 (A, EN, Q);
  input A;
  input EN;
  output Q;

  bufif0 (Q, A, EN);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (EN => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFT6 (A, EN, Q);
  input A;
  input EN;
  output Q;

  bufif0 (Q, A, EN);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (EN => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFT8 (A, EN, Q);
  input A;
  input EN;
  output Q;

  bufif0 (Q, A, EN);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (EN => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFT10 (A, EN, Q);
  input A;
  input EN;
  output Q;

  bufif0 (Q, A, EN);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (EN => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFT12 (A, EN, Q);
  input A;
  input EN;
  output Q;

  bufif0 (Q, A, EN);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (EN => Q) = (1,1);
  endspecify
`endif

endmodule

module BUFT15 (A, EN, Q);
  input A;
  input EN;
  output Q;

  bufif0 (Q, A, EN);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (EN => Q) = (1,1);
  endspecify
`endif

endmodule

module BUF2 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module BUF4 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module BUF6 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module BUF8 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module BUF12 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module BUF15 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module BUSHD (A);
   inout A;

   buf (A_buf, A);
//   buf (pull1, pull0)(A, A_buf);
 
endmodule

module CLKBU2 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKBU4 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKBU6 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKBU8 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKBU12 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKBU15 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKIN0 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKIN1 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKIN2 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKIN3 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKIN4 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKIN6 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKIN8 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKIN10 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKIN12 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module CLKIN15 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module DF1 (C, D, Q, QN);
  input C;
  input D;
  output Q;
  output QN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  DFF_UDP (Q_buf, D, C, 1, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
  endspecify
`endif

endmodule

module DF3 (C, D, Q, QN);
  input C;
  input D;
  output Q;
  output QN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  DFF_UDP (Q_buf, D, C, 1, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFC1 (C, D, Q, QN, RN);
  input C;
  input D;
  output Q;
  output QN;
  input RN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  DFF_UDP (Q_buf, D, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFC3 (C, D, Q, QN, RN);
  input C;
  input D;
  output Q;
  output QN;
  input RN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  DFF_UDP (Q_buf, D, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFCP1 (C, D, Q, QN, RN, SN);
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

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFCP3 (C, D, Q, QN, RN, SN);
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

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFP1 (C, D, Q, QN, SN);
  input C;
  input D;
  output Q;
  output QN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  DFF_UDP (Q_buf, D, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFP3 (C, D, Q, QN, SN);
  input C;
  input D;
  output Q;
  output QN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  DFF_UDP (Q_buf, D, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFS1 (C, D, Q, QN, SD, SE);
  input C;
  input D;
  output Q;
  output QN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, D, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, 1, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    $setup(posedge D, posedge C &&& (~SE), 0, notifier);
    $setup(negedge D, posedge C &&& (~SE), 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, posedge D &&& (~SE), 0, notifier);
    $hold(posedge C, negedge D &&& (~SE), 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFS3 (C, D, Q, QN, SD, SE);
  input C;
  input D;
  output Q;
  output QN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, D, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, 1, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    $setup(posedge D, posedge C &&& (~SE), 0, notifier);
    $setup(negedge D, posedge C &&& (~SE), 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (~SE), 0, notifier);
    $hold(posedge C, posedge D &&& (~SE), 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSC1 (C, D, Q, QN, RN, SD, SE);
  input C;
  input D;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, D, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge D, posedge C &&& (~SE), 0, notifier);
    $setup(negedge D, posedge C &&& (~SE), 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (~SE), 0, notifier);
    $hold(posedge C, posedge D &&& (~SE), 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSC3 (C, D, Q, QN, RN, SD, SE);
  input C;
  input D;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, D, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge D, posedge C &&& (~SE), 0, notifier);
    $setup(negedge D, posedge C &&& (~SE), 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (~SE), 0, notifier);
    $hold(posedge C, posedge D &&& (~SE), 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSCP1 (C, D, Q, QN, RN, SD, SE, SN);
  input C;
  input D;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, D, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge D, posedge C &&& (~SE), 0, notifier);
    $setup(negedge D, posedge C &&& (~SE), 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (~SE), 0, notifier);
    $hold(posedge C, posedge D &&& (~SE), 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSCP3 (C, D, Q, QN, RN, SD, SE, SN);
  input C;
  input D;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, D, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge D, posedge C &&& (~SE), 0, notifier);
    $setup(negedge D, posedge C &&& (~SE), 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (~SE), 0, notifier);
    $hold(posedge C, posedge D &&& (~SE), 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSP1 (C, D, Q, QN, SD, SE, SN);
  input C;
  input D;
  output Q;
  output QN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, D, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge D, posedge C &&& (~SE), 0, notifier);
    $setup(negedge D, posedge C &&& (~SE), 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (~SE), 0, notifier);
    $hold(posedge C, posedge D &&& (~SE), 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSP3 (C, D, Q, QN, SD, SE, SN);
  input C;
  input D;
  output Q;
  output QN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, D, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge D, posedge C &&& (~SE), 0, notifier);
    $setup(negedge D, posedge C &&& (~SE), 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (~SE), 0, notifier);
    $hold(posedge C, posedge D &&& (~SE), 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFE1 (C, D, E, Q, QN);
  input C;
  input D;
  input E;
  output Q;
  output QN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, D, E);
  DFF_UDP (Q_buf, D_buf, C, 1, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFE3 (C, D, E, Q, QN);
  input C;
  input D;
  input E;
  output Q;
  output QN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, D, E);
  DFF_UDP (Q_buf, D_buf, C, 1, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFEC1 (C, D, E, Q, QN, RN);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input RN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, D, E);
  DFF_UDP (Q_buf, D_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFEC3 (C, D, E, Q, QN, RN);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input RN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, D, E);
  DFF_UDP (Q_buf, D_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFECP1 (C, D, E, Q, QN, RN, SN);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input RN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, D, E);
  DFF_UDP (Q_buf, D_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFECP3 (C, D, E, Q, QN, RN, SN);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input RN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, D, E);
  DFF_UDP (Q_buf, D_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFEP1 (C, D, E, Q, QN, SN);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, D, E);
  DFF_UDP (Q_buf, D_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFEP3 (C, D, E, Q, QN, SN);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, D, E);
  DFF_UDP (Q_buf, D_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge D, posedge C, 0, notifier);
    $setup(negedge D, posedge C, 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D, 0, notifier);
    $hold(posedge C, posedge D, 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSE1 (C, D, E, Q, QN, SD, SE);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, D, E);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, 1, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    $setup(posedge D, posedge C &&& (~SE), 0, notifier);
    $setup(negedge D, posedge C &&& (~SE), 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (~SE), 0, notifier);
    $hold(posedge C, posedge D &&& (~SE), 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSE3 (C, D, E, Q, QN, SD, SE);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, D, E);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, 1, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    $setup(posedge D, posedge C &&& (~SE), 0, notifier);
    $setup(negedge D, posedge C &&& (~SE), 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (~SE), 0, notifier);
    $hold(posedge C, posedge D &&& (~SE), 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSEC1 (C, D, E, Q, QN, RN, SD, SE);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, D, E);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge D, posedge C &&& (SE), 0, notifier);
    $setup(negedge D, posedge C &&& (SE), 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (~SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (~SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (SE), 0, notifier);
    $hold(posedge C, posedge D &&& (SE), 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (~SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (~SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSEC3 (C, D, E, Q, QN, RN, SD, SE);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, D, E);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge D, posedge C &&& (SE), 0, notifier);
    $setup(negedge D, posedge C &&& (SE), 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (~SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (~SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (SE), 0, notifier);
    $hold(posedge C, posedge D &&& (SE), 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (~SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (~SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSECP1 (C, D, E, Q, QN, RN, SD, SE, SN);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, D, E);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge D, posedge C &&& (SE), 0, notifier);
    $setup(negedge D, posedge C &&& (SE), 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (~SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (~SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (SE), 0, notifier);
    $hold(posedge C, posedge D &&& (SE), 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (~SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (~SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSECP3 (C, D, E, Q, QN, RN, SD, SE, SN);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, D, E);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge D, posedge C &&& (SE), 0, notifier);
    $setup(negedge D, posedge C &&& (SE), 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (~SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (~SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (SE), 0, notifier);
    $hold(posedge C, posedge D &&& (SE), 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (~SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (~SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSEP1 (C, D, E, Q, QN, SD, SE, SN);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, D, E);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge D, posedge C &&& (SE), 0, notifier);
    $setup(negedge D, posedge C &&& (SE), 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (~SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (~SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (SE), 0, notifier);
    $hold(posedge C, posedge D &&& (SE), 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, negedge SD &&& (~SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (~SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DFSEP3 (C, D, E, Q, QN, SD, SE, SN);
  input C;
  input D;
  input E;
  output Q;
  output QN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, D, E);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge D, posedge C &&& (SE), 0, notifier);
    $setup(negedge D, posedge C &&& (SE), 0, notifier);
    $setup(posedge E, posedge C, 0, notifier);
    $setup(negedge E, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (~SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (~SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge D &&& (SE), 0, notifier);
    $hold(posedge C, posedge D &&& (SE), 0, notifier);
    $hold(posedge C, negedge E, 0, notifier);
    $hold(posedge C, posedge E, 0, notifier);
    $hold(posedge C, negedge SD &&& (~SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (~SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DL1 (D, GN, Q, QN);
  input D;
  input GN;
  output Q;
  output QN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  LATCH_UDP (Q_buf, D, GN, 1, 1, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (D => QN) = (1,1);
    (GN => Q) = (1,1);
    (GN => QN) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DL3 (D, GN, Q, QN);
  input D;
  input GN;
  output Q;
  output QN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  LATCH_UDP (Q_buf, D, GN, 1, 1, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (D => QN) = (1,1);
    (GN => Q) = (1,1);
    (GN => QN) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLC1 (D, GN, Q, QN, RN);
  input D;
  input GN;
  output Q;
  output QN;
  input RN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  LATCH_UDP (Q_buf, D, GN, 1, RN, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (D => QN) = (1,1);
    (GN => Q) = (1,1);
    (GN => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $recovery(posedge RN, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $hold(posedge GN, posedge RN, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLC3 (D, GN, Q, QN, RN);
  input D;
  input GN;
  output Q;
  output QN;
  input RN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  LATCH_UDP (Q_buf, D, GN, 1, RN, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (D => QN) = (1,1);
    (GN => Q) = (1,1);
    (GN => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $recovery(posedge RN, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $hold(posedge GN, posedge RN, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLCP1 (D, GN, Q, QN, RN, SN);
  input D;
  input GN;
  output Q;
  output QN;
  input RN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  nor (RNSN, RN, SN);
  nor (QN, Q_buf,RNSN);
  LATCH_UDP (Q_buf, D, GN, SN, RN, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (D => QN) = (1,1);
    (GN => Q) = (1,1);
    (GN => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $recovery(posedge RN, posedge GN, 0, notifier);
    $recovery(posedge SN, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $hold(posedge GN, posedge RN, 0, notifier);
    $hold(posedge GN, posedge SN, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLCP3 (D, GN, Q, QN, RN, SN);
  input D;
  input GN;
  output Q;
  output QN;
  input RN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  nor (RNSN, RN, SN);
  nor (QN, Q_buf,RNSN);
  LATCH_UDP (Q_buf, D, GN, SN, RN, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (D => QN) = (1,1);
    (GN => Q) = (1,1);
    (GN => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $recovery(posedge RN, posedge GN, 0, notifier);
    $recovery(posedge SN, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $hold(posedge GN, posedge RN, 0, notifier);
    $hold(posedge GN, posedge SN, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLP1 (D, GN, Q, QN, SN);
  input D;
  input GN;
  output Q;
  output QN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  LATCH_UDP (Q_buf, D, GN, SN, 1, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (D => QN) = (1,1);
    (GN => Q) = (1,1);
    (GN => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $recovery(posedge SN, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $hold(posedge GN, posedge SN, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLP3 (D, GN, Q, QN, SN);
  input D;
  input GN;
  output Q;
  output QN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  LATCH_UDP (Q_buf, D, GN, SN, 1, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (D => QN) = (1,1);
    (GN => Q) = (1,1);
    (GN => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $recovery(posedge SN, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $hold(posedge GN, posedge SN, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLQ1 (D, GN, Q);
  input D;
  input GN;
  output Q;

  reg notifier;
  buf (Q, Q_buf);
  LATCH_UDP (Q_buf, D, GN, 1, 1, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (GN => Q) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLQ3 (D, GN, Q);
  input D;
  input GN;
  output Q;

  reg notifier;
  buf (Q, Q_buf);
  LATCH_UDP (Q_buf, D, GN, 1, 1, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (GN => Q) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLCQ1 (D, GN, Q, RN);
  input D;
  input GN;
  output Q;
  input RN;

  reg notifier;
  buf (Q, Q_buf);
  LATCH_UDP (Q_buf, D, GN, 1, RN, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (GN => Q) = (1,1);
    (RN => Q) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $recovery(posedge RN, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $hold(posedge GN, posedge RN, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLCQ3 (D, GN, Q, RN);
  input D;
  input GN;
  output Q;
  input RN;

  reg notifier;
  buf (Q, Q_buf);
  LATCH_UDP (Q_buf, D, GN, 1, RN, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (GN => Q) = (1,1);
    (RN => Q) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $recovery(posedge RN, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $hold(posedge GN, posedge RN, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLCPQ1 (D, GN, Q, RN, SN);
  input D;
  input GN;
  output Q;
  input RN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  LATCH_UDP (Q_buf, D, GN, SN, RN, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (GN => Q) = (1,1);
    (RN => Q) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $recovery(posedge RN, posedge GN, 0, notifier);
    $recovery(posedge SN, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $hold(posedge GN, posedge RN, 0, notifier);
    $hold(posedge GN, posedge SN, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLCPQ3 (D, GN, Q, RN, SN);
  input D;
  input GN;
  output Q;
  input RN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  LATCH_UDP (Q_buf, D, GN, SN, RN, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (GN => Q) = (1,1);
    (RN => Q) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $recovery(posedge RN, posedge GN, 0, notifier);
    $recovery(posedge SN, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $hold(posedge GN, posedge RN, 0, notifier);
    $hold(posedge GN, posedge SN, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLPQ1 (D, GN, Q, SN);
  input D;
  input GN;
  output Q;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  LATCH_UDP (Q_buf, D, GN, SN, 1, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (GN => Q) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $recovery(posedge SN, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $hold(posedge GN, posedge SN, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLPQ3 (D, GN, Q, SN);
  input D;
  input GN;
  output Q;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  LATCH_UDP (Q_buf, D, GN, SN, 1, notifier);

`ifdef functional
`else
  specify
    (D => Q) = (1,1);
    (GN => Q) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge D, posedge GN, 0, notifier);
    $setup(negedge D, posedge GN, 0, notifier);
    $recovery(posedge SN, posedge GN, 0, notifier);
    $hold(posedge GN, negedge D, 0, notifier);
    $hold(posedge GN, posedge D, 0, notifier);
    $hold(posedge GN, posedge SN, 0, notifier);
    $width(negedge GN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module DLY12 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module DLY22 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module DLY32 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module DLY42 (A, Q);
  input A;
  output Q;

  buf (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module IMAJ30 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  not (Q,Q_I);
  and (net_0, B, A);
  and (net_1, C, B);
  and (net_2, C, A);
  or (Q_I, net_0, net_1, net_2);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module IMAJ31 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  not (Q,Q_I);
  and (net_0, B, A);
  and (net_1, C, B);
  and (net_2, C, A);
  or (Q_I, net_0, net_1, net_2);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module IMUX20 (A, B, Q, S);
  input A;
  input B;
  output Q;
  input S;

  not (Q,Q_I);
  MUX_UDP (Q_I, A, B, S);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (S => Q) = (1,1);
  endspecify
`endif

endmodule

module IMUX21 (A, B, Q, S);
  input A;
  input B;
  output Q;
  input S;

  not (Q,Q_I);
  MUX_UDP (Q_I, A, B, S);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (S => Q) = (1,1);
  endspecify
`endif

endmodule

module IMUX22 (A, B, Q, S);
  input A;
  input B;
  output Q;
  input S;

  not (Q,Q_I);
  MUX_UDP (Q_I, A, B, S);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (S => Q) = (1,1);
  endspecify
`endif

endmodule

module IMUX23 (A, B, Q, S);
  input A;
  input B;
  output Q;
  input S;

  not (Q,Q_I);
  MUX_UDP (Q_I, A, B, S);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (S => Q) = (1,1);
  endspecify
`endif

endmodule

module IMUX24 (A, B, Q, S);
  input A;
  input B;
  output Q;
  input S;

  not (Q,Q_I);
  MUX_UDP (Q_I, A, B, S);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (S => Q) = (1,1);
  endspecify
`endif

endmodule

module IMUX30 (A, B, C, Q, S0, S1);
  input A;
  input B;
  input C;
  output Q;
  input S0;
  input S1;

  not (Q,Q_I);
  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (Q_I, net_1, C, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module IMUX31 (A, B, C, Q, S0, S1);
  input A;
  input B;
  input C;
  output Q;
  input S0;
  input S1;

  not (Q,Q_I);
  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (Q_I, net_1, C, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module IMUX32 (A, B, C, Q, S0, S1);
  input A;
  input B;
  input C;
  output Q;
  input S0;
  input S1;

  not (Q,Q_I);
  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (Q_I, net_1, C, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module IMUX33 (A, B, C, Q, S0, S1);
  input A;
  input B;
  input C;
  output Q;
  input S0;
  input S1;

  not (Q,Q_I);
  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (Q_I, net_1, C, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module IMUX40 (A, B, C, D, Q, S0, S1);
  input A;
  input B;
  input C;
  input D;
  output Q;
  input S0;
  input S1;

  not (Q,Q_I);
  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (net_2, C, D, S0);
  MUX_UDP (Q_I, net_1, net_2, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module IMUX41 (A, B, C, D, Q, S0, S1);
  input A;
  input B;
  input C;
  input D;
  output Q;
  input S0;
  input S1;

  not (Q,Q_I);
  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (net_2, C, D, S0);
  MUX_UDP (Q_I, net_1, net_2, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module IMUX42 (A, B, C, D, Q, S0, S1);
  input A;
  input B;
  input C;
  input D;
  output Q;
  input S0;
  input S1;

  not (Q,Q_I);
  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (net_2, C, D, S0);
  MUX_UDP (Q_I, net_1, net_2, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module INV0 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module INV1 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module INV2 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module INV3 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module INV4 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module INV6 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module INV8 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module INV10 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module INV12 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module INV15 (A, Q);
  input A;
  output Q;

  not (Q, A);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
  endspecify
`endif

endmodule

module JK1 (C, J, K, Q, QN);
  input C;
  input J;
  input K;
  output Q;
  output QN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  DFF_UDP (Q_buf, JK, C, 1, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    $setup(posedge J, posedge C, 0, notifier);
    $setup(negedge J, posedge C, 0, notifier);
    $setup(posedge K, posedge C, 0, notifier);
    $setup(negedge K, posedge C, 0, notifier);
    $hold(posedge C, negedge J, 0, notifier);
    $hold(posedge C, posedge J, 0, notifier);
    $hold(posedge C, negedge K, 0, notifier);
    $hold(posedge C, posedge K, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
  endspecify
`endif

endmodule

module JK3 (C, J, K, Q, QN);
  input C;
  input J;
  input K;
  output Q;
  output QN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  DFF_UDP (Q_buf, JK, C, 1, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    $setup(posedge J, posedge C, 0, notifier);
    $setup(negedge J, posedge C, 0, notifier);
    $setup(posedge K, posedge C, 0, notifier);
    $setup(negedge K, posedge C, 0, notifier);
    $hold(posedge C, negedge J, 0, notifier);
    $hold(posedge C, posedge J, 0, notifier);
    $hold(posedge C, negedge K, 0, notifier);
    $hold(posedge C, posedge K, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKC1 (C, J, K, Q, QN, RN);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input RN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  DFF_UDP (Q_buf, JK, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge J, posedge C, 0, notifier);
    $setup(negedge J, posedge C, 0, notifier);
    $setup(posedge K, posedge C, 0, notifier);
    $setup(negedge K, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $hold(posedge C, negedge J, 0, notifier);
    $hold(posedge C, posedge J, 0, notifier);
    $hold(posedge C, negedge K, 0, notifier);
    $hold(posedge C, posedge K, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKC3 (C, J, K, Q, QN, RN);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input RN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  DFF_UDP (Q_buf, JK, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge J, posedge C, 0, notifier);
    $setup(negedge J, posedge C, 0, notifier);
    $setup(posedge K, posedge C, 0, notifier);
    $setup(negedge K, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $hold(posedge C, negedge J, 0, notifier);
    $hold(posedge C, posedge J, 0, notifier);
    $hold(posedge C, negedge K, 0, notifier);
    $hold(posedge C, posedge K, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKCP1 (C, J, K, Q, QN, RN, SN);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input RN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  DFF_UDP (Q_buf, JK, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge J, posedge C, 0, notifier);
    $setup(negedge J, posedge C, 0, notifier);
    $setup(posedge K, posedge C, 0, notifier);
    $setup(negedge K, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge J, 0, notifier);
    $hold(posedge C, posedge J, 0, notifier);
    $hold(posedge C, negedge K, 0, notifier);
    $hold(posedge C, posedge K, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKCP3 (C, J, K, Q, QN, RN, SN);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input RN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  DFF_UDP (Q_buf, JK, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge J, posedge C, 0, notifier);
    $setup(negedge J, posedge C, 0, notifier);
    $setup(posedge K, posedge C, 0, notifier);
    $setup(negedge K, posedge C, 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge J, 0, notifier);
    $hold(posedge C, posedge J, 0, notifier);
    $hold(posedge C, negedge K, 0, notifier);
    $hold(posedge C, posedge K, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKP1 (C, J, K, Q, QN, SN);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  DFF_UDP (Q_buf, JK, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge J, posedge C, 0, notifier);
    $setup(negedge J, posedge C, 0, notifier);
    $setup(posedge K, posedge C, 0, notifier);
    $setup(negedge K, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge J, 0, notifier);
    $hold(posedge C, posedge J, 0, notifier);
    $hold(posedge C, negedge K, 0, notifier);
    $hold(posedge C, posedge K, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKP3 (C, J, K, Q, QN, SN);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  DFF_UDP (Q_buf, JK, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge J, posedge C, 0, notifier);
    $setup(negedge J, posedge C, 0, notifier);
    $setup(posedge K, posedge C, 0, notifier);
    $setup(negedge K, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge J, 0, notifier);
    $hold(posedge C, posedge J, 0, notifier);
    $hold(posedge C, negedge K, 0, notifier);
    $hold(posedge C, posedge K, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKS1 (C, J, K, Q, QN, SD, SE);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  MUX_UDP (JK_buf, JK, SD, SE);
  DFF_UDP (Q_buf, JK_buf, C, 1, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    $setup(posedge J, posedge C, 0, notifier);
    $setup(negedge J, posedge C, 0, notifier);
    $setup(posedge K, posedge C, 0, notifier);
    $setup(negedge K, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, negedge J, 0, notifier);
    $hold(posedge C, posedge J, 0, notifier);
    $hold(posedge C, negedge K, 0, notifier);
    $hold(posedge C, posedge K, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKS3 (C, J, K, Q, QN, SD, SE);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  MUX_UDP (JK_buf, JK, SD, SE);
  DFF_UDP (Q_buf, JK_buf, C, 1, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    $setup(posedge J, posedge C, 0, notifier);
    $setup(negedge J, posedge C, 0, notifier);
    $setup(posedge K, posedge C, 0, notifier);
    $setup(negedge K, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, negedge J, 0, notifier);
    $hold(posedge C, posedge J, 0, notifier);
    $hold(posedge C, negedge K, 0, notifier);
    $hold(posedge C, posedge K, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKSC1 (C, J, K, Q, QN, RN, SD, SE);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  MUX_UDP (JK_buf, JK, SD, SE);
  DFF_UDP (Q_buf, JK_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge J, posedge C &&& (~SE), 0, notifier);
    $setup(negedge J, posedge C &&& (~SE), 0, notifier);
    $setup(posedge K, posedge C &&& (~SE), 0, notifier);
    $setup(negedge K, posedge C &&& (~SE), 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, negedge J &&& (~SE), 0, notifier);
    $hold(posedge C, posedge J &&& (~SE), 0, notifier);
    $hold(posedge C, negedge K &&& (~SE), 0, notifier);
    $hold(posedge C, posedge K &&& (~SE), 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKSC3 (C, J, K, Q, QN, RN, SD, SE);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  MUX_UDP (JK_buf, JK, SD, SE);
  DFF_UDP (Q_buf, JK_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $setup(posedge J, posedge C &&& (~SE), 0, notifier);
    $setup(negedge J, posedge C &&& (~SE), 0, notifier);
    $setup(posedge K, posedge C &&& (~SE), 0, notifier);
    $setup(negedge K, posedge C &&& (~SE), 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, negedge J &&& (~SE), 0, notifier);
    $hold(posedge C, posedge J &&& (~SE), 0, notifier);
    $hold(posedge C, negedge K &&& (~SE), 0, notifier);
    $hold(posedge C, posedge K &&& (~SE), 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKSCP1 (C, J, K, Q, QN, RN, SD, SE, SN);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  MUX_UDP (JK_buf, JK, SD, SE);
  DFF_UDP (Q_buf, JK_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge J, posedge C &&& (~SE), 0, notifier);
    $setup(negedge J, posedge C &&& (~SE), 0, notifier);
    $setup(posedge K, posedge C &&& (~SE), 0, notifier);
    $setup(negedge K, posedge C &&& (~SE), 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge J &&& (~SE), 0, notifier);
    $hold(posedge C, posedge J &&& (~SE), 0, notifier);
    $hold(posedge C, negedge K &&& (~SE), 0, notifier);
    $hold(posedge C, posedge K &&& (~SE), 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKSCP3 (C, J, K, Q, QN, RN, SD, SE, SN);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  MUX_UDP (JK_buf, JK, SD, SE);
  DFF_UDP (Q_buf, JK_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $setup(posedge J, posedge C &&& (~SE), 0, notifier);
    $setup(negedge J, posedge C &&& (~SE), 0, notifier);
    $setup(posedge K, posedge C &&& (~SE), 0, notifier);
    $setup(negedge K, posedge C &&& (~SE), 0, notifier);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge J &&& (~SE), 0, notifier);
    $hold(posedge C, posedge J &&& (~SE), 0, notifier);
    $hold(posedge C, negedge K &&& (~SE), 0, notifier);
    $hold(posedge C, posedge K &&& (~SE), 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKSP1 (C, J, K, Q, QN, SD, SE, SN);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  MUX_UDP (JK_buf, JK, SD, SE);
  DFF_UDP (Q_buf, JK_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge J, posedge C &&& (~SE), 0, notifier);
    $setup(negedge J, posedge C &&& (~SE), 0, notifier);
    $setup(posedge K, posedge C &&& (~SE), 0, notifier);
    $setup(negedge K, posedge C &&& (~SE), 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge J &&& (~SE), 0, notifier);
    $hold(posedge C, posedge J &&& (~SE), 0, notifier);
    $hold(posedge C, negedge K &&& (~SE), 0, notifier);
    $hold(posedge C, posedge K &&& (~SE), 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module JKSP3 (C, J, K, Q, QN, SD, SE, SN);
  input C;
  input J;
  input K;
  output Q;
  output QN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  JK_UDP  (JK, J, K, Q_buf);
  MUX_UDP (JK_buf, JK, SD, SE);
  DFF_UDP (Q_buf, JK_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge J, posedge C &&& (~SE), 0, notifier);
    $setup(negedge J, posedge C &&& (~SE), 0, notifier);
    $setup(posedge K, posedge C &&& (~SE), 0, notifier);
    $setup(negedge K, posedge C &&& (~SE), 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge J &&& (~SE), 0, notifier);
    $hold(posedge C, posedge J &&& (~SE), 0, notifier);
    $hold(posedge C, negedge K &&& (~SE), 0, notifier);
    $hold(posedge C, posedge K &&& (~SE), 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TIE0 (Q);
  output Q;

  buf (Q,0);
 
endmodule

module TIE1 (Q);
  output Q;

  buf (Q,1);
 
endmodule

module MAJ31 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  and (net_0, B, A);
  and (net_1, C, B);
  and (net_2, C, A);
  or (Q, net_0, net_1, net_2);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module MAJ32 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  and (net_0, B, A);
  and (net_1, C, B);
  and (net_2, C, A);
  or (Q, net_0, net_1, net_2);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module MUX21 (A, B, Q, S);
  input A;
  input B;
  output Q;
  input S;

  MUX_UDP (Q, A, B, S);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (S => Q) = (1,1);
  endspecify
`endif

endmodule

module MUX22 (A, B, Q, S);
  input A;
  input B;
  output Q;
  input S;

  MUX_UDP (Q, A, B, S);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (S => Q) = (1,1);
  endspecify
`endif

endmodule

module MUX24 (A, B, Q, S);
  input A;
  input B;
  output Q;
  input S;

  MUX_UDP (Q, A, B, S);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (S => Q) = (1,1);
  endspecify
`endif

endmodule

module MUX26 (A, B, Q, S);
  input A;
  input B;
  output Q;
  input S;

  MUX_UDP (Q, A, B, S);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (S => Q) = (1,1);
  endspecify
`endif

endmodule

module MUX31 (A, B, C, Q, S0, S1);
  input A;
  input B;
  input C;
  output Q;
  input S0;
  input S1;

  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (Q, net_1, C, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module MUX32 (A, B, C, Q, S0, S1);
  input A;
  input B;
  input C;
  output Q;
  input S0;
  input S1;

  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (Q, net_1, C, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module MUX33 (A, B, C, Q, S0, S1);
  input A;
  input B;
  input C;
  output Q;
  input S0;
  input S1;

  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (Q, net_1, C, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module MUX34 (A, B, C, Q, S0, S1);
  input A;
  input B;
  input C;
  output Q;
  input S0;
  input S1;

  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (Q, net_1, C, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module MUX41 (A, B, C, D, Q, S0, S1);
  input A;
  input B;
  input C;
  input D;
  output Q;
  input S0;
  input S1;

  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (net_2, C, D, S0);
  MUX_UDP (Q, net_1, net_2, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module MUX42 (A, B, C, D, Q, S0, S1);
  input A;
  input B;
  input C;
  input D;
  output Q;
  input S0;
  input S1;

  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (net_2, C, D, S0);
  MUX_UDP (Q, net_1, net_2, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module MUX43 (A, B, C, D, Q, S0, S1);
  input A;
  input B;
  input C;
  input D;
  output Q;
  input S0;
  input S1;

  MUX_UDP (net_1, A, B, S0);
  MUX_UDP (net_2, C, D, S0);
  MUX_UDP (Q, net_1, net_2, S1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
    (S0 => Q) = (1,1);
    (S1 => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND20 (A, B, Q);
  input A;
  input B;
  output Q;

  nand (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND21 (A, B, Q);
  input A;
  input B;
  output Q;

  nand (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND22 (A, B, Q);
  input A;
  input B;
  output Q;

  nand (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND23 (A, B, Q);
  input A;
  input B;
  output Q;

  nand (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND24 (A, B, Q);
  input A;
  input B;
  output Q;

  nand (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND26 (A, B, Q);
  input A;
  input B;
  output Q;

  nand (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND28 (A, B, Q);
  input A;
  input B;
  output Q;

  nand (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND30 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  nand (Q, A, B, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND31 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  nand (Q, A, B, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND32 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  nand (Q, A, B, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND33 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  nand (Q, A, B, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND34 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  nand (Q, A, B, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND40 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  nand (Q, A, B, C, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND41 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  nand (Q, A, B, C, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND42 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  nand (Q, A, B, C, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module NAND43 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  nand (Q, A, B, C, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module NOR20 (A, B, Q);
  input A;
  input B;
  output Q;

  nor (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module NOR21 (A, B, Q);
  input A;
  input B;
  output Q;

  nor (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module NOR22 (A, B, Q);
  input A;
  input B;
  output Q;

  nor (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module NOR23 (A, B, Q);
  input A;
  input B;
  output Q;

  nor (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module NOR24 (A, B, Q);
  input A;
  input B;
  output Q;

  nor (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module NOR30 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  nor (Q, A, B, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module NOR31 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  nor (Q, A, B, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module NOR32 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  nor (Q, A, B, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module NOR33 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  nor (Q, A, B, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module NOR40 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  nor (Q, A, B, C, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module NOR41 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  nor (Q, A, B, C, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module NOR42 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  nor (Q, A, B, C, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module OAI210 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  not (Q,Q_I);
  or (net_1, A, B);
  and (Q_I, C, net_1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module OAI211 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  not (Q,Q_I);
  or (net_1, A, B);
  and (Q_I, C, net_1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module OAI212 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  not (Q,Q_I);
  or (net_1, A, B);
  and (Q_I, C, net_1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module OAI2110 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  or (net_2, B, A);
  and (Q_I, D, C, net_2);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module OAI2111 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  or (net_2, B, A);
  and (Q_I, D, C, net_2);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module OAI2112 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  or (net_2, B, A);
  and (Q_I, D, C, net_2);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module OAI220 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  or (net_0, D, C);
  or (net_1, B, A);
  and (Q_I, net_0, net_1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module OAI221 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  or (net_0, D, C);
  or (net_1, B, A);
  and (Q_I, net_0, net_1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module OAI222 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  or (net_0, D, C);
  or (net_1, B, A);
  and (Q_I, net_0, net_1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module OAI310 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  or (net_1, B, A, C);
  and (Q_I, D, net_1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module OAI311 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  or (net_1, B, A, C);
  and (Q_I, D, net_1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module OAI312 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  not (Q,Q_I);
  or (net_1, B, A, C);
  and (Q_I, D, net_1);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module TFEC1 (C, Q, QN, RN, T);
  input C;
  output Q;
  output QN;
  input RN;
  input T;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, QN, T);
  DFF_UDP (Q_buf, D_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge T, posedge C, 0, notifier);
    $setup(negedge T, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge T, 0, notifier);
    $hold(posedge C, posedge T, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFEC3 (C, Q, QN, RN, T);
  input C;
  output Q;
  output QN;
  input RN;
  input T;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, QN, T);
  DFF_UDP (Q_buf, D_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge T, posedge C, 0, notifier);
    $setup(negedge T, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge T, 0, notifier);
    $hold(posedge C, posedge T, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFECP1 (C, Q, QN, RN, SN, T);
  input C;
  output Q;
  output QN;
  input RN;
  input SN;
  input T;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, QN, T);
  DFF_UDP (Q_buf, D_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $setup(posedge T, posedge C, 0, notifier);
    $setup(negedge T, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $hold(posedge C, negedge T, 0, notifier);
    $hold(posedge C, posedge T, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFECP3 (C, Q, QN, RN, SN, T);
  input C;
  output Q;
  output QN;
  input RN;
  input SN;
  input T;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, QN, T);
  DFF_UDP (Q_buf, D_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $setup(posedge T, posedge C, 0, notifier);
    $setup(negedge T, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $hold(posedge C, negedge T, 0, notifier);
    $hold(posedge C, posedge T, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFEP1 (C, Q, QN, SN, T);
  input C;
  output Q;
  output QN;
  input SN;
  input T;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, QN, T);
  DFF_UDP (Q_buf, D_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $recovery(posedge SN, posedge C, 0, notifier);
    $setup(posedge T, posedge C, 0, notifier);
    $setup(negedge T, posedge C, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $hold(posedge C, negedge T, 0, notifier);
    $hold(posedge C, posedge T, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFEP3 (C, Q, QN, SN, T);
  input C;
  output Q;
  output QN;
  input SN;
  input T;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, Q_buf, QN, T);
  DFF_UDP (Q_buf, D_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $recovery(posedge SN, posedge C, 0, notifier);
    $setup(posedge T, posedge C, 0, notifier);
    $setup(negedge T, posedge C, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $hold(posedge C, negedge T, 0, notifier);
    $hold(posedge C, posedge T, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFSEC1 (C, Q, QN, RN, SD, SE, T);
  input C;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;
  input T;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, QN, T);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $setup(posedge T, posedge C, 0, notifier);
    $setup(negedge T, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, negedge T, 0, notifier);
    $hold(posedge C, posedge T, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFSEC3 (C, Q, QN, RN, SD, SE, T);
  input C;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;
  input T;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, QN, T);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $setup(posedge T, posedge C, 0, notifier);
    $setup(negedge T, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, negedge T, 0, notifier);
    $hold(posedge C, posedge T, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFSECP1 (C, Q, QN, RN, SD, SE, SN, T);
  input C;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;
  input SN;
  input T;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, QN, T);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $setup(posedge T, posedge C, 0, notifier);
    $setup(negedge T, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $hold(posedge C, negedge T, 0, notifier);
    $hold(posedge C, posedge T, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFSECP3 (C, Q, QN, RN, SD, SE, SN, T);
  input C;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;
  input SN;
  input T;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, QN, T);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $setup(posedge T, posedge C, 0, notifier);
    $setup(negedge T, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $hold(posedge C, negedge T, 0, notifier);
    $hold(posedge C, posedge T, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFSEP1 (C, Q, QN, SD, SE, SN, T);
  input C;
  output Q;
  output QN;
  input SD;
  input SE;
  input SN;
  input T;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, QN, T);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $setup(posedge T, posedge C, 0, notifier);
    $setup(negedge T, posedge C, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $hold(posedge C, negedge T, 0, notifier);
    $hold(posedge C, posedge T, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFSEP3 (C, Q, QN, SD, SE, SN, T);
  input C;
  output Q;
  output QN;
  input SD;
  input SE;
  input SN;
  input T;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D1, Q_buf, QN, T);
  MUX_UDP (D_buf, D1, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $setup(posedge T, posedge C, 0, notifier);
    $setup(negedge T, posedge C, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $hold(posedge C, negedge T, 0, notifier);
    $hold(posedge C, posedge T, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFC1 (C, Q, QN, RN);
  input C;
  output Q;
  output QN;
  input RN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  DFF_UDP (Q_buf, QN, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFC3 (C, Q, QN, RN);
  input C;
  output Q;
  output QN;
  input RN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  DFF_UDP (Q_buf, QN, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFCP1 (C, Q, QN, RN, SN);
  input C;
  output Q;
  output QN;
  input RN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  DFF_UDP (Q_buf, QN, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFCP3 (C, Q, QN, RN, SN);
  input C;
  output Q;
  output QN;
  input RN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  DFF_UDP (Q_buf, QN, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFP1 (C, Q, QN, SN);
  input C;
  output Q;
  output QN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  DFF_UDP (Q_buf, QN, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFP3 (C, Q, QN, SN);
  input C;
  output Q;
  output QN;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  DFF_UDP (Q_buf, QN, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFSC1 (C, Q, QN, RN, SD, SE);
  input C;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, QN, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFSC3 (C, Q, QN, RN, SD, SE);
  input C;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, QN, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, 1, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFSCP1 (C, Q, QN, RN, SD, SE, SN);
  input C;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, QN, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFSCP3 (C, Q, QN, RN, SD, SE, SN);
  input C;
  output Q;
  output QN;
  input RN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, QN, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, RN, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (RN => Q) = (1,1);
    (RN => QN) = (1,1);
    (SN => QN) = (1,1);
    (SN => Q) = (1,1);
    $recovery(posedge RN, posedge C, 0, notifier);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, posedge RN, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge RN, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFSP1 (C, Q, QN, SD, SE, SN);
  input C;
  output Q;
  output QN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, QN, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module TFSP3 (C, Q, QN, SD, SE, SN);
  input C;
  output Q;
  output QN;
  input SD;
  input SE;
  input SN;

  reg notifier;
  buf (Q, Q_buf);
  not (QN, Q_buf);
  MUX_UDP (D_buf, QN, SD, SE);
  DFF_UDP (Q_buf, D_buf, C, SN, 1, notifier);

`ifdef functional
`else
  specify
    (C => Q) = (1,1);
    (C => QN) = (1,1);
    (SN => Q) = (1,1);
    (SN => QN) = (1,1);
    $setup(posedge SD, posedge C &&& (SE), 0, notifier);
    $setup(negedge SD, posedge C &&& (SE), 0, notifier);
    $setup(posedge SE, posedge C, 0, notifier);
    $setup(negedge SE, posedge C, 0, notifier);
    $recovery(posedge SN, posedge C, 0, notifier);
    $hold(posedge C, negedge SD &&& (SE), 0, notifier);
    $hold(posedge C, posedge SD &&& (SE), 0, notifier);
    $hold(posedge C, negedge SE, 0, notifier);
    $hold(posedge C, posedge SE, 0, notifier);
    $hold(posedge C, posedge SN, 0, notifier);
    $width(posedge C, 1, 0, notifier);
    $width(negedge C, 1, 0, notifier);
    $width(negedge SN, 1, 0, notifier);
  endspecify
`endif

endmodule

module XOR20 (A, B, Q);
  input A;
  input B;
  output Q;

  xor (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module XOR21 (A, B, Q);
  input A;
  input B;
  output Q;

  xor (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module XOR22 (A, B, Q);
  input A;
  input B;
  output Q;

  xor (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module XOR30 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  xor (Q, A, B, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module XOR31 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  xor (Q, A, B, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module XOR40 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  xor (Q, A, B, C, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module XOR41 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  xor (Q, A, B, C, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module XNR20 (A, B, Q);
  input A;
  input B;
  output Q;

  xnor (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module XNR21 (A, B, Q);
  input A;
  input B;
  output Q;

  xnor (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module XNR22 (A, B, Q);
  input A;
  input B;
  output Q;

  xnor (Q, A, B);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
  endspecify
`endif

endmodule

module XNR30 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  xnor (Q, A, B, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module XNR31 (A, B, C, Q);
  input A;
  input B;
  input C;
  output Q;

  xnor (Q, A, B, C);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
  endspecify
`endif

endmodule

module XNR40 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  xnor (Q, A, B, C, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

module XNR41 (A, B, C, D, Q);
  input A;
  input B;
  input C;
  input D;
  output Q;

  xnor (Q, A, B, C, D);

`ifdef functional
`else
  specify
    (A => Q) = (1,1);
    (B => Q) = (1,1);
    (C => Q) = (1,1);
    (D => Q) = (1,1);
  endspecify
`endif

endmodule

`endcelldefine
