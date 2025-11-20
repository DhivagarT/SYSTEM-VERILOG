//UNION EXAMPLE

module union_example;

  typedef union packed {
    logic [31:0] name_bits;
    logic [31:0] age;
    logic [31:0] grade_bits;
  } info_t;

  info_t info;

  initial begin

    info.age = 21;
    $display("After writing age:");
    $display("name_bits=%h  age=%0d  grade_bits=%h\n",
              info.name_bits, info.age, info.grade_bits);

    info.name_bits = 32'h4B555050;
    $display("After writing name_bits:");
    $display("name_bits=%h  age=%0d  grade_bits=%h\n",
              info.name_bits, info.age, info.grade_bits);

    info.grade_bits = 32'h42B2CCCD;
    $display("After writing grade_bits:");
    $display("name_bits=%h  age=%0d  grade_bits=%h\n",
              info.name_bits, info.age, info.grade_bits);

  end

endmodule

// OUTPUT

// # KERNEL: After writing age:
// # KERNEL: name_bits=00000015  age=21  grade_bits=00000015
// # KERNEL: 
// # KERNEL: After writing name_bits:
// # KERNEL: name_bits=4b555050  age=1263882320  grade_bits=4b555050
// # KERNEL: 
// # KERNEL: After writing grade_bits:
// # KERNEL: name_bits=42b2cccd  age=1119014093  grade_bits=42b2cccd
