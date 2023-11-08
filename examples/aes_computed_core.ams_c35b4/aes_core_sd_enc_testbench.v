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
assign text_in = tmp[255:128];
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
  selEncDec = 0;
  start = 1;
  @(posedge clk)
  #5 reset = 1;
  @(posedge clk)
  @(posedge clk)
  start = 0;
  repeat (69) @(posedge clk)
  n=0;
  n_max = 284;
  while (n < n_max) 
  begin
    //clock data in, and expand the key
    @(posedge clk)
    #1 start = 1;
    @(posedge clk)
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

    //1st round
    @(posedge clk) 
    #1 data_in = 32'h00000000; //blank data
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)

    //2nd round
    @(posedge clk) 
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)

    //3rd round
    @(posedge clk) 
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)

    //4th round
    @(posedge clk) 
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)

    //5th round
    @(posedge clk) 
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)

    //6th Round
    @(posedge clk) 
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)

    //7th round
    @(posedge clk) 
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)

    //8th round
    @(posedge clk) 
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)

    //9th round
    @(posedge clk) 
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)

    //final round 10th round
    @(posedge clk) 
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)

//    while (signals != 7'b1100001) @(posedge clk);
    @(posedge clk)
    text_out[127:96]=data_out; 
    @(posedge clk)
    text_out[95:64]=data_out;
    @(posedge clk)
    text_out[63:32]=data_out;
    @(posedge clk)
    text_out[31:0]=data_out;

    $display("Test %0d: in=%x key=%x", n, plain, key_in);
    $display("  XP: %x", ciph);
    $display("  SD: %x", text_out);

    if((text_out != ciph) || ((|text_out)==1'bx))
    begin
      $display("!!DS error!!");
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
