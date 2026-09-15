module q10_logic(
    input A,
    input B,
    input C,
    output Y
);
wire not_A;
wire AB;
wire A_not_B;
wire AC;
not(not_A,A);
and(AB,A,B);
and(AC,A,C);
and(A_not_B,not_A,B);
or(Y,AB,A_not_B,AC);
endmodule