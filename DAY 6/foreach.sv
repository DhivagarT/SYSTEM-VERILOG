// Create an array of 5 elements and print all elements using foreach.
module foreach_ex;
  int a[5]='{1,2,3,4,5};
  initial begin
  
    foreach(a[i])begin
      $display("VALUE OF A[%0d]=%0d",i,a[i]);
    end
  end
endmodule

// OUTPUT
// # KERNEL: VALUE OF A[0]=1
// # KERNEL: VALUE OF A[1]=2
// # KERNEL: VALUE OF A[2]=3
// # KERNEL: VALUE OF A[3]=4
// # KERNEL: VALUE OF A[4]=5
