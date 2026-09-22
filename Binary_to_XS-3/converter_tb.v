module converter_tb;
reg A;
reg B;
reg C;
wire E1;
wire E2;
wire E3;
wire E0;
converter dut(
    .A(A),
    .B(B),
    .C(C),
    .E1(E1),
    .E0(E0),
    .E2(E2),
    .E3(E3)
);
initial begin
    $dumpfile("converter_tb.vcd");
    $dumpvars(0,converter_tb);
    $monitor("E1=%b, E2=%b, E3=%b, E0=%b",E1,E2,E3,E0);
    A=0;B=0;C=0;#10;
    A=0;B=0;C=1;#10;
    A=0;B=1;C=0;#10;
    A=0;B=1;C=1;#10;
    A=1;B=0;C=0;#10;
    A=1;B=0;C=1;#10;
    A=1;B=1;C=0;#10;
    A=1;B=1;C=1;#10;
    $finish;
end
endmodule
