//`include "instruction_fetch.v"
module IF_TEST;
  reg clk;
  reg rst;

  instruction_fetch UUT (.clock(clk),
                          .reset(rst));

  always
    #1 clk = ~clk;

  initial
  begin
  	clk = 1'b0; 
	//rst = 1'b1;
  end

  initial
  begin
	repeat(17)
    @(posedge clk); 
	//rst = 1'b0;
    $stop;
  end
endmodule
