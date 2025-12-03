interface add;
  logic [3:0]a;
  logic [3:0]b;
  logic [3:0]y;
  
  modport dut(input a,b,output y);
  modport tb(input y,output a,b);
  
endinterface
