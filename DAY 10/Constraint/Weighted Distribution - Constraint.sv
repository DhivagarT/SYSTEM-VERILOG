//weighted constraint
//dist-keyword
class exp;
  rand int a;
  rand int b;
  
  constraint c1{a dist{1:=10,[3:5]:=20,8:=35};}  // := operator share equal weight for range
  constraint c2{b dist{1:/40,[4:6]:/40,8:/30};}  // :/ operator share total weight for range
  
endclass

module weighted_exp;
  initial begin
    exp e=new();
    
    for(int i=0;i<10;i++)begin
     void'(e.randomize());
      $display("[%0d]|%0d|%0d ",i,e.a,e.b);
    end
 
  end
endmodule

// OUTPUT
// # KERNEL: [0]|8|4 
// # KERNEL: [1]|4|8 
// # KERNEL: [2]|8|6 
// # KERNEL: [3]|5|8 
// # KERNEL: [4]|1|4 
// # KERNEL: [5]|3|1 
// # KERNEL: [6]|4|5 
// # KERNEL: [7]|8|1 
// # KERNEL: [8]|5|4 
// # KERNEL: [9]|1|1 

/*
In this output in a 8 has more probability compare to other value and 3 to 5 have equal probability ,1 has low probability 
TOTAL WEIGHT =  10+20+20+20+35=105.
For b 1 has Higher probability ,4 to 6 has totally 40 probability 
TOTAL WEIGHT=40+40+30=110. 
*/
