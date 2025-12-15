//Queue Array
class exp;
  // Unbounded queue
  rand int a[$];
  // Bounded queue (max size 21)
  rand int b[$:21];
  // Queue size constraints
  constraint size_c {
    a.size() inside {[3:6]};
    b.size() inside {[2:5]};
  }
  // Queue element constraints
  constraint value_c {
    foreach (a[i])
      a[i] inside {[10:20]};
    foreach (b[i])
      b[i] inside {[1:7]};
  }

endclass


module associate;
  initial begin
    exp e = new();

    repeat (3) begin
      void'(e.randomize());
      $display("Unbounded queue a = %0p", e.a);
      $display("Bounded queue   b = %0p", e.b);
      $display("---------");
    end
  end
endmodule

// OUTPUT
// Unbounded queue a = '{15, 14, 15} 
// Bounded queue   b = '{5, 6, 6, 6, 6} 
// ---------------------------
// Unbounded queue a = '{13, 20, 13} 
// Bounded queue   b = '{7, 3} 
// ---------------------------
// Unbounded queue a = '{13, 18, 16} 
// Bounded queue   b = '{7, 2, 4, 6} 
// ---------------------------
