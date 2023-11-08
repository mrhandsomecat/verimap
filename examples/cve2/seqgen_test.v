  wire   [31:0] op_numerator_q;
  wire   [31:0] op_quotient_q;
  wire   [4:0] div_counter_d;
  wire   [31:0] op_quotient_d;
  wire   [2:0] md_state_d;
  wire   [33:0] op_remainder_d;
  wire   [33:0] mac_res_d;
  wire   [15:0] \gen_mult_fast.mult_op_a ;
  wire   [15:0] \gen_mult_fast.mult_op_b ;
  wire   [33:0] accum;
  wire   [33:0] mac_res_signed;
  wire   [1:0] \gen_mult_fast.mult_state_q ;
  wire   [1:0] \gen_mult_fast.mult_state_d ;
  wire   [31:0] next_remainder;
  wire   [31:0] one_shift;
  wire   [31:0] next_quotient;
  assign alu_operand_b_o[0] = 1'b1;
  assign alu_operand_a_o[0] = 1'b1;
  assign \imd_val_d_o[1][32]  = 1'b0;
  assign \imd_val_d_o[1][33]  = 1'b0;

\**SEQGEN**  \md_state_q_reg[2]  ( .clear(N33), .preset(1'b0), .next_state(
        md_state_d[2]), .clocked_on(clk_i), .data_in(1'b0), .enable(1'b0), .Q(
        md_state_q[2]), .QN(), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(imd_val_we_o[1]) );
  \**SEQGEN**  \md_state_q_reg[1]  ( .clear(N33), .preset(1'b0), .next_state(
        md_state_d[1]), .clocked_on(clk_i), .data_in(1'b0), .enable(1'b0), .Q(
        md_state_q[1]), .QN(), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(imd_val_we_o[1]) );
  \**SEQGEN**  \md_state_q_reg[0]  ( .clear(N33), .preset(1'b0), .next_state(
        md_state_d[0]), .clocked_on(clk_i), .data_in(1'b0), .enable(1'b0), .Q(
        md_state_q[0]), .QN(), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(imd_val_we_o[1]) );