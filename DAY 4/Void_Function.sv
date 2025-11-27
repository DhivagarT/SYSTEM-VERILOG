// Void Function
module funtion_2;
  function void add(int a,b);
    int result;
    result=a+b;
    $display("ADDITION OF A & B =%0d",result);
  endfunction
  
  initial begin
    add(12,13);
    //$display("value=%0d",result); not given because function is not able to call
  end
endmodule

// OUTPUT

// # KERNEL: ADDITION OF A & B =25
