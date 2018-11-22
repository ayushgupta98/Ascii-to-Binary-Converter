/////////////////////////////////////////////////////////////////////////////
// File : a2b_tb.v
// Author : Ayush Gupta
// Date : 15/05/2015
// This is a testbench for ASCII to Binary conversion.
/////////////////////////////////////////////////////////////////////////////
module a2b_tb();
	reg [7:0] in;
	reg clk,rst,w_RX_dv;
	wire [7:0] out;

	a2b UUT(in,out,clk,rst,w_RX_dv);  
	initial begin 
		clk =0;
		forever #30 clk = ~clk;
	end
	initial begin
		#10;
		rst = 1;
		#60;
		rst = 0;
		#60;
		w_RX_dv = 1;
		in = 8'b00110001;  
		#60;
		in = 8'b00110000;
		#60;
		in = 8'b00110001;
		#60;
		w_RX_dv = 0;
		#60;
	end
endmodule