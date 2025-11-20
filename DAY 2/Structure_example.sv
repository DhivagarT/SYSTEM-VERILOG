// Structure
module structure_union_example;
  struct{
  string college_name;
    string student_name;
    bit [31:0]roll_num;
    integer fees_pending;
  }Student_details;
  
  initial begin
    Student_details.college_name="UCET";
    Student_details.student_name="DHIVAGAR.T";
    Student_details.roll_num=32'h42242110;
    Student_details.fees_pending='d0;
    $display("College=%0s \n Name=%0s \n Roll_num=%0h \n Pending=%0d",
             Student_details.college_name,
             Student_details.student_name,
             Student_details.roll_num,
             Student_details.fees_pending);
  end
endmodule

// OUTPUT

// # KERNEL: College=UCET 
// # KERNEL:  Name=DHIVAGAR.T 
// # KERNEL:  Roll_num=42242110 
// # KERNEL:  Pending=0
