//Unpacked Randomization
class exp;
  rand int a[3];       //1D 
  rand byte b[2][3];   //2D
  rand bit c[2][3][1]; //3D
 

  // a constraints
  constraint c_a {
    foreach (a[i])
      a[i] inside {[2:21]};
  }

  // b constraints
  constraint c_b {
    foreach (b[i,j])
      b[i][j] inside {[1:9]};
  }

  // c constraints
  constraint c_c {
    foreach (c[i,j,k])
      c[i][j][k] inside {[0:1]};
  }

 
endclass


module array_constraint;
  initial begin
    exp e = new();
    repeat (2) begin
      if (e.randomize())
        $display("a=%p b=%p c=%p ",
                 e.a,e.b,e.c);
      else
        $display("Randomization failed");
    end
  end
endmodule

//         OUTPUT 
// # KERNEL: a='{20, 11, 17} b='{'{7, 1, 1}, '{6, 7, 4}} c='{'{'{0}, '{1}, '{0}}, '{'{1}, '{0}, '{1}}} 
// # KERNEL: a='{3, 16, 4} b='{'{5, 6, 1}, '{7, 4, 6}} c='{'{'{1}, '{1}, '{1}}, '{'{1}, '{1}, '{1}}} 
