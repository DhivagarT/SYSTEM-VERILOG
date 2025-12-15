// Dynamic Array Randomization
class exp;
  rand int a[];
  
  //   constraint c1{foreach(a[i])  //using constraint
//     a[i] inside{[2:8]};
//                };
  
  function void display();    //using function
    void'(randomize(a));
    $display("%p",a);
  endfunction
endclass

module d_array;
  exp e;
  initial begin
    e=new();
    
    e.a=new[5];
    
    repeat(3)begin
      
      e.display();
      
//     if(e.randomize())
//     $display("%0p",e.a);
    end
  end
endmodule

// OUTPUT
// # KERNEL: '{-1200787033, 301513087, -164480667, 76406118, -418579170}
// # KERNEL: '{1381723499, -1781498450, -499152946, 550027672, 272420212}
// # KERNEL: '{160799846, 96032133, 672240490, -1138692048, 2001829858}
