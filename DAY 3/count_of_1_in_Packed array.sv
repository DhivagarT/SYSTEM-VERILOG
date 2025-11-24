// Count number of 1’s in a packed array.
module counter_example;
  int a[];
  int count=0;

  
  initial begin
    a=new[5];
    a='{1,0,1,0,1};

    
    foreach(a[i])$display("value of a[%0d]=%0d",i,a[i]);
  end
    initial begin
      foreach(a[i])begin
      if(a[i]==1)
        count=count+1;
      end 
      
       
      $display("count of 1=%0d",count);
      #20;
      $finish;
    end
endmodule

// OUTPUT

// # KERNEL: value of a[0]=1
// # KERNEL: value of a[1]=0
// # KERNEL: value of a[2]=1
// # KERNEL: value of a[3]=0
// # KERNEL: value of a[4]=1
// # KERNEL: count of 1=3
