// A packed array of 8 × 4 bits

// An unpacked array of 8 integers

module random_qn;
  bit [7:0]array_1;
  int array_2[8][4];
  
  initial begin  
    array_1='{1,0,1,1,1,0,0,1};
    foreach(array_1[i])
    $display("array_1[%0d]=%0d",i,array_1[i]);
       array_2='{'{1,2,3,4},'{5,6,7,8},'{9,10,11,12},'{13,14,15,16},'{17,18,19,20},'{21,22,23,24},'{25,26,27,28},'{29,30,31,32}};
    foreach(array_2[i,j])
      $display("array_2[%0d][%0d]=%0d",i,j,array_2[i][j]);
  end
endmodule

// OUTPUT

// # KERNEL: array_1[7]=1
// # KERNEL: array_1[6]=0
// # KERNEL: array_1[5]=1
// # KERNEL: array_1[4]=1
// # KERNEL: array_1[3]=1
// # KERNEL: array_1[2]=0
// # KERNEL: array_1[1]=0
// # KERNEL: array_1[0]=1
// # KERNEL: array_2[0][0]=1
// # KERNEL: array_2[0][1]=2
// # KERNEL: array_2[0][2]=3
// # KERNEL: array_2[0][3]=4
// # KERNEL: array_2[1][0]=5
// # KERNEL: array_2[1][1]=6
// # KERNEL: array_2[1][2]=7
// # KERNEL: array_2[1][3]=8
// # KERNEL: array_2[2][0]=9
// # KERNEL: array_2[2][1]=10
// # KERNEL: array_2[2][2]=11
// # KERNEL: array_2[2][3]=12
// # KERNEL: array_2[3][0]=13
// # KERNEL: array_2[3][1]=14
// # KERNEL: array_2[3][2]=15
// # KERNEL: array_2[3][3]=16
// # KERNEL: array_2[4][0]=17
// # KERNEL: array_2[4][1]=18
// # KERNEL: array_2[4][2]=19
// # KERNEL: array_2[4][3]=20
// # KERNEL: array_2[5][0]=21
// # KERNEL: array_2[5][1]=22
// # KERNEL: array_2[5][2]=23
// # KERNEL: array_2[5][3]=24
// # KERNEL: array_2[6][0]=25
// # KERNEL: array_2[6][1]=26
// # KERNEL: array_2[6][2]=27
// # KERNEL: array_2[6][3]=28
// # KERNEL: array_2[7][0]=29
// # KERNEL: array_2[7][1]=30
// # KERNEL: array_2[7][2]=31
// # KERNEL: array_2[7][3]=32
