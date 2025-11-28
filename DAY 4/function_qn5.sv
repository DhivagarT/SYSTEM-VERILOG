// Write a function increment(ref int x) that increases the value of x by 1.
module function_qn5;
  
  function automatic int increment(ref int a);
    a=a+1;
    return a;
  endfunction
  
  initial begin
   int x=12;
    int result;
   
    $display("VLAUE OF A=%0d",x);
    
    result=increment(x);
    $display("VALUE OF X=%0d A=%0d",x,result);
  end
endmodule

// OUTPUT 

// # KERNEL: VLAUE OF A=12
// # KERNEL: VALUE OF X=13 A=13
