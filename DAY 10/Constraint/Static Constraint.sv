//Static Constraint 
//comparing with normal constraint

class exp_1;
  rand bit [2:0]a;
  
  static constraint c1{a==2;}   
endclass

class exp_2;
  rand bit [2:0]b;
  
  constraint c2{b==0;}
endclass

module exp_static;
  exp_1 e1;   //creating two handles for same classes
  exp_1 e2;
  exp_2 ex1;
  exp_2 ex2;
  
  initial begin
    e1=new();   //two object for same class 
    e2=new();
    
    //static constraint
    e1.c1.constraint_mode(0);  //disable object e1 affect object e2 also
    repeat(1)begin
      void'(e1.randomize());
      $display("a=%0d",e1.a);  //display random value from 0 to 7 expect 2
    end
    repeat(1)begin
      void'(e2.randomize());   
      $display("a=%0d",e2.a);  //display rnadom value from 0 to 7 expect 2
    end
  end
  initial begin
    ex1=new();
    ex2=new();
    
    //dynamic or normal constraint
    ex1.c2.constraint_mode(0);   //disable ex1 object not affect ex2 object 
    repeat(1)begin
      void'(ex1.randomize());
      $display("b=%0d",ex1.b);   //display value range from 0 to 7 expect 0
    end
    repeat(1)begin
      void'(ex2.randomize());
      $display("b=%0d",ex2.b);   //Always display value 0.
    end
  end
endmodule

// OUTPUT
// # KERNEL: a=3
// # KERNEL: a=7
// # KERNEL: b=2
// # KERNEL: b=0
