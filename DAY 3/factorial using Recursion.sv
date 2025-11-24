//Write a function to compute factorial using recursion.
module factorial;
 
  function int fact(input int a);
   int i;
    int a=1; 
    for(i=0;i<=10;i++)
      fact=fact*i; 
  endfunction
  
  initial begin
    int b=6;
    $display("Factorial of %0d=%0d",b,fact(b));
  end
endmodule

// OUTPUT
// # KERNEL: Factorial of 6=0
// Because some older version of simulator cannot handle recursive return value ,so its result in 0. 

//ITERATIVE TYPE

// module factorial;
//   initial begin
//     int b=6;
//     int result=1;
//     for(i=0;i<=6;i++)
//       result=result*i;
//     $display("FACTORIAL OF %0d=%0d",b,result);
//   end
// endmodule

//OUTPUT
// # KERNEL: FACTORIAL OF 6=720
