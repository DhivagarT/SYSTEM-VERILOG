// array reverse problem
module reverse_array;
  int a[5]='{1,2,3,4,5};
  int r[5];
  
  initial begin
    foreach(a[i])
      $display("a[%0d]=%0d",i,a[i]);
    
    foreach(a[i])
      r[i]=a[a.size()-1-i];
    $display("Reverse");
    
    foreach(r[i])
      $display("r[%0d]=%0d",i,r[i]);
  end
endmodule

// OUTPUT
// a[0]=1
// a[1]=2
// a[2]=3
// a[3]=4
// a[4]=5
// Reverse
// r[0]=5
// r[1]=4
// r[2]=3
// r[3]=2
// r[4]=1
