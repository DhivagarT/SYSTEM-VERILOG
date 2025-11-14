//3 Dimensional array
module three_dimension;
  int array[3][2][1]='{'{'{2},'{5}},'{'{3},'{6}},'{'{4},'{7}}};
  
  initial begin
    foreach(array[i,j,k])begin
      $display("array[%0d][%0d][%0d]=%0d",i,j,k,array[i][j][k]);
    end
  end
  endmodule
