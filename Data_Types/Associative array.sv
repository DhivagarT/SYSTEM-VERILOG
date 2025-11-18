// Associative array
module associative_array_example;
  bit [7:0]array[int];
  int index;
  
  initial begin
    array[0]=12;
    array[3]=1;
    array[7]=11;
    array[1]=15;
    
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
    $display("array size=%0d",array.size());
    $display("array number=%0d",array.num());
    
    if (array.exists(7))
      $display("value is founded");
    else
      $display("No such value found");
    
    index=7;
    array.next(index);
    $display("Next value of 7 is %0d ",index);
    array.prev(index);
    $display("Previous value of 7 is %0d",index);
    
    array.delete(7);
    foreach(array[i])
    $display("array[%0d]=%0d",i,array[i]);
    $display("num after delete =%0d",array.num());
    
    
  end
endmodule
