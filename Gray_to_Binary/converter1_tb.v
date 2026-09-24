module converter1_tb;
reg G3;
reg G2;
reg G1;
reg G0;
wire B3;
wire B2;
wire B1;
wire B0;

converter1 dut(
    .G3(G3),
    .G2(G2),
    .G1(G1),
    .G0(G0),
    .B3(B3),
    .B2(B2),
    .B1(B1),
    .B0(B0)
);

initial begin
    $dumpfile("converter1.vcd");
    $dumpvars(0,converter1_tb);
    $monitor("B3=%b,B2=%b,B1=%b,B0=%b",B3,B2,B1,B0);
    G3=0;G2=0;G1=0;G0=0;#10;
    G3=0;G2=0;G1=0;G0=1;#10;
    G3=0;G2=0;G1=1;G0=0;#10;
    G3=0;G2=0;G1=1;G0=1;#10;
    G3=0;G2=1;G1=0;G0=0;#10;
    G3=0;G2=1;G1=0;G0=1;#10;
    G3=0;G2=1;G1=1;G0=0;#10;
    G3=0;G2=1;G1=1;G0=1;#10;
    G3=1;G2=0;G1=0;G0=0;#10;
    G3=1;G2=0;G1=0;G0=1;#10;
    G3=1;G2=0;G1=1;G0=0;#10;
    G3=1;G2=0;G1=1;G0=1;#10;
    G3=1;G2=1;G1=0;G0=0;#10;
    G3=1;G2=1;G1=0;G0=1;#10;
    G3=1;G2=1;G1=1;G0=0;#10;
    G3=1;G2=1;G1=1;G0=1;#10;
    $finish;
end
endmodule