interface count_if#(parameter N=3);  //parameter declaration
  logic [N-1:0]count;
  logic rst;
  logic clk;
  
  modport dut(input clk,rst,output count);  //design instantation
  modport tb(input count,output clk,rst);   //testbench instantiation
  
endinterface
