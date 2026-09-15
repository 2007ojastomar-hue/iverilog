module q12_logic(
    input A,
    input B,
    output Y1,
    output Y2
);
wire A_and_B;
and(A_and_B, A, B);
or(Y1,A_and_B,A);
assign Y2=A;
endmodule