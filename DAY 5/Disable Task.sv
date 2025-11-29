// Disable Task
module disable_task;
  
  task task_1(input int a,int b,output c);
   
    if(a==b)
      c=a+b;
    else 
      c=a-b;
  endtask
  
  task task_2(input int x,int y,output int z);
    z=x*y;
  endtask
  
  int a=2;
  int b=1;
  int c;
  initial begin
    
    #2 task_1(a,b,c);
    
    #1 task_2(a,b,c);
    #4;
    disable task_1;
    $display("Time=%0t Task 1 disabled",$time);
   
  end
  initial begin
    $monitor("Time=%0t a=%0d b=%0d c=%0d",$time,a,b,c);
    #10;
    $finish;
    
  end
  
endmodule

// OUTPUT
// # KERNEL: Time=0 a=2 b=1 c=0
// # KERNEL: Time=2 a=2 b=1 c=1
// # KERNEL: Time=3 a=2 b=1 c=2
// # KERNEL: Time=7 Task 1 disabled
