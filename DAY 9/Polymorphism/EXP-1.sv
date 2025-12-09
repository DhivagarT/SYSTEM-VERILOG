//polymorphism
class parent;
  longint a;
  shortint b;
  
  function new();
    a = 21;
    b = 10;
  endfunction
  
  virtual function void display();
    $display("A=%0d B=%0d", a, b);
  endfunction
endclass

class child extends parent;
  byte c;
  
  function new();
    super.new();   // call parent constructor
    c = 15;
  endfunction
  
  function void display();
    super.display();   // print parent variables
    $display("C=%0d", c);
  endfunction
endclass

module exp;
  parent p;
  child c;
  
  initial begin
    c=new();
    p = c;            // parent handle points to child object
    p.display();      // polymorphism: child display runs
  end
endmodule

// OUTPUT
// # KERNEL: A=21 B=10
// # KERNEL: C=15
