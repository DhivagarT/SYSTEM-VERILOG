//rand and randc Keyword   

class exp;
  rand bit [3:0]a;
  rand byte b;
  randc int c;
  randc shortint d;

  function void display();
    //void'(std::randomize(a));  
    $display("%0d",a);
    //void'(std::randomize(b));
    $display("%0d",b);
    //void'(std::randomize(c));
    $display("%0d",c);
    //void'(std::randomize(d));
    $display("%0d",d);
  endfunction
endclass

module keyword;
  initial begin
    exp e=new();
    repeat(7)begin
      $display("..........");
    e.randomize();  // Command this if std::randomize is used
     e.display();
    //$monitor("A=%0d B=%0d C=%0d D=%0d",e.a,e.b,e.c,e.d);
    end
  end
endmodule

// OUTPUT
// # KERNEL: ..........
// # KERNEL: 7
// # KERNEL: 23
// # KERNEL: -266547600
// # KERNEL: -16134
// # KERNEL: ..........
// # KERNEL: 14
// # KERNEL: -81
// # KERNEL: -1496272408
// # KERNEL: 31640
// # KERNEL: ..........
// # KERNEL: 5
// # KERNEL: 113
// # KERNEL: -1835615188
// # KERNEL: 25893
// # KERNEL: ..........
// # KERNEL: 10
// # KERNEL: 7
// # KERNEL: -1328161162
// # KERNEL: -16138
// # KERNEL: ..........
// # KERNEL: 14
// # KERNEL: 15
// # KERNEL: 81296138
// # KERNEL: 3845
// # KERNEL: ..........
// # KERNEL: 11
// # KERNEL: 101
// # KERNEL: 89136166
// # KERNEL: -15110
// # KERNEL: ..........
// # KERNEL: 11
// # KERNEL: 106
// # KERNEL: 357383787
// # KERNEL: -32728
