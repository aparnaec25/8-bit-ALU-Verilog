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

A = 8'd15;
B = 8'd15;
SEL = 3'b000;
#10;

A = 8'd20;
B = 8'd10;
SEL = 3'b001;
#10;

A = 8'b10101010;
B = 8'b11110000;
SEL = 3'b010;
#10;

A = 8'b10101010;
SEL = 3'b101;
#10;

$stop;

end

endmodule