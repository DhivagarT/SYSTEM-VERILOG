`include "interface.sv"
`include "designe.sv"
module tb;
  
  add intf();
  
  sum DUT(intf.dut);
  
  initial begin
    $monitor("a=%0d b=%0d y=%0d",intf.a,intf.b,intf.y);
    
    intf.a=$urandom %7;
    intf.b=$urandom %7;
    
    #10;
    $finish;
  end
endmodule
