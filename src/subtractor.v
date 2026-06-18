module subtractor(
    input [7:0] A,
    input [7:0] B,
    output [7:0] DIFF
);

assign DIFF = A - B;

endmodule