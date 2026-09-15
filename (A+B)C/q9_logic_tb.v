module q9_logic_tb;
    reg A;
    reg B;
    reg C;
    wire A_or_B_and_C;
    q9_logic dut(
        .A(A),
        .B(B),
        .C(C),
        .A_or_B_and_C(A_or_B_and_C)
    );
    initial begin
        $dumpfile("q9_logic_tb.vcd");
        $dumpvars(0,q9_logic_tb);
        $monitor("A=%b,B=%b,C=%b,A_or_B_and_C=%b",A,B,C,A_or_B_and_C);
        A=0; B=0; C=0; 
        #10;
        A=0; B=0; C=1; 
        #10;
        A=0; B=1; C=0; 
        #10;
        A=0; B=1; C=1; #10;
        A=1; B=0; C=0; #10;
        A=1; B=0; C=1; #10;
        A=1; B=1; C=0; #10;
        A=1; B=1; C=1; #10;
        $finish;
    end
endmodule