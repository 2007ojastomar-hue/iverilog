module converter(
    input A,
    input B,
    input C,
    output E1,
    output E2,
    output E3,
    output E0
);

assign E0=~C;
assign E1=~(B^C);
assign E2=A^(B+C);
assign E3=A&(B+C);

endmodule
