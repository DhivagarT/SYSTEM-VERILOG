// 1D packed 2D unpacked
module packed_unpacked_1;
  logic [2:0]a[4];
  integer i;
  
  initial begin
    for(i=0;i<4;i=i+1)
      a[i]=$urandom_range(0, 7);
    
    foreach(a[i])
   
      $display("a[%0d]=%0d",i,a[i]);
  end
endmodule
