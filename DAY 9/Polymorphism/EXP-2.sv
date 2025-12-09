// Create a parent class Shape with a virtual function area().
// Derive Circle and Rectangle classes from it, override area(),
// Use a parent handle to call area() for multiple objects and display the results.

// Parent class
class shape;
  virtual function int area();   // virtual function
    $display("Area in shape (default)");
    return 0;
  endfunction
endclass

// Circle class
class circle extends shape;
  int radius;
  function new(int r);
    radius = r;
  endfunction
  
  function int area();
    int a;
    a = 3.14 * radius * radius;
    $display("Circle area = %0f", a);
    return a;
  endfunction
endclass

// Rectangle class
class rectangle extends shape;
  int length, width;
  function new(int l, int w);
    length = l;
    width  = w;
  endfunction
  
  function int area();
    int a;
    a = length * width;
    $display("Rectangle area = %0d", a);
    return a;
  endfunction
endclass

// Test module
module exp;
  shape s;   // parent handle
  initial begin
    circle c = new(5);       // radius = 5
    rectangle r = new(4, 6); // length=4, width=6
    
    s = c;  // parent handle points to circle
    s.area();  // calls circle's area()
    
    s = r;  // parent handle points to rectangle
    s.area();  // calls rectangle's area()
  end
endmodule

// OUTPUT
// # KERNEL: Circle area = 79.000000
// # KERNEL: Rectangle area = 24
