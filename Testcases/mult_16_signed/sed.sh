sed -i "s|// reg \[0:0\] a\[0\];|bit signed [31:0] c_pred = 0;|g" $(find . -type f -name "fabric_mult_16_signed_formal_random_top_tb.v")
sed -i "s|//----- Default net type -----|\`define MULT_16_SIGNED 2|g" $(find . -type f -name "fabric_mult_16_signed_formal_random_top_tb.v")
sed -i "s|//	FPGA Synthesizable Verilog Netlist|\`timescale 1ns/1ps|g" $(find . -type f -name "fabric_mult_16_signed_formal_random_top_tb.v")
sed -i "s|// reg \[0:0\] a\[1\];|reg [31:0] error = 0;|g" $(find . -type f -name "fabric_mult_16_signed_formal_random_top_tb.v")
sed -i "s|global_resetn_fm\[0\] = 1'b0;|global_resetn_fm\[0\] = 1'b1;|g" $(find . -type f -name "fabric_mult_16_signed_top_formal_verification.v")
# sed -i "s|dumpvars(1|dumpvars(0|g" $(find . -type f -name "fabric_mult_16_signed_formal_random_top_tb.v")
