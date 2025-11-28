// Write a void function print_array that takes an array of integers and prints all its elements.
module function_4;
  
  function void print_array(int a[]);
    foreach(a[i])
      $display("a[%0d]=%0d",i,a[i]);
  endfunction
  
  initial begin
   
    int result[10] = '{1,2,3,4,5,6,7,8,9,0};
    print_array(result);
  end
endmodule
    

// OUTPUT

// # KERNEL: a[0]=1
// # KERNEL: a[1]=2
// # KERNEL: a[2]=3
// # KERNEL: a[3]=4
// # KERNEL: a[4]=5
// # KERNEL: a[5]=6
// # KERNEL: a[6]=7
// # KERNEL: a[7]=8
// # KERNEL: a[8]=9
// # KERNEL: a[9]=0
