//if-else constraint
class exp;
  rand bit[3:0]a;
  randc bit[2:0]b;
  rand bit [3:0]c;
  rand bit d;
  
  constraint c1{if(a inside{[2:10]})
                     c inside{[1:6]};
                else c inside{[7:9]};}
  constraint c2{if (b<5)
                    d==1;
               else
                   d==0;}
endclass

module if_else_exp;
  initial begin
    exp e=new();
    for(int i=0;i<10;i++)begin
      //void'(randomize(e));
      e.randomize();
      $display("[%0d]  A=%0d B=%0d C=%0d D=%0d",i,e.a,e.b,e.c,e.d);
    end
  end
endmodule

// OUTPUT
// # KERNEL: [0]  A=11 B=7 C=8 D=0
// # KERNEL: [1]  A=3 B=5 C=6 D=0
// # KERNEL: [2]  A=14 B=6 C=7 D=0
// # KERNEL: [3]  A=4 B=3 C=5 D=1
// # KERNEL: [4]  A=12 B=4 C=8 D=1
// # KERNEL: [5]  A=6 B=1 C=6 D=1
// # KERNEL: [6]  A=12 B=2 C=9 D=1
// # KERNEL: [7]  A=7 B=0 C=1 D=1
// # KERNEL: [8]  A=2 B=1 C=1 D=1
// # KERNEL: [9]  A=5 B=7 C=1 D=0
