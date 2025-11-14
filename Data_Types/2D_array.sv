//2 dimensional array
module two_dimension;
  int array[3][2]='{'{1,10},'{2,20},'{3,30}};
  
  initial begin
    foreach(array[i,j])begin
      
      $display("array[%0d][0dj]=%0d",i,j,array[i][j]);
    end
  end
endmodule
