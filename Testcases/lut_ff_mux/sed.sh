
sed -i "s|\$auto\$clkbufmap.cc:294:execute\$638|clock0|g" $(find . -type f -name "fabric_lut_ff_mux_formal_random_top_tb.v")
sed -i "s|\$auto\$clkbufmap.cc:294:execute\$638|clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
sed -i "s|clk_fm\[15\] = 1'b0|clk_fm[15] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
sed -i "s|global_resetn_fm\[0\] = 1'b0|global_resetn_fm\[0\] = 1'b1|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")