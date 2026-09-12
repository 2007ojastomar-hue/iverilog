module q7_logic_tb;
reg A;
reg B;
wire R;
wire X;
q7_logic dut(
    .A(A),
    .B(B),
    .R(R),
    .X(X)
);
initial begin
    $dumpfile("q7_logic_tb.vcd");
    $dumpvars(0,q7_logic_tb);
    $monitor("A=%b,B=%b,R=%b,X=%b",A,B,R,X);
    A=0; B=0;
    #10;
    A=0; B=1;
    #10;
    A=1; B=0;
    #10;
    A=1; B=1;
    #10;
    $finish;
end
endmodule