module clock_inverter (a,z);
input a;
output z;
wire z;
assign z = ~a;
endmodule
