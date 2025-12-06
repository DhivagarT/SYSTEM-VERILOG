class parent;
  int x;

  function void q(int x);
    this.x = x;               // FIXED
  endfunction
    
  extern function void display();
endclass
    
class child extends parent;
  int y;

  function void q(int y);
    super.q(2);               // parent x = 2
    this.y = y;               // FIXED (assign child variable)
  endfunction

  extern function void display();
endclass
    

function void parent::display();
  $display("x = %0d", x);     // FIXED spelling
endfunction

function void child::display();
  super.display();            // call parent's display()
  $display("y = %0d", y);
endfunction
      
module ex;
  child c;
  initial begin
    c = new();
    c.q(10);                  // call q to assign values
    c.display();
  end
endmodule

//     OUTPUT
// # KERNEL: x = 2
// # KERNEL: y = 10
