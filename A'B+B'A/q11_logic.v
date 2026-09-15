module q11_logic(
    input A,
    input B,
    output Y
);
wire not_A;
wire not_B;
wire A_not_and_B;
wire B_not_and_A;
not(not_A,A);
not(not_B,B);
and(A_not_and_B,not_A,B);
and(B_not_and_A,not_B,A);
or(Y,A_not_and_B,B_not_and_A);
endmodule