// Automatic Task
module automatic_task;
  
  task automatic task_2(int v1,v2,output result);
    #2;
    if(v1<=v2)
      result=(v1*v2)+1;
    else
      result=v1;
    

  endtask
  
  int a=2;
  int b=3;
  int c;
  initial begin
    $display("a=%0d b=%0d",a,b);
    task_2(a,b,c);
    $display("v1=%0d v2=%0d result=%0d",a,b,c);
  end
endmodule
    

// OUTPUT
// # KERNEL: a=2 b=3
// # KERNEL: v1=2 v2=3 result=1
