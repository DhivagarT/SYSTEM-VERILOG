//Implication Constraint
class exp;
  rand int a;
  rand int b;
  rand int c;

  // Base range constraints
  constraint base_limit {
    a inside {[0:20]};
    b inside {[0:10]};
    c inside {[0:20]};
  }
  
  // Implication constraints
  constraint c1 {(a inside {[1:8]}) -> (b < 6);}
  constraint c2 {(b inside {[4:7]}) -> (c > 8);}
endclass



module exp_Imp;
  initial begin
    exp e = new();

    for (int i = 0; i < 10; i++) begin
      void'(e.randomize());
      $display("[%0d] A=%0d  B=%0d  C=%0d", i, e.a, e.b, e.c);
    end
  end
endmodule

// OUTPUT
// # KERNEL: [0] A=9  B=7  C=11
// # KERNEL: [1] A=8  B=0  C=16
// # KERNEL: [2] A=20  B=4  C=16
// # KERNEL: [3] A=16  B=1  C=17
// # KERNEL: [4] A=14  B=3  C=2
// # KERNEL: [5] A=12  B=8  C=15
// # KERNEL: [6] A=10  B=9  C=8
// # KERNEL: [7] A=14  B=10  C=3
// # KERNEL: [8] A=10  B=6  C=11
// # KERNEL: [9] A=14  B=1  C=2
