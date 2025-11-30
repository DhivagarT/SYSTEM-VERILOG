// Write an automatic task factorial_task that calculates the factorial of a number recursively.
module factorial;
  
  task automatic fact(input int a,output int y);
    int i;
    y=1;
    for(i=1;i<a;i++)
      y=y*i;
  endtask
  
  int n=5;
  int result;
  initial begin
    fact(n,result);
    $display("N=%0d \nFACTORIAL=%0d",n,result);
  end
endmodule

// OUTPUT
// N=5 
// FACTORIAL=24
