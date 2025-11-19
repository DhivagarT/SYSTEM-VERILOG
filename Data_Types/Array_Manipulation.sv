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
