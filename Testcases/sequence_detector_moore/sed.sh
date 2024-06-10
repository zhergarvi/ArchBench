sed -i "s|// ----- FPGA fabric outputs -------|    int count=0;|g" $(find . -type f -name "fabric_sequence_detector_moore_formal_random_top_tb.v")
sed -i "s|// ----- Shared inputs -------|    reg check;|g" $(find . -type f -name "fabric_sequence_detector_moore_formal_random_top_tb.v")
sed -i "s|// ----- Default clock port is added here since benchmark does not contain one -------|    reg \[5:0\] value=0;|g" $(find . -type f -name "fabric_sequence_detector_moore_formal_random_top_tb.v")
sed -i "s|// ----- FPGA fabric instanciation -------|    bit q;|g" $(find . -type f -name "fabric_sequence_detector_moore_formal_random_top_tb.v")
sed -i "s|clk_fm\[15\] = 1'b0;|clk_fm\[15\] = clock0;|g" $(find . -type f -name "fabric_sequence_detector_moore_top_formal_verification.v")
sed -i "s|global_resetn_fm\[0\] = 1'b0;|global_resetn_fm\[0\] = 1'b1;|g" $(find . -type f -name "fabric_sequence_detector_moore_top_formal_verification.v")
sed -i "s|// ----- End FPGA Fabric Instanication -------|    reg\[31:0\] error=0;|g" $(find . -type f -name "fabric_sequence_detector_moore_formal_random_top_tb.v")
sed -i "s|// ----- Begin reset signal generation -----|    assign check = (value === 6'b110010);|g" $(find . -type f -name "fabric_sequence_detector_moore_formal_random_top_tb.v")
# sed -i "s|dumpvars(1|dumpvars(0|g" $(find . -type f -name "fabric_sequence_detector_moore_formal_random_top_tb.v")
