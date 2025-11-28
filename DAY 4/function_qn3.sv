//Write an automatic function sum_to_n(int n) that returns the sum of numbers from 1 to n. 
module function_3;
  function automatic int sum_to_n(int n);
    int i;
    int a=0;
    for(i=1;i<=n;i++)
      a=a+i;
    return a;
  endfunction
  
  initial begin
    int c;
    c=sum_to_n(6);
    $display("sum of n=%0d",c);
  end
endmodule

// OUTPUT
// sum of n=21
