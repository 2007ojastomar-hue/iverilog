module q7_logic(
    input A,
    input B,
    output R,
    output X
);
assign R= ~(A|B);
assign X= ~(R|R);
endmodule
