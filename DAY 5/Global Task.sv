// Global Task
module golbal_task;
  int a;
  int b;
  int c;
  int m,n,o;
  
  
  task task_3(input int x,int y,output int z);
     z=x*y;

  endtask
  
    task task_4(input int m,int n,output int o);
      task_3(m,n,o);
      o=(m+n);
  endtask
  
  initial begin
    repeat(4)begin
    a=$urandom %10;
    b=$urandom %10;
    task_3(a,b,c);
      
    m=a;
    n=b;
    task_4(m,n,o);
      #3;
    end
  end

  
    initial begin
      $monitor("Time=%0t x=%0d y=%0d z=%0d m=%0d n=%0d o=%0d",$time,a,b,c,m,n,o);
     
    #20;
    $finish;
  end
endmodule

// OUTPUT
// # KERNEL: Time=0 x=5 y=8 z=40 m=5 n=8 o=13
// # KERNEL: Time=3 x=7 y=9 z=63 m=7 n=9 o=16
// # KERNEL: Time=6 x=2 y=3 z=6 m=2 n=3 o=5
// # KERNEL: Time=9 x=3 y=8 z=24 m=3 n=8 o=11
