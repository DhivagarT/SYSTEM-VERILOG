class packed_array_example;
 
  rand bit [3:0] a;   
  rand bit [7:0][3:0] b;
  rand bit [3:0][2:0][1:0] c;

  constraint c1 { a inside {[0:10]}; }
  constraint c2 { b inside {[0:255]}; }
  constraint c3 { c inside {[0:63]}; }

//   function void display();
//     $display("1-D packed a = %0d", a);
//     $display("2-D packed b = %0d", b);
//     $display("3-D packed c = %0d", c);
//   endfunction

endclass

module tb_packed_array;

  packed_array_example obj;

  initial begin
    obj = new();
    repeat(3) begin
      if (obj.randomize()) begin
        //obj.display();
        $display("%p %p %p",obj.a,obj.b,obj.c);
      end else begin
        $display("Randomization failed");
      end
      $display("---------------------------------");
    end
  end

endmodule

// OUTPUT
// # KERNEL: 4 61 19
// # KERNEL: ---------------------------------
// # KERNEL: 9 101 46
// # KERNEL: ---------------------------------
// # KERNEL: 10 54 35
// # KERNEL: ---------------------------------
