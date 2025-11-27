// Normal function
module funct_1;
  
  int a,b;
  
  function int add(int a,b);
    if(a<b)
      add=0;
    else
      add=a+b;
  endfunction
  
  initial begin
    int c;
    repeat(3)begin
    a=$urandom %16;
    b=$urandom %16;
    c=add(a,b);
      $display("a=%0d b=%0d ADDITION =%0d",a,b,c);
    end
  end
endmodule

// OUTPUT 

// # KERNEL: a=9 b=6 ADDITION =15
// # KERNEL: a=12 b=3 ADDITION =15
// # KERNEL: a=13 b=10 ADDITION =23
