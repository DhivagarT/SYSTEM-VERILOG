// Dynamic Array
module dynamic_example;
  int array [];
  
  initial begin
    array= new[3];
    array='{1,2,3};
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
  end
  initial begin
    array= new[5];
    array='{1,2,3,4};
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
    
      $display("Size of array =[%0d]",array.size() );
    
    array=new[2];
    array[0]=2;
    array[1]=3;
   
    foreach(array[i,j])
      $display("array[%0d][%0d]=%0d",i,j,array[i][j]);
    
    $display("Size of an array after new value =%0d",array.size());
    
    array.delete();
    $display("size of an array =%0d",array.size());
    
  end
    
endmodule
