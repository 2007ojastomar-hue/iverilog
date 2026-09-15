module q12_logic_tb;
reg A;
reg B;
wire Y1;
wire Y2;
q12_logic dut(
    .A(A),
    .B(B),
    .Y1(Y1),
    .Y2(Y2)
);
initial begin
    $dumpfile("q12_logic_tb.vcd");
    $dumpvars(0,q12_logic_tb);
    $monitor("A=%b,B=%b,Y1=%b,Y2=%b",A,B,Y1,Y2);
    A=0; B=0;
    #10 A=0; B=1;
    #10 A=1; B=0;
    #10 A=1; B=1;
    #10 $finish;
end
endmodule