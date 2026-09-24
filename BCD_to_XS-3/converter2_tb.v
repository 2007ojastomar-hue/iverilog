module converter2_tb;
reg A;
reg B;
reg C;
reg D;
wire X;
wire Y;
wire Z;
wire W;

converter2 dut(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .W(W),
    .X(X),
    .Y(Y),
    .Z(Z)
);
initial begin
    $dumpfile("converter2.vcd");
    $dumpvars(0,converter2_tb);
    $monitor("W=%b,X=%b,Y=%b,Z=%b",W,X,Y,Z);
    A=0;B=0;C=0;D=0;#10; //0
    A=0;B=0;C=0;D=1;#10; //1
    A=0;B=0;C=1;D=0;#10; //2
    A=0;B=0;C=1;D=1;#10; //3
    A=0;B=1;C=0;D=0;#10; //4
    A=0;B=1;C=0;D=1;#10; //5
    A=0;B=1;C=1;D=0;#10; //6
    A=0;B=1;C=1;D=1;#10; //7
    A=1;B=0;C=0;D=0;#10; //8
    A=1;B=0;C=0;D=1;#10; //9
    $finish;
end
endmodule