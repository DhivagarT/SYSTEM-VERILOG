// Enumeration DataType
module enumeration_example;
  typedef enum int {Apple,Orange,Banana,watermelon}fruits_t;
  fruits_t fruits;
  
  initial begin

    fruits=Apple;
    #2 fruits=Orange;
    //$display("FRUIT = %0s",fruits.name());
    #2 fruits=Banana;
    //$display("FRUIT = %0s",fruits.name());
    #2 fruits=watermelon;
   // $display("FRUIT = %0s",fruits.name());
   
  end
  initial begin
    $monitor("FRUIT = %0s , FRUIT VALUE = %0d",fruits.name(),fruits);
  end
  
endmodule

//OUTPUT

// # KERNEL: FRUIT = Apple , FRUIT VALUE = 0
// # KERNEL: FRUIT = Orange , FRUIT VALUE = 1
// # KERNEL: FRUIT = Banana , FRUIT VALUE = 2
// # KERNEL: FRUIT = watermelon , FRUIT VALUE = 3
