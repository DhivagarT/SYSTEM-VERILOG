//Scope-Randomization without class
module exp;
  bit [3:0]a;
  bit [7:0]b;
  int c;
  byte d;
  
  initial begin
    repeat(3)begin
      $display("..........");
      std::randomize(a);
      $display("VLAUE OF A=%0d",a);
      std::randomize(b) with {b<=120;};
      $display("VLAUE OF B=%0d",b);
      std::randomize(c,d) with {c inside{[3:400]};
                                d inside {[1:5]};
                               };
      $display("VALUE OF C=%0d \nVALUE OF D=%0d",c,d);
      
    end
  end
endmodule

// OUTPUT
// ..........
// VLAUE OF A=14
// VLAUE OF B=77
// VALUE OF C=198 
// VALUE OF D=1
// ..........
// VLAUE OF A=13
// VLAUE OF B=97
// VALUE OF C=231 
// VALUE OF D=4
// ..........
// VLAUE OF A=4
// VLAUE OF B=114
// VALUE OF C=329 
// VALUE OF D=4
