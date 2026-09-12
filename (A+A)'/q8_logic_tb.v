module q8_logic_tb;
    reg A;
    wire R;
    wire X;
    q8_logic dut(
        .A(A),
        .R(R),
        .X(X)
    );
    initial begin
        $dumpfile("q8_logic_tb.vcd");
        $dumpvars(0,q8_logic_tb);
        $monitor("A=%b,R=%b,X=%b",A,R,X);
        A=0; #10;
        A=1; #10;   
        $finish;
    end
endmodule