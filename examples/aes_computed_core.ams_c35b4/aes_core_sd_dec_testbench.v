`include "timescale.v"

module testbench;

reg clk;
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

integer	n;
integer	n_max;
integer	error_cnt;

assign tmp     = tv[n];
assign key_in  = tmp[383:256];
assign text_in = tmp[127:0];
assign plain   = tmp[255:128];
assign ciph    = tmp[127:0];


initial
begin
  `include "aes_vectors.v"   // Test vectors (0-283)

//  $shm_open("test.shm");
//  $shm_probe(testbench,"AS");
//  $shm_save;

  $sdf_annotate("aes_core_syn_sd.sdf", x, , "aes_core_syn_sd.sdf.log", "TOOL_CONTROL", "1.000000:1.000000:1.000000", "FROM_MTM");

  n=0;
  clk = 0;
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

  n_max = 284;
  while (n < n_max) 
  begin
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

    while (signals != 8'b00010000) @(posedge clk);
//    @(posedge clk)
    text_out[127:96]=data_out; 
    @(posedge clk)
    text_out[95:64]=data_out;
    @(posedge clk)
    text_out[63:32]=data_out;
    @(posedge clk)
    text_out[31:0]=data_out;

    $display("Test %0d: in=%x key=%x", n, ciph, key_in);
    $display("  XP: %x", plain);
    $display("  SD: %x", text_out);

    if((text_out != plain) || ((|text_out)==1'bx))
    begin
      $display("!!SD error!!");
      error_cnt = error_cnt + 1;
    end
    
    n = n + 1;
  end 
     
  $display("Found %0d errors", error_cnt);
  $finish;
end


always #20 clk = ~clk;


core_sd x(
  .data_out(data_out),   // output
  .signals(signals),     // output
  .clk(clk),             // input
  .data_in(data_in),     // input 
  .key_in(key_in),       // input
  .reset(reset),         // input
  .selEncDec(selEncDec), // input
  .start(start)          // input
  );

endmodule
