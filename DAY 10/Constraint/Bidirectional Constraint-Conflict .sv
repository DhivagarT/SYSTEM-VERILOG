//Bidirectional Constraint
//for conflict condition   
class exp;
  rand int a;
  
  constraint c1{a>5;a<12;}  //1st constraint
  constraint c2{a<5;a>11;}  //2 nd Constraint conflict 1st.
endclass

module exp_b;
  initial begin
    exp e=new();
//     for(int i=0;i<10;i++)begin
//       void'(e.randomize());
//       $display("[%0d] %0d",i,e.a);
//     end
    repeat(10)begin
      if(e.randomize())
        $display(" %0d",e.a);
      else
        $display("RANDOMIZATION FAILS");
      
    end
  end
endmodule

// IF CONDITION                                  FOR LOOP
// OUTPUT                                         OUTPUT
// # KERNEL: RANDOMIZATION FAILS                  [0]=0
// # KERNEL: RANDOMIZATION FAILS                  [1]=0
// # KERNEL: RANDOMIZATION FAILS                  [2]=0
// # KERNEL: RANDOMIZATION FAILS                  [3]=0
// # KERNEL: RANDOMIZATION FAILS                    .  
// # KERNEL: RANDOMIZATION FAILS                    . 
// # KERNEL: RANDOMIZATION FAILS                    .   
// # KERNEL: RANDOMIZATION FAILS                    .
// # KERNEL: RANDOMIZATION FAILS                    .
// # KERNEL: RANDOMIZATION FAILS                  [9]=0
