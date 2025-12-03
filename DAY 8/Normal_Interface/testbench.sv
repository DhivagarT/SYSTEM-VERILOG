`include "interface.sv"
`include "xor_gate.sv"

module tb;
  
  xor_int intrf();
  
  xor_des dut(intrf);
  
  initial begin
    $monitor("a=%0d b=%0d y=%0d",intrf.a,intrf.b,intrf.y);
    
    repeat(5)begin
    intrf.a=$random;
    #1;
    intrf.b=$random;
    #1;
    end
    #10;
    $finish;
  end
endmodule
