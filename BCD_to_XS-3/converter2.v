module converter2(
    input A,
    input B,
    input C,
    input D,
    output W,
    output X,
    output Y,
    output Z
);
assign Z=~D;
assign Y=C&D|(~(C|D));
assign X=B^(C|D);
assign W=A|(B&(C|D));
endmodule