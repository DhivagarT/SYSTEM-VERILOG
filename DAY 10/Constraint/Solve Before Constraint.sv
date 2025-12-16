//Solve before Constraint
class exp;
  rand bit [3:0]a;
  rand bit [3:0]b;
  
  constraint c1{a>=b;solve a before b;}
  constraint c2{a inside{[1:9]}; b inside{[1:9]};}
  
endclass

module solve_before_exp;
  initial begin
    exp e;
    e=new();
    for(int i=0;i<5;i++)begin
      if(e.randomize())
        $display("[%0d]  A=%0d B=%0d",i,e.a,e.b);
      else
        $display("Randomization Failed");
    end
  end
endmodule

// OUTPUT
// # KERNEL: [0]  A=8 B=4
// # KERNEL: [1]  A=5 B=2
// # KERNEL: [2]  A=7 B=3
// # KERNEL: [3]  A=6 B=1
// # KERNEL: [4]  A=8 B=4
