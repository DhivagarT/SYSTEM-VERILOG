// Signed Unsigned addition
module addition_example;
  int a[5]='{1,2,-3,-4,5};
  int unsigned b[5]='{1,2,3,4,5};
  int c[5];
  
  
  initial begin
    
     c[0]=a[0]+b[0];
     c[1]=a[3]+b[2];
     c[2]=a[3]+b[1];
     c[3]=a[1]+b[4];
     c[4]=a[2]+b[4];
    
    foreach(c[i])
      $display("c[%0d]=%0d",i,c[i]);
  end
endmodule

// OUTPUT

// # KERNEL: c[0]=2
// # KERNEL: c[1]=-1
// # KERNEL: c[2]=-2
// # KERNEL: c[3]=7
// # KERNEL: c[4]=2
