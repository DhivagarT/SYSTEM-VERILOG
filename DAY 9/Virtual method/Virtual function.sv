//Virtual Function
class parent;
  string a;
  int b;
  
  function new();
    a="HELLO";
    b=2;
  endfunction
  
  virtual function void display();   //virtual function in parent class
    $display("A=%0s B=%0d",a,b);
  endfunction
endclass

class child1 extends parent;
  int c;
  string d;
  
  function new();
    c=1;
    d="GOOD";
  endfunction
  
  function void display();
    $display("C=%0d D=%0s",c,d);
  endfunction
endclass

class child2 extends parent;
  bit e;
  
  function void display();
    $display("D=%0d",e);
  endfunction
endclass

module exp;
  parent p1,p2;   //handle for parent
  child1 c1;      //child 1 handle
  child2 c2;       //child 2 handle
  
  initial begin
    c1=new();     
    c2=new();
    c2.e=1;       //vlaue for d
    p1=c1;        //handle copy or class assignment 
    p2=new c2;    //shallow copy
    
    
    p1.display();
    p2.display();
  end
endmodule

// OUTPUT
// # KERNEL: C=1 D=GOOD
// # KERNEL: D=1
