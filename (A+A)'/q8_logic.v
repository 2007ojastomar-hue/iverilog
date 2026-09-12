module q8_logic(
    input A,
    output R,
    output X
);
assign R=(A|A);
assign X= ~(A|A);
endmodule