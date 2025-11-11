module state_2;
  int a;
  longint b;
  shortint c;
  bit [4:0] d;
  byte e;
  
  initial begin
    a=3;
    b=56;
    c=15;
    d=5'b10001;
    e=7;
    
    $display("a=%0d b=%0d c=%0d d=%0b e=%0d",a,b,c,d,e);
    $finish;
  end
endmodule
