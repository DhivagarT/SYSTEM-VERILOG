// Virtual class Animal with virtual function make_sound().

// Derive Dog and Cat.

// Assign child objects to parent handle and call make_sound() dynamically.

virtual class Animal;
  string name;
  int range;
  function new(string n,int r);
    name=n;
    range=r;
  endfunction
  
  virtual function void make_sound();
    $display("NAME=%0s RANGE=%0d",name,range);
  endfunction
endclass

class dog extends Animal;
  
  function new(string n="DOG",int r=50);
  super.new(n,r);
  endfunction
  
  function void make_sound();
    super.make_sound();
    $display("NAME=%0s RANGE=%0d",name,range);
  endfunction
endclass

class cat extends Animal;
  
  function new(string n="CAT",int r=30);
    super.new(n,r);
  endfunction
  
  function void make_sound();
    super.make_sound();
    $display("NAME=%0s RANGE=%0d",name,range);
  endfunction
endclass

module exp;
  Animal a;
  dog d;
  cat c;
  initial begin
    d=new();     
    c=new();
    a=d;        //ASSIGNING CHILD OBJECT TO PARENT HANDLE
    a.make_sound();  //DYNAMIC CALL BECAUSE OF USING VIRTUAL FUNCTION
    a=c;
    a.make_sound();
  end
endmodule

// OUTPUT
// # KERNEL: NAME=DOG RANGE=50
// # KERNEL: NAME=DOG RANGE=50
// # KERNEL: NAME=CAT RANGE=30
// # KERNEL: NAME=CAT RANGE=30
