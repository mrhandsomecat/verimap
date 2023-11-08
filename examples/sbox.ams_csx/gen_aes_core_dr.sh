echo
echo "Converting aes_core_syn_sr.v into aes_core_syn_dr.v"
verimap \
-r ams.rls \
-p ams.prm \
-g ams_dr-gen.v \
-i ams.v,ams_dr-cl.v,ams_sr-misc.v,ams_adr-df_ta_clk2.v,ams_adr-xdf_clk2.v,ams_adr-cnv.v \
-o aes_core_syn_dr.v aes_core_syn_sr.v \
-ol2 -tl2 -op area,transistor_number -cd1 \
-sl3 -s aes_core_syn_stat.txt \
-clk *.clk -rst *.reset
