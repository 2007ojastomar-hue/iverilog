module converter3(
    input A,
    input B,
    input C,
    output G2,
    output G1,
    output G0
);
assign G2=A;
assign G1=A^B;
assign G0=B^C;
endmodule