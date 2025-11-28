// Write a function max_of_two that returns the larger of two integers.
module max_of_two;

  function int larger_of_two(int a,int b);
    if(a>b)
      return a;
    else if(b>a)
      return b;
  endfunction
  
  initial begin
    int c;
    c=larger_of_two(12,11);
    $display("Larger of Two =%0d",c);
  end
endmodule
