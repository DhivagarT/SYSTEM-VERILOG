//Write code to swap two variables without using a third variable.

module swap_variables;
  logic [5:0]a;
  logic [5:0]b;
  
  initial begin
    a=23;
    b=32;
    
    $display(" Before swap value of a=%0d",a);
    $display(" Before swap value of b=%0d",b);
    
    {a,b}={b,a};
    
    $display(" After swap value of a=%0d",a);
    $display(" After swap value of b=%0d",b);

  end
endmodule

// OUTPUT

// # KERNEL:  Before swap value of a=23
// # KERNEL:  Before swap value of b=32
// # KERNEL:  After swap value of a=32
// # KERNEL:  After swap value of b=23
