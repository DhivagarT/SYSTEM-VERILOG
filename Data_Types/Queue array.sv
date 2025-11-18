// Queue array
module queue_example;
  string object[$];
  
  initial begin
    $display("size of object",object.size());
    
    object={"tv","remote"};
    $display("size of object",object.size());
    
    object.insert(1,"table");
    object.insert(2,"books");
    
    foreach(object[i])
      $display("object[%0d]=%0s",i,object[i]);
    
    $display("size of object",object.size());
    
    object.push_back("Cup");
    foreach(object[i])$display("object[%d]=%0s",i,object[i]);
     $display("size of object",object.size());
    
    object.push_front("Hammer");
    foreach(object[i])$display("object[%0d]=%0s",i,object[i]);
     $display("size of object",object.size());
    
    object.pop_front();
    foreach(object[i])$display("object[%0d]=%0s",i,object[i]);
    
    $display("size of object",object.size());
    
    object.pop_back();
    foreach(object[i])$display("object[%0d]=%0s",i,object[i]);
     $display("size of object",object.size());
    
    object.insert(4,"table");
    foreach(object[i])$display("object[%0d]=%0s",i,object[i]);
     $display("size of object",object.size());
    
    object.unique();
    foreach(object[i])$display("object[%0d]=%0s",i,object[i]);
     $display("size of object",object.size());
    
  end
endmodule
    
    
  
