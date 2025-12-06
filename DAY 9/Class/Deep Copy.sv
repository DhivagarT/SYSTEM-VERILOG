//Deep Copy
class base;
  int a;
  int b;
  
  function new();
    a=1;
    b=2;
  endfunction
  
  function void deep(base copy);  
    this.a=copy.a;                //  Deep copy Function
    this.b=copy.b;                
  endfunction
  
  function void display();
    $display("a=%0d B=%0d",a,b);
  endfunction
endclass

module exp();
  base x;
  base y;
  initial begin
    x=new();
    y=new();
    y.deep(x);       //KEY WORD
    
    $display("BEFORE");
    x.display();
    y.display();
    x.a=3;
    y.b=4;
    $display("AFTER");
    x.display();
    y.display();
  end
endmodule

// OUTPUT
// # KERNEL: BEFORE
// # KERNEL: a=1 B=2
// # KERNEL: a=1 B=2
// # KERNEL: AFTER
// # KERNEL: a=3 B=2
// # KERNEL: a=1 B=4
