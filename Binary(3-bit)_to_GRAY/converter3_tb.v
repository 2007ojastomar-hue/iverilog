module converter3_tb;
reg A;
reg B;
reg C;
wire G2;
wire G1;
wire G0;
converter3 dut(
    .A(A),
    .B(B),
    .C(C),
    .G2(G2),
    .G1(G1),
    .G0(G0)
);
initial begin
    $dumpfile("converter3.vcd");
    $dumpvars(0,converter3_tb);
    $monitor("G2=%b,G1=%b,G0=%b",G2,G1,G0);
    A=0; B=0; C=0; #10; //0
    A=0; B=0; C=1; #10; //1
    A=0; B=1; C=0; #10; //2
    A=0; B=1; C=1; #10; //3
    A=1; B=0; C=0; #10; //4
    A=1; B=0; C=1; #10; //5
    A=1; B=1; C=0; #10; //6
    A=1; B=1; C=1; #10; //7
    $finish;
end
endmodule