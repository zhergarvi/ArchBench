
sed -i "s|\$auto\$clkbufmap.cc:294:execute\$638|clock0|g" $(find . -type f -name "fabric_lut_ff_mux_formal_random_top_tb.v")
# sed -i "s|// 	wire \[0:0\] q\[0\]_gfpga|    reg \[31:0\] memory\[0:1023\]|g" $(find . -type f -name "fabric_lut_ff_mux_formal_random_top_tb.v")
# sed -i "s|// 	wire \[0:0\] q\[1\]_gfpga|    bit \[31:0\] wdata|g" $(find . -type f -name "fabric_lut_ff_mux_formal_random_top_tb.v")
# sed -i "s|// 	wire \[0:0\] q\[2\]_gfpga|    reg \[31:0\] rd_data|g" $(find . -type f -name "fabric_lut_ff_mux_formal_random_top_tb.v")
# sed -i "s|// 	wire \[0:0\] q\[3\]_gfpga|    bit \[9:0\] address|g" $(find . -type f -name "fabric_lut_ff_mux_formal_random_top_tb.v")
sed -i "s|\$auto\$clkbufmap.cc:294:execute\$638|clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
sed -i "s|clk_fm\[15\] = 1'b0|clk_fm[15] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[14\] = 1'b0|clk_fm[14] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[13\] = 1'b0|clk_fm[13] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[12\] = 1'b0|clk_fm[12] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[11\] = 1'b0|clk_fm[11] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[10\] = 1'b0|clk_fm[10] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[9\] = 1'b0|clk_fm[9] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[8\] = 1'b0|clk_fm[8] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[7\] = 1'b0|clk_fm[7] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[6\] = 1'b0|clk_fm[6] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[5\] = 1'b0|clk_fm[5] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[4\] = 1'b0|clk_fm[4] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[3\] = 1'b0|clk_fm[3] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[2\] = 1'b0|clk_fm[2] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[1\] = 1'b0|clk_fm[1] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
# sed -i "s|clk_fm\[0\] = 1'b0|clk_fm[0] = clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
sed -i "s|global_resetn_fm\[0\] = 1'b0|global_resetn_fm\[0\] = 1'b1|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")