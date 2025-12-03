`timescale 1ns/1ps

module counter(count_if.dut intf);
  reg [2:0] counterup;

  always_ff @(posedge intf.clk or posedge intf.rst) begin
    if(intf.rst)
      counterup <= 0;
    else
      counterup <= counterup + 1;
  end

  assign intf.count = counterup;
endmodule
