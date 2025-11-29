// Callin a function from task
module task_3;
   
   int a,b,x,y,z;
  
  initial begin
    a=$urandom %10;
    b=$urandom %10;
    x=$urandom %10;
    y=$urandom %10;
    
    ex2(x,y,z);
    
//     $display(" x=%0d y=%0d ex1=%0d  z=%0d",x,y,ex1(x,y),z);
  end
  
  function int ex1(input int a ,int b);
    ex1=a*b;
  endfunction
  
  
  task ex2(input int x,int y,output int z);
   logic q;
     //#2 q=x+y;
    #3 z=ex1(x,y)-(x+y);
    $display("Inside task: x=%0d y=%0d ex1=%0d  z=%0d", x, y, ex1(x,y), z);
  endtask

endmodule

// OUTPUT

// # KERNEL: Inside task: x=6 y=4 ex1=24  z=14
