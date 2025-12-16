//Soft Constraint
class exp;
  rand bit [3:0]a;
  rand bit [3:0]b;
  
  constraint c1{a<9;b>9;}
endclass

module soft_exp;
  exp e;
  initial begin
    e = new();
    repeat(3)begin
      if(e.randomize())                       //Normal Execution
      $display("a=%0d  b=%0d",e.a,e.b);
    else
      $display("RANDOMIZATION FAILS");
    end
    
    e = new();
    repeat(3)begin         
    if(e.randomize()with{a>9;b<9;})           //With Conflict
      $display("a=%0d  b=%0d",e.a,e.b);
    else 
      $display("RANDOMIZATION FAILS");
    end
      
    
    
    e = new();
    repeat(3)begin
      if(e.randomize()with{soft a>9;soft b<9;})    //using Soft Constraint
      $display("a=%0d  b=%0d",e.a,e.b);
    else
      $display("RANDOMIZATION FAILS");
    end
    
  end
endmodule

// OUTPUT

//NORMAL EXECUTION

// # KERNEL: a=3  b=12
// # KERNEL: a=6  b=15
// # KERNEL: a=2  b=15

//CONFLICT EXECUTION

// # KERNEL: RANDOMIZATION FAILS
// # KERNEL: RANDOMIZATION FAILS
// # KERNEL: RANDOMIZATION FAILS

//SOFT CONSTRAINT

// # KERNEL: a=4  b=13
// # KERNEL: a=6  b=14
// # KERNEL: a=5  b=12
