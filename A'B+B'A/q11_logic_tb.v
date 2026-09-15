module q11_logic_tb;
reg A;
reg B;
wire Y;
q11_logic dut(
    .A(A),
    .B(B),
    .Y(Y)
);
initial begin
    $dumpfile("q11_logic_tb.vcd");
    $dumpvars(0,q11_logic_tb);
    $monitor("A=%b B=%b Y=%b",A,B,Y);
    A = 0; B = 0;
    #10;
    A = 0; B = 1;
    #10;
    A = 1; B = 0;
    #10;
    A = 1; B = 1;
    #10;
    $finish;
end
endmodule