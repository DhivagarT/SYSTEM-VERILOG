// packed array
module paked_array;
  logic a=1;                          // packed
  logic [1:0]b ='{1,2};               //1D packed
  logic [1:0][1:0]c='{'{1,2},'{1,2}}; //2D packed
  
  initial begin
    
    $display("a=%0d",a);
    foreach(b[i])
      $display("b [%0d] =%0d",i,b[i]);
  
    foreach(c[i,j])
      $display("c [%0d][%0d]=%0d",i,j,c[i][j]);
   
  end
endmodule
