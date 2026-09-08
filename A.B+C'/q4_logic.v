module q4_logic(
    input A,
    input B,
    input C,
    output Y
);
wire X;
wire Z;
and_gate gate1(
    A,
    B,
    X
);
not_gate gate2(
    C,
    Z
);
or_gate gate3(
    X,
    Z,
    Y
);
endmodule