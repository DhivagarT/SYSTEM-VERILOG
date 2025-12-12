//Scope Randomize with class

class exp;
  rand bit [3:0]a;  
  rand bit [7:0]b;
  randc byte c;
  int d;
  
  constraint c1{a>=1;a<=5;};
  constraint c2{
                b inside {1,2,3,[10:156]};
               };
  
  
  function void display(); 
    int e;                       //Local Variable    
    int f;                       //Local Variable
    void'(std::randomize(this)); //Randomize all Var in class except Local Var remains same
    $display("A=%0d B=%0d C=%0d D=%0d",a,b,c,d);
    if(std::randomize(a))                           //randomize(a) also work
      $display("VALUE OF A=%0d",a);
    if(randomize(b))               
      $display("VALUE OD B=%0d",b);           
    if(randomize(c) with {c<=6;})           
      $display("VALUE OF C=%0d",c);
    if(std::randomize(d))                           //without scope_Randomize execute:ERROR
      $display("VALUE OF D=%0d",d);
    if(std::randomize(e) with {e inside {1,2,7,9};})
      $display("VALUE OF E=%0d",e);
    if(std::randomize(f))
      $display("VALUE OF F=%0d",f);
    void'(this.randomize());       //Execute all var which is Randomized includes e,f
    $display("A=%0d B=%0d C=%0d D=%0d E=%0d F=%0d",a,b,c,d,e,f); 
  endfunction
endclass


module rand_exp;
  exp e;            //Handle
  initial begin
    e=new();        //Object
    e.display();    //Calling Function     
  end
endmodule

// OUTPUT
// # KERNEL: A=10 B=82 C=115 D=0
// # KERNEL: VALUE OF A=6
// # KERNEL: VALUE OF D=727745842
// # KERNEL: VALUE OF E=2
// # KERNEL: VALUE OF F=-1809607792
// # KERNEL: A=1 B=118 C=-12 D=727745842 E=2 F=-1809607792
