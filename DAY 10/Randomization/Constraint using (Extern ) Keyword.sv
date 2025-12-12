//constraint outside class 
//By using Extern Keyword access Constraint outside the class

class exp;
  rand bit [7:0]a;
  rand int b;
  constraint c1{
    a inside {[100:254]};
                };
  extern constraint c2;
endclass

constraint exp::c2 {b inside {1,2,4,5,[20:31]};};
module exp_1;
  initial begin
    exp e=new();
    repeat(4)begin
    if(e.randomize())
      $display("A=%0d B=%0d",e.a,e.b);
      
    end
  end
endmodule

// OUTPUT
// # KERNEL: A=202 B=24
// # KERNEL: A=152 B=31
// # KERNEL: A=229 B=2
// # KERNEL: A=169 B=5
