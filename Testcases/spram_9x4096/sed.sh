sed -i "s|//----- Default net type -----|\`timescale 1ns/1ps|g" $(find . -type f -name "fabric_spram_9x4096_formal_random_top_tb.v")
sed -i "s|// ----- Shared inputs -------|    reg [DWIDTH-1:0] memory[0:SIZE-1];|g" $(find . -type f -name "fabric_spram_9x4096_formal_random_top_tb.v")
sed -i "s|// reg \[0:0\] ra\[0\];|bit [DWIDTH-1:0] wdata;|g" $(find . -type f -name "fabric_spram_9x4096_formal_random_top_tb.v")
sed -i "s|// reg \[0:0\] wa\[0\];|reg [DWIDTH-1:0] rd_data;|g" $(find . -type f -name "fabric_spram_9x4096_formal_random_top_tb.v")
sed -i "s|// reg \[0:0\] wd\[0\];|bit [AWIDTH-1:0]address;|g" $(find . -type f -name "fabric_spram_9x4096_formal_random_top_tb.v")
sed -i "s|// ----- FPGA fabric outputs -------|\tint error=0;|g" $(find . -type f -name "fabric_spram_9x4096_formal_random_top_tb.v")
sed -i "s|// 	wire \[0:0\] rq\[0\]_gfpga;|\tint pass=0;|g" $(find . -type f -name "fabric_spram_9x4096_formal_random_top_tb.v")
sed -i "s|reg \[0:0\] clock0;|parameter AWIDTH = 2;\n\treg [0:0] clock0;|g" $(find . -type f -name "fabric_spram_9x4096_formal_random_top_tb.v")
sed -i "s|reg \[0:0\] clock0;|parameter DWIDTH = 2;\n\treg [0:0] clock0;|g" $(find . -type f -name "fabric_spram_9x4096_formal_random_top_tb.v")
sed -i "s|reg \[0:0\] clock0;|parameter SIZE = 4096;\n\treg [0:0] clock0;|g" $(find . -type f -name "fabric_spram_9x4096_formal_random_top_tb.v")
sed -i "s|global_resetn_fm\[0\] = 1'b0;|global_resetn_fm[0] = 1'b1;|g" $(find . -type f -name "fabric_spram_9x4096_top_formal_verification.v")
sed -i "s|clk_fm\[15\] = 1'b0;|clk_fm[15] = clock0;|g" $(find . -type f -name "fabric_spram_9x4096_top_formal_verification.v")
# sed -i "s|dumpvars(1|dumpvars(0|g" $(find . -type f -name "fabric_spram_9x4096_formal_random_top_tb.v")
sed -i "s|// ----- BEGIN Local short connections -----|\`include \"BIT_SIM/initialize.v\"|g" $(find . -type f -name "fpga_top.v")
