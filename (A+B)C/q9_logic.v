module q9_logic(
    input A,
    input B,
    input C,
    output A_or_B_and_C
    );
    wire not_A;
    wire not_B;
    wire A_or_B;
    wire not_of_A_or_B_and_c;

    nand(not_A,A,A);
    nand(not_B,B,B);
    nand(A_or_B,not_A,not_B);
    nand(not_of_A_or_B_and_c,A_or_B,C);
    nand(A_or_B_and_C,not_of_A_or_B_and_c,not_of_A_or_B_and_c);
endmodule