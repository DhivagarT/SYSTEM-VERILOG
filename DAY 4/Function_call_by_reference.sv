// Function_call_by_reference
module function_4;
  int a,b;
  
  function automatic int first(ref int x,int y);
    x=x*2;
    return x+y;
  endfunction
  
  initial begin
   int result;
    
    a=2;
    b=3;
    $display("a=%0d b=%0d ",a,b);
     
    result=first(a,b);
    $display("a=%0d b=%0d  result=%0d",a,b,result);
  end
endmodule

// OUTPUT

// # KERNEL: a=2 b=3 
// # KERNEL: a=4 b=3  result=7
