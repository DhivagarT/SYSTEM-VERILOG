//Foreach Constraint
class exp;
  rand bit [3:0]a[4];
  rand bit [2:0]b[2][3];
  
  constraint c1{foreach(a[i])
    a[i] inside{[1:12]};}
  constraint c2{foreach(b[i,j])
    b[i][j] inside{1,2,3,[5:7]};}
endclass

module foreach_exp;
  initial begin
    exp e;
    e=new();
//     repeat(3)begin
//       e.randomize();
    for(int i=0;i<10;i++)begin
      void'(e.randomize());
      $display(" [%0d] a={%0p} b=%0p",i,e.a,e.b);
    end
  end
endmodule

// OUTPUT
// # KERNEL:  [0] a={4 7 8 6} b={2 1 1} {3 5 7}
// # KERNEL:  [1] a={11 8 2 4} b={6 7 7} {1 3 3}
// # KERNEL:  [2] a={3 8 4 2} b={6 3 3} {1 7 1}
// # KERNEL:  [3] a={6 1 12 4} b={5 2 5} {5 6 2}
// # KERNEL:  [4] a={3 8 5 5} b={1 2 6} {3 1 3}
// # KERNEL:  [5] a={8 12 1 6} b={2 7 2} {1 2 3}
// # KERNEL:  [6] a={12 3 11 5} b={1 6 7} {7 6 2}
// # KERNEL:  [7] a={10 8 5 1} b={3 5 3} {1 2 1}
// # KERNEL:  [8] a={11 11 10 8} b={3 7 5} {6 6 7}
// # KERNEL:  [9] a={6 3 8 9} b={2 7 1} {1 3 1}
