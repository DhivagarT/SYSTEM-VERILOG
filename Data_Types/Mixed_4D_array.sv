// 2D packed 3Dunpacked
module Mixed_packed_unpacked_array;
  logic[2:0][3:0]a[2:0][3:0][1:0];  //4 Dimension
  
  initial begin
    
    foreach(a[i,j,k,l])begin
    
      a[i][j][k][l]=$urandom_range(0,7);
    
      $display("a[%0d][%0d][%0d][%0d]= %0d",i,j,k,l,a[i][j][k][l]);
    end
  end
endmodule
