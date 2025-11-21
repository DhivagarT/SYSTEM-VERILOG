// Demonstrate blocking vs non-blocking assignments

module block_nonblock;

  logic clk, rst;
  logic [3:0] a, b;
  logic [3:0] x_blocking;
  logic [3:0] y_nonblocking;

  always_ff @(posedge clk) begin
    if (rst)
      x_blocking = a;
    else
      x_blocking = x_blocking + 1;
  end

  always_ff @(posedge clk) begin
    if (rst)
      y_nonblocking <= b;
    else
      y_nonblocking <= y_nonblocking + 1;
  end

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    rst = 1; 
    a = 3; 
    b = 3;
    #12 rst = 0;
    #50 $finish;
  end

  initial begin
    $monitor("%0t | clk=%0d | rst=%0d | x_blocking=%0d | y_nonblocking=%0d",
             $time, clk, rst, x_blocking, y_nonblocking);
  end

endmodule

// OUTPUT

// # KERNEL: 0 | clk=0 | rst=1 | x_blocking=x | y_nonblocking=x
// # KERNEL: 5 | clk=1 | rst=1 | x_blocking=3 | y_nonblocking=3
// # KERNEL: 10 | clk=0 | rst=1 | x_blocking=3 | y_nonblocking=3
// # KERNEL: 12 | clk=0 | rst=0 | x_blocking=3 | y_nonblocking=3
// # KERNEL: 15 | clk=1 | rst=0 | x_blocking=4 | y_nonblocking=4
// # KERNEL: 20 | clk=0 | rst=0 | x_blocking=4 | y_nonblocking=4
// # KERNEL: 25 | clk=1 | rst=0 | x_blocking=5 | y_nonblocking=5
// # KERNEL: 30 | clk=0 | rst=0 | x_blocking=5 | y_nonblocking=5
// # KERNEL: 35 | clk=1 | rst=0 | x_blocking=6 | y_nonblocking=6
// # KERNEL: 40 | clk=0 | rst=0 | x_blocking=6 | y_nonblocking=6
// # KERNEL: 45 | clk=1 | rst=0 | x_blocking=7 | y_nonblocking=7
// # KERNEL: 50 | clk=0 | rst=0 | x_blocking=7 | y_nonblocking=7
// # KERNEL: 55 | clk=1 | rst=0 | x_blocking=8 | y_nonblocking=8
// # KERNEL: 60 | clk=0 | rst=0 | x_blocking=8 | y_nonblocking=8
// # RUNTIME: Info: RUNTIME_0068 design.sv (32): $finish called.
