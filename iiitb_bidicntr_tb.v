`timescale 1ns/1ps
module iiitb_bidcntr_tb;
	reg clk,ctrl,reset;
	wire [3:0] count;
	iiitb_bidicntr counter(.clk(clk),.reset(reset),.ctrl(ctrl),.count(count));
	always  #1 clk=~clk;
	

	initial
		begin
		$dumpfile("updown.vcd");
		$dumpvars(0);
		//$monitor($time,"  ctrl=%d ,reset=%b ,count=%d ",ctrl,reset,count);
		clk = 0;
		reset=1;
		#4;
		reset=0;
		ctrl=0;
		#250;
		ctrl=1;
		#128;
		reset=1;
		$finish;
		end
endmodule
		
		
