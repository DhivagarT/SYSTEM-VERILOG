//Write a simple counter using always_ff.
module counting;
  logic clk;
  logic rst;
  logic [3:0]count;
  
  always_ff@(posedge clk)begin
    if(rst)
      count<=0;
    else
      count<=count+1;
  end
  
  initial clk=0;
  always #5 clk=~clk;
  
  initial begin
    
    rst=1;
    #10 rst=0;
  
    #100;
    $finish;
  end
  initial begin
    $monitor("Time=%0t rst=%0d count=%0d",$time,rst,count);
  end
  
endmodule

// OUTPUT

// Time=0 rst=1 count=x
// Time=5 rst=1 count=0
// Time=10 rst=0 count=0
// Time=15 rst=0 count=1
// Time=25 rst=0 count=2
// Time=35 rst=0 count=3
// Time=45 rst=0 count=4
// Time=55 rst=0 count=5
// Time=65 rst=0 count=6
// Time=75 rst=0 count=7
// Time=85 rst=0 count=8
// Time=95 rst=0 count=9
// Time=105 rst=0 count=10
