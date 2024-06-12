sed -i "s|// reg \[0:0\] addr\[0\]|reg [31:0] memory[1023:0]|g" $(find . -type f -name "fabric_sp_ram_formal_random_top_tb.v")
sed -i "s|// reg \[0:0\] addr\[1\]|bit [31:0] wdata|g" $(find . -type f -name "fabric_sp_ram_formal_random_top_tb.v")
sed -i "s|// reg \[0:0\] addr\[2\]|reg [31:0] rd_data|g" $(find . -type f -name "fabric_sp_ram_formal_random_top_tb.v")
sed -i "s|// reg \[0:0\] addr\[3\]|bit [9:0] address|g" $(find . -type f -name "fabric_sp_ram_formal_random_top_tb.v")
# sed -i "s|dumpvars(1|dumpvars(0|g" $(find . -type f -name "fabric_sp_ram_formal_random_top_tb.v")
sed -i "s|// ----- BEGIN Local short connections -----|\`include \"BIT_SIM/initialize.v\"|g" $(find . -type f -name "fpga_top.v")
