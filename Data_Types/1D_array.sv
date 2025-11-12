// single Dimensional Array
module single_D_assign;
  int a[5]='{1,2,3,4,5};
  
  initial begin
    foreach(a[i])
      $display("Output is: a=%0d",a[i]);
  end
endmodule
