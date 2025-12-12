//Overriding Constraint
class parent;
  rand int a;
  rand byte b;
  randc longint c;
  
  constraint c1{a inside {1,2,3,4};};
  constraint c2{b<=9;b>=3;c<57;c>=13;};
endclass

class child extends parent;
  constraint c1{a inside {5,6,7,8,9,[11:24]};};
endclass

module exp_override;
  initial begin
    parent p=new();
    child c=new();
    repeat(5)begin
    c.randomize();
    $display("A=%0d B=%0d C=%0d",c.a,c.b,c.c);
    end
  end
endmodule

// OUTPUT
// # KERNEL: A=24 B=9 C=16
// # KERNEL: A=7 B=9 C=38
// # KERNEL: A=17 B=6 C=37
// # KERNEL: A=9 B=4 C=41
// # KERNEL: A=24 B=3 C=35
