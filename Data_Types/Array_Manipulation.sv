// Array Manipulation
module array_manipulation_types;
  int a[5];     //FIXED ARRAY
  int b[];      //DYNAMIC ARRAY
  int c[int];   //ASSOIATIVE ARRAY
  int index;
  int d[$];     //QUEUE ARRAY
 
  
  initial begin                                   //FIXED ARRAY
    a='{1,2,3,4,5};
    foreach(a[i]) $display("a[%0d]=%0d",i,a[i]);
    $display("first %0d",a[0]);
    
  end
  initial begin                                   //DYNAMIC ARRAY
    b=new[7];
    b='{10,20,30,40,50,60,70};
    foreach(b[i])
      $display("b[%0d]=%0d",i,b[i]);
    $display("size of b %0d",b.size() );
    
    b.delete();
    $display("size of b %0d",b.size() );
   
  end
  initial begin                                  //ASSOCIATIVE ARRAY
 
    c[0]=1;
    c[1]=2;
    c[4]=6;
    c[7]=2;
    
    foreach(c[i])
      $display("c[%0d]=%0d",i,c[i]);
    c.first(index);
    $display("first value %0d",index);
    c.last(index);
    $display("last value %0d",index);
    index=4;
    c.next(index);
    $display("next value for 4 is %0d",index);
    index=4;
    c.prev(index);
    $display("previous value for 4 is %0d",index);
    
    c.delete(7);
    foreach(c[i])
      $display("c[%0d]=%0d",i,c[i]);
    
    $display("number of elements=%0d",c.num());
   
  end
  initial begin                             //QUEUE ARRAY
    d='{21,31,41,51};
    $display("size od d",d.size());
    foreach(d[i])
      $display("d[%0d]=%0d",i,d[i]);
    $display("        ");
    
    d.push_front(12);
     foreach(d[i])
       $display("d[%0d]=%0d",i,d[i]);
    $display("        ");
    
    d.pop_back();
    foreach(d[i])
      $display("d[%0d]=%0d",i,d[i]);
    
    $display("Size of d =%0d",d.size());
  end
    
endmodule

/*
# KERNEL: a[0]=1
# KERNEL: a[1]=2
# KERNEL: a[2]=3
# KERNEL: a[3]=4
# KERNEL: a[4]=5
# KERNEL: first 1
# KERNEL: b[0]=10
# KERNEL: b[1]=20
# KERNEL: b[2]=30
# KERNEL: b[3]=40
# KERNEL: b[4]=50
# KERNEL: b[5]=60
# KERNEL: b[6]=70
# KERNEL: size of b 7
# KERNEL: size of b 0
# KERNEL: c[0]=1
# KERNEL: c[1]=2
# KERNEL: c[4]=6
# KERNEL: c[7]=2
# KERNEL: first value 0
# KERNEL: last value 7
# KERNEL: next value for 4 is 7
# KERNEL: previous value for 4 is 1
# KERNEL: c[0]=1
# KERNEL: c[1]=2
# KERNEL: c[4]=6
# KERNEL: number of elements=3
# KERNEL: size od d          4
# KERNEL: d[0]=21
# KERNEL: d[1]=31
# KERNEL: d[2]=41
# KERNEL: d[3]=51
# KERNEL:         
# KERNEL: d[0]=12
# KERNEL: d[1]=21
# KERNEL: d[2]=31
# KERNEL: d[3]=41
# KERNEL: d[4]=51
# KERNEL:         
# KERNEL: d[0]=12
# KERNEL: d[1]=21
# KERNEL: d[2]=31
# KERNEL: d[3]=41
# KERNEL: Size of d =4
*/
