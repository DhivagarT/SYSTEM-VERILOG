//class assignment
class base;
  int a;
  int b;
  
  function new();
    a=1;
    b=2;
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
    x=y;     //KEY WORD
    $display("BEFORE");
    x.display();
    y.display();
    y.a=3;
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
// # KERNEL: a=3 B=4
// # KERNEL: a=3 B=4
