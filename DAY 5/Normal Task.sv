// Normal Task
module task_1;
  task mul(input int a,b,output int c);
    #2;
    c=a*b;
  endtask
  
  int a=12;
  int b=2;
  int d;
  initial begin
    
    mul(a,b,d);
    $display("a=%0d b=%0d MULTIPLICATION OF 12X2=%0d",a,b,d);
  end
endmodule

// OUTPUT 

// # KERNEL: a=12 b=2 MULTIPLICATION OF 12X2=24
