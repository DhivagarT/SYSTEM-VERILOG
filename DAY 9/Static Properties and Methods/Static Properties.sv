//static and non-static variable 
class demo;
  int a;
  static int b;
  
endclass

module exp;
  initial begin
    demo x=new();
    demo y=new();
    demo z=new();
    
    //Non-Static Variable
    x.a=10;
    y.a=20;
    z.a=30;
    
    //Static Variable
    x.b=1;
    y.b=2;
    z.b=3;
    
  end
  initial begin
    $monitor("x.a=%0d y.a=%0d z.a=%0d x.b=%0d y.b=%0d z.b=%0d",x.a,y.a,z.a,x.b,y.b,z.b);
  end
endmodule

// OUTPUT
// # KERNEL: x.a=10 y.a=20 z.a=30 x.b=3 y.b=3 z.b=3
