// Automatic Function
module function_3;
  int r1,r2;
  
  function int first(int a,int b);
    if(a<b)
      return a*b;
    else
      return 0;
  endfunction
  
  function automatic int second(int c,int d);
    if(c>d)
      return c+d;
    else
      return 1;
  endfunction
  
  initial begin
    r1=first(13,12);
    r2=second(32,12);
    $display("RESULT 1 =%0d",r1);
    $display("RESULT 2 =%0d",r2);
  end
endmodule

// OUTPUT

// RESULT 1 =0
// RESULT 2 =44
