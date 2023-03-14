`include "rom.v"
// `include "memory_file.mem"

module rom_post_route_tb;
  bit clk;
  bit [7:0] address;
  wire [7:0] data;

  integer i=0;
  
  rom golden (.*);
//   rom_post_route netlist (clk,address[2],address[1],address[0],data_netlist[6],data_netlist[5],data_netlist[4],data_netlist[3],data_netlist[2],data_netlist[7],data_netlist[1],data_netlist[0]);

  always
  #1  clk = !clk;
  
  initial begin
    // reset <= 1'b1;
    // @(negedge clk);
	  // compare();
    for (i = 0; i <1023; i = i +1 )begin
        @(negedge clk); 
        address = i;
        $display("Data Mismatch. Address: %0d, data: %0d, Time: %0t", data, address, $time);
        // read_en = 1;
        // ce = 1;
        // #5 read_en = 0;
        // ce = 0;
        // address = 0;
      end
	//   repeat(100)@(posedge clk);
	//   reset <= 1'b0;
    // repeat(1000)@(negedge clk);
    //   @(negedge clk);
	//     compare();

	  // repeat(10)@(posedge clk);
    // @(negedge clk);
	  // compare();

	  // repeat(10)@(posedge clk);
    // @(negedge clk);
	  // compare();

	  // repeat(10)@(posedge clk);
    // @(negedge clk);
	  // compare();

	  // repeat(10)@(posedge clk);
    // @(negedge clk);
	  // compare();
	  
  	// if(mismatch == 0)
    //   $display("\n**** All Comparison Matched ***\nSimulation Passed");
    // else
    //   $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
    $finish;
  end

//   task compare();
//   $display("*** Comparing ***");
//    if(data !== data_netlist) begin
//      $display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", data, data_netlist, $time);
//      mismatch = mismatch+1;
//   end
//    else
//        $display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", data, data_netlist, $time);
//   endtask
  
  initial begin
    $dumpfile("rom_formal.vcd");
    $dumpvars(1, rom_post_route_tb);
end

endmodule
