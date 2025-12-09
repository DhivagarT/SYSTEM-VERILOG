// Simple Virtual Class
// Create a virtual class Vehicle with a pure virtual function drive().
// Derive Car and Bike classes and implement drive().
// Create a parent handle to call drive() for both child objects.

virtual class Vehicle;
  string model;
  int speed;
  pure virtual function void drive();  // has no argument inside it
  
endclass

class Car extends Vehicle;
   function void drive();
    model="AMBASADAR";
    speed=250;
    $display("MODEL=%0s SPEED=%0d",model,speed);
  endfunction
endclass
    
    class Bike extends Vehicle;
       function void drive();
        model="ROYAL ENFIELD";
        speed=120;
        $display("MODEL=%0s SPEED=%0d",model,speed);
      endfunction
    endclass
    
    module exp;
    Vehicle v;
      Car c;
      Bike b;
      initial begin     
        c=new();    //create car object
        v=c;        //vehicle point to car
        v.drive();  //call car function
        b=new();    //create bike object
        v=b;        //vehicle point to bike
        v.drive(); // call bike function
      end
    endmodule
        
// OUTPUT
//     # KERNEL: MODEL=AMBASADAR SPEED=250
// # KERNEL: MODEL=ROYAL ENFIELD SPEED=120
