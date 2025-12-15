//Bidirectional Constraint

class exp;
  rand int a;
  
  constraint c1{a>5;a<12;}
  constraint c2{a>7;a<15;}
endclass

module exp_b;
  initial begin
    exp e=new();
    for(int i=0;i<10;i++)begin
      void'(e.randomize());
      $display("[%0d] %0d",i,e.a);
    end
//     repeat(10)begin
//       if(e.randomize())
//         $display(" %0d",e.a);
//       else
//         $display("RANDOMIZATION FAILS");
      
//     end
  end
endmodule

// OUTPUT
// # KERNEL: [0] 11
// # KERNEL: [1] 10
// # KERNEL: [2] 9
// # KERNEL: [3] 9
// # KERNEL: [4] 10
// # KERNEL: [5] 8
// # KERNEL: [6] 11
// # KERNEL: [7] 10
// # KERNEL: [8] 9
// # KERNEL: [9] 11
