`include "timescale.v"

module testbench;

reg go;
reg clk;
reg clk2;
reg reset;

reg  [383:0] tv[512:0];	// Test vectors
wire [383:0] tmp;
reg  start;
reg  selEncDec;
wire [127:0] key_in;
reg  [31:0]  data_in;
wire [127:0] text_in;
wire [31:0]  data_out;
reg  [127:0] text_out;
wire [7:0]   signals;
wire [127:0] plain;
wire [127:0] ciph;

reg  [383:0] tv_1[512:0];	// Test vectors
reg  [383:0] tv_0[512:0];
wire [383:0] tmp_1, tmp_0;
reg  start_1, start_0;
reg  selEncDec_1, selEncDec_0;
wire [127:0] key_in_1, key_in_0;
reg  [31:0]  data_in_1, data_in_0;
wire [127:0] text_in_1, text_in_0;
wire [31:0]  data_out_1, data_out_0;
reg  [127:0] text_out_1, text_out_0;
wire [7:0] signals_1, signals_0;
wire [127:0] plain_1, plain_0;
wire [127:0] ciph_1, ciph_0;

integer	n;
integer	n_max;
integer	error_cnt;
integer	i;

integer max_hz_delay; 
integer sr_hz; 
integer sr_hz_min;
integer sr_hz_avg;
integer sr_hz_max;
integer sr_sa;
integer sr_sa_min;
integer sr_sa_avg;
integer sr_sa_max;
integer dr_sa;
integer dr_sa_min;
integer dr_sa_avg;
integer dr_sa_max;
integer dr_sa_1;
integer dr_sa_0;
integer dr_sa_1_worst;
integer dr_sa_0_worst;
integer dr_sa_dif;
integer dr_sa_dif_worst;

real clk_num;
real ratio;
real dum, dum0, dum1, dum2;

assign tmp     = tv[n];
assign key_in  = tmp[383:256];
assign text_in = tmp[127:0];
assign plain   = tmp[255:128];
assign ciph    = tmp[127:0];

assign tmp_1     = tv_1[n];
assign tmp_0     = tv_0[n];
assign key_in_1  = tmp_1[383:256];
assign key_in_0  = tmp_0[383:256];
assign text_in_1 = tmp_1[127:0];
assign text_in_0 = tmp_0[127:0];
assign plain_1   = tmp_1[255:128];
assign plain_0   = tmp_0[255:128];
assign ciph_1    = tmp_1[127:0];
assign ciph_0    = tmp_0[127:0];

`include "aes_core_syn_sr.hz"
`include "aes_core_syn_sr.w"
`include "aes_core_syn_dr.w"
//`include "aes_core_syn_dr.w1"
//`include "aes_core_syn_dr.w0"

initial
begin
  `include "aes_vectors.v"   // Test vectors (0-283)

//  $shm_open("test.shm");
//  $shm_probe(testbench,"AS");
//  $shm_save;

  $sdf_annotate("aes_core_syn_sr.sdf", u, , "aes_core_syn_sr.sdf.log", "TOOL_CONTROL", "1.000000:1.000000:1.000000", "FROM_MTM");
  $sdf_annotate("aes_core_syn_dr.sdf", w, , "aes_core_syn_dr.sdf.log", "TOOL_CONTROL", "1.000000:1.000000:1.000000", "FROM_MTM");

  max_hz_delay=5; 
  sr_hz_min=0;
  sr_hz_avg=0;
  sr_hz_max=0;
  sr_sa_min=0;
  sr_sa_avg=0;
  sr_sa_max=0;
  dr_sa_min=0;
  dr_sa_avg=0;
  dr_sa_max=0;
  dr_sa_1 = 0;
  dr_sa_0 = 0;
  dr_sa_1_worst = 0;
  dr_sa_0_worst = 0;
  dr_sa_dif = 0;
  dr_sa_dif_worst=0;

  go=0;
  n=0;
  clk = 0;
  clk2 = 0;
  reset = 0;
  data_in = 32'h00000000; //blank data
  error_cnt = 0;
  selEncDec = 1;
  start = 1;
  @(posedge clk)
  #5 reset = 1;
  @(posedge clk)
  @(posedge clk)
  start = 0;
  repeat (86) @(posedge clk)

  n_max = 10;//284;
  while (n < n_max) 
  begin
    go=1;
    //clock data in, and expand the key
    @(posedge clk)
    #1 start = 1;
    @(posedge clk)
    @(posedge clk)
    #1 data_in = text_in[127:96];
    start = 0;
    @(posedge clk)
    #1 data_in = text_in[95:64];
    @(posedge clk)
    #1 data_in = text_in[63:32];
    @(posedge clk)
    #1 data_in = text_in[31:0];
    @(posedge clk) 
    #1 data_in = 32'h00000000; //blank data

    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk) 
    @(posedge clk)
    @(posedge clk)
    @(posedge clk) //last key
    @(posedge clk) //xor key key

    //round 1
    @(posedge clk) //xor appears, next key started 
    @(posedge clk) //correct sbox result into top row
    @(posedge clk) //shifting right for dec
    @(posedge clk) //shifting right two
    @(posedge clk) //shifting right one, sbox result into top row shiftrows, sbyte, in dec mode cant input key
    @(posedge clk) //add round key then mix columns reversed as dec, sbox for key use, result appears here?

    //round 2
    @(posedge clk) // request next key
    @(posedge clk) //correct sbox result into top row
    @(posedge clk) //shifting right for dec
    @(posedge clk) //shifting right two
    @(posedge clk) //shifting right one, sbox result into top row shiftrows, sbyte
    @(posedge clk) //add round key then mix columns reversed as dec, sbox for key use

    //round 3
    @(posedge clk) // request next key
    @(posedge clk) //correct sbox result into top row
    @(posedge clk) //shifting right for dec
    @(posedge clk) //shifting right two
    @(posedge clk) //shifting right one, sbox result into top row shiftrows, sbyte
    @(posedge clk) //add round key then mix columns reversed as dec, sbox for key use

    //round 4
    @(posedge clk) // request next key
    @(posedge clk) //correct sbox result into top row
    @(posedge clk) //shifting right for dec
    @(posedge clk) //shifting right two
    @(posedge clk) //shifting right one, sbox result into top row shiftrows, sbyte
    @(posedge clk) //add round key then mix columns reversed as dec, sbox for key use

    //round 5
    @(posedge clk) // request next key
    @(posedge clk) //correct sbox result into top row
    @(posedge clk) //shifting right for dec
    @(posedge clk) //shifting right two
    @(posedge clk) //shifting right one, sbox result into top row shiftrows, sbyte
    @(posedge clk) //add round key then mix columns reversed as dec, sbox for key use

    //round 6
    @(posedge clk) // request next key
    @(posedge clk) //correct sbox result into top row
    @(posedge clk) //shifting right for dec
    @(posedge clk) //shifting right two
    @(posedge clk) //shifting right one, sbox result into top row shiftrows, sbyte
    @(posedge clk) //add round key then mix columns reversed as dec, sbox for key use

    //round 7
    @(posedge clk) // request next key
    @(posedge clk) //correct sbox result into top row
    @(posedge clk) //shifting right for dec
    @(posedge clk) //shifting right two
    @(posedge clk) //shifting right one, sbox result into top row shiftrows, sbyte
    @(posedge clk) //add round key then mix columns reversed as dec, sbox for key use

    //round 8
    @(posedge clk) // request next key
    @(posedge clk) //correct sbox result into top row
    @(posedge clk) //shifting right for dec
    @(posedge clk) //shifting right two
    @(posedge clk) //shifting right one, sbox result into top row shiftrows, sbyte
    @(posedge clk) //add round key then mix columns reversed as dec, sbox for key use

    //round 9
    @(posedge clk) // request next key
    @(posedge clk) //correct sbox result into top row
    @(posedge clk) //shifting right for dec
    @(posedge clk) //shifting right two
    @(posedge clk) //shifting right one, sbox result into top row shiftrows, sbyte
    @(posedge clk) //add round key then mix columns reversed as dec, sbox for key use

    //final round
    @(posedge clk) // request final key
    @(posedge clk) //correct sbox result into top row
    @(posedge clk) //shifting right for dec
    @(posedge clk) //shifting right two
    @(posedge clk) //shifting right one, sbox result into top row shiftrows, sbyte
    @(posedge clk) //xor key key only no mixcolumns

    //xor appears
    //read data out

//    while (signals != 8'b01110000) @(posedge clk);
    @(posedge clk)
    text_out[127:96]=data_out; 
    text_out_1[127:96]=data_out_1;
    text_out_0[127:96]=data_out_0;
    @(posedge clk)
    text_out[95:64]=data_out;
    text_out_1[95:64]=data_out_1;
    text_out_0[95:64]=data_out_0;
    @(posedge clk)
    text_out[63:32]=data_out;
    text_out_1[63:32]=data_out_1;
    text_out_0[63:32]=data_out_0;
    @(posedge clk)
    text_out[31:0]=data_out;
    text_out_1[31:0]=data_out_1;
    text_out_0[31:0]=data_out_0;

    $display("Test %0d: in=%x key=%x", n, ciph, key_in);
    $display("  XP: %x:%x", plain, ~plain);
    $display("  SR: %x:%x", text_out, ~text_out);
    $display("  DR: %x:%x", text_out_1, text_out_0);

    if((text_out != plain) || ((|text_out)==1'bx))
    begin
      $display("!!SR error!!");
      error_cnt = error_cnt + 1;
    end
    if((text_out_1 != plain) || ((|text_out_1)==1'bx))
    begin
      $display("!!DR error!!");
      error_cnt = error_cnt + 1;
    end
    
    n = n + 1;
  end 
  $display("Resultant switching activity");

  dum0 = sr_hz_min;
  dum1 = sr_sa_min;
  dum2 = dr_sa_min;
  ratio = dum2 / dum1;
  $display("  min: HZ=%.2f SR=%.2f DR=%.2f ratio=%.2f", dum0, dum1, dum2, ratio);

  dum = sr_hz_avg; dum0 = dum / clk_num;
  dum = sr_sa_avg; dum1 = dum / clk_num;
  dum = dr_sa_avg; dum2 = dum / clk_num;
  ratio = dum2 / dum1;
  $display("  avg: HZ=%.2f SR=%.2f DR=%.2f ratio=%.2f", dum0, dum1, dum2, ratio);

  dum0 = sr_hz_max;
  dum1 = sr_sa_max;
  dum2 = dr_sa_max;
  ratio = dum2 / dum1;
  $display("  max: HZ=%.2f SR=%.2f DR=%.2f ratio=%.2f", dum0, dum1, dum2, ratio);

  $display("Worst difference in rails switching:");
  $display("  [1]=%d [0]=%d dif=%d", dr_sa_1_worst, dr_sa_0_worst, dr_sa_dif_worst);
     
  $display("Found %0d errors", error_cnt);
  $finish;
end


always #20 clk = ~clk;


initial
begin
  @(posedge go);
  @(negedge clk)
  dr_sa_1=0;
  dr_sa_0=0;
  forever @(negedge clk)
  begin
    begin 
      if (dr_sa_1 >= dr_sa_0)
        dr_sa_dif = dr_sa_1 - dr_sa_0;
      else
        dr_sa_dif = dr_sa_0 - dr_sa_1;
//      $display("[1]=%d [0]=%d dif=%d", dr_sa_1, dr_sa_0, dr_sa_dif);
      if (dr_sa_dif >= dr_sa_dif_worst)
      begin
        dr_sa_dif_worst = dr_sa_dif;
        dr_sa_1_worst = dr_sa_1;
        dr_sa_0_worst = dr_sa_0;
      end
    end
    dr_sa_1=0;
    dr_sa_0=0;
  end
end


always @(negedge clk) clk2 = ~clk2;
initial
begin
  @(posedge go)
  @(posedge clk)
  sr_hz = 0;
  sr_sa = 0;
  dr_sa = 0;
  clk_num = 0;
  forever @(posedge clk)
  begin
    clk_num = clk_num + 1;
    dum0 = sr_hz; 
    dum1 = sr_sa; 
    dum2 = dr_sa; 
    ratio = dum2 / dum1;
    $display("  Switching activity: HZ=%.2f SR=%.2f  DR=%.2f  ratio=%.2f", dum0, dum1, dum2, ratio);

    if ((n == 0) || (sr_hz_min > dum0) )
      sr_hz_min = dum0;
    if ((n == 0) || (sr_hz_max < dum0) )
      sr_hz_max = dum0;
    sr_hz_avg = sr_hz_avg + dum0;

    if ((n == 0) || (sr_sa_min > dum1) )
      sr_sa_min = dum1;
    if ((n == 0) || (sr_sa_max < dum1) )
      sr_sa_max = dum1;
    sr_sa_avg = sr_sa_avg + dum1;

    if ((n == 0) || (dr_sa_min > dum2) )
      dr_sa_min = dum2;
    if ((n == 0) || (dr_sa_max < dum2) )
      dr_sa_max = dum2;
    dr_sa_avg = dr_sa_avg + dum2;

    sr_hz = 0;
    sr_sa = 0;
    dr_sa = 0;
  end
end


initial
begin
  forever @(posedge clk)
  #1
  begin
    if (clk2 == 0)
    begin
      tv_1[n] = 0; tv_0[n] = 0;
      data_in_1 = 0; data_in_0 = 0;
      start_1 = 0; start_0 = 0;
      selEncDec_1 = 0; selEncDec_0 = 0;
    end
    else
    begin
      tv_1[n] = ~0; tv_0[n] = ~0;
      data_in_1 = ~0; data_in_0 = ~0;
      start_1 = ~0; start_0 = ~0;
      selEncDec_1 = ~0; selEncDec_0 = ~0;
    end
    if (n < n_max)
      tv_1[n+1] = tv[n+1]; tv_0[n+1] = ~tv[n+1];
  end
end


initial
begin
  forever @(negedge clk)
  #1
  begin
    tv_1[n] = tv[n]; tv_0[n] = ~tv[n];
    data_in_1 = data_in; data_in_0 = ~data_in;
    start_1 = start; start_0 = ~start;
    selEncDec_1 = selEncDec; selEncDec_0 = ~selEncDec;
    if (n < n_max)
    begin
      if (clk2 == 0)
      begin
        tv_1[n+1] = 0; tv_0[n+1] = 0;
      end
      else
      begin
        tv_1[n+1] = ~0; tv_0[n+1] = ~0;
      end	
    end
  end
end

core u(
  .data_out(data_out),   // output
  .signals(signals),     // output
  .clk(clk),             // input
  .data_in(data_in),     // input 
  .key_in(key_in),       // input
  .reset(reset),         // input
  .selEncDec(selEncDec), // input
  .start(start)          // input
  );

core_0dr w(
  .data_out_1(data_out_1),
  .data_out_0(data_out_0),
  .signals_1(signals_1),
  .signals_0(signals_0),
  .clk(clk),
  .data_in_1(data_in_1),
  .data_in_0(data_in_0),
  .key_in_1(key_in_1),
  .key_in_0(key_in_0),
  .reset(reset),
  .selEncDec_1(selEncDec_1),
  .selEncDec_0(selEncDec_0),
  .start_1(start_1),
  .start_0(start_0),
  .clkdiv2(clk2)
  );

endmodule
