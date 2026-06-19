`timescale 1ns/1ps

module alu_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] SEL;

wire [7:0] RESULT;

alu_top uut(
    .A(A),
    .B(B),
    .SEL(SEL),
    .RESULT(RESULT)
);

initial begin

// Test 1 - ADD
A = 8'd15; B = 8'd15; SEL = 3'b000;
#10;

// Test 2 - ADD
A = 8'd255; B = 8'd1; SEL = 3'b000;
#10;

// Test 3 - SUB
A = 8'd20; B = 8'd10; SEL = 3'b001;
#10;

// Test 4 - SUB
A = 8'd50; B = 8'd25; SEL = 3'b001;
#10;

// Test 5 - AND
A = 8'b10101010;
B = 8'b11110000;
SEL = 3'b010;
#10;

// Test 6 - OR
A = 8'b10101010;
B = 8'b11110000;
SEL = 3'b011;
#10;

// Test 7 - XOR
A = 8'b10101010;
B = 8'b11110000;
SEL = 3'b100;
#10;

// Test 8 - NOT
A = 8'b10101010;
SEL = 3'b101;
#10;

// Test 9 - LEFT SHIFT
A = 8'd15;
SEL = 3'b110;
#10;

// Test 10 - RIGHT SHIFT
A = 8'd15;
SEL = 3'b111;
#10;

$stop;

end

endmodule