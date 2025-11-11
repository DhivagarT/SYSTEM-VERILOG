module states_4;
    logic [3:0] a;
    reg   [2:0] b;
    wire  [3:0] c;
    integer     d;
    time        e;
    real        f;

    assign c = 3;  

    initial begin
        a = 4'b1x01;
        b = 3'b101;
        d = 31;
        e = 10;
        f = 10.4;

      $display("a=%0b b=%0b c=%d d=%0d e=%0t f=%0f", a, b, c, d, e, f);
        $finish;
    end
 
  
endmodule
