class one;
  static int a;
  static int b;

  static function int f1(int x, int y);
    a = x;           // assign to static class variable
    b = y;
    return x + y;
  endfunction
endclass

module scope;
  initial begin
    int result;

    // Call static function using scope resolution operator
    result = one::f1(1,2);  

    $display("a=%0d b=%0d result=%0d", one::a, one::b, result);
  end
endmodule

// OUTPUT
// # KERNEL: a=1 b=2 result=3
