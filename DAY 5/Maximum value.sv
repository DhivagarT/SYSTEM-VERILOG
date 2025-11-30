// max value
module max_value;
 
  int a[]='{1,2,3,4,5};
  int b;
  
  
  task find_max( input int x[],output int y);
   // y= x.max();
     int i;
    y=x[0];
    for(i=0;x.size()>i;i++)
    if(x[i]>y)
      y=x[i];
  endtask
  
  initial begin
  
    find_max(a,b);
    $display("MAX VLAUE OF A =%0d  ",b);
  end
endmodule

// OUTPUT
// # KERNEL: MAX VLAUE OF A =5  
