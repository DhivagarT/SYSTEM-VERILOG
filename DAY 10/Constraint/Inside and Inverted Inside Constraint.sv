//Inside Constraint & Inverted Inside Constrraint
class exp;
  rand int a;
  rand byte b;
  
  constraint c1{a inside{[1:5],8,9};}  //Inside
  constraint c2{!(b inside{[1:4]});}  //Inverted Inside
  
endclass

module inside_exp;
  initial begin
    exp e=new();
    repeat(5)begin
      void'(e.randomize());
      $display("a=%0d b=%0d",e.a,e.b);
    end
  end
endmodule

// OUTPUT
// # KERNEL: a=5 b=78
// # KERNEL: a=4 b=82
// # KERNEL: a=9 b=32
// # KERNEL: a=3 b=-110
// # KERNEL: a=4 b=-119
