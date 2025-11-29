//Write a task swap that swaps the values of two int variables using input-output arguments.
module task_1;
  int a;
  int b;
  
  task swap(inout int x,inout int y);
   
    {x,y}={y,x};
  endtask
  
  initial begin
     a=2;
     b=1;
    $display("a=%0d b=%0d",a,b);
    swap(a,b);
    $display("After swap");
    $display("a=%0d b=%0d",a,b);
  end
endmodule

// OUTPUT
// # KERNEL: a=2 b=1
// # KERNEL: After swap
// # KERNEL: a=1 b=2
