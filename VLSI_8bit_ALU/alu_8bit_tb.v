module alu_8bit_tb;

reg [7:0] A, B;
reg [2:0] OP;
wire [7:0] Y;
wire CARRY;

alu_8bit uut (
    .A(A),
    .B(B),
    .OP(OP),
    .Y(Y),
    .CARRY(CARRY)
);

initial begin

    A = 8'd20;
    B = 8'd10;

    OP = 3'b000; #10;
    $display("ADD : A=%d B=%d Y=%d CARRY=%b", A, B, Y, CARRY);

    OP = 3'b001; #10;
    $display("SUB : A=%d B=%d Y=%d CARRY=%b", A, B, Y, CARRY);

    OP = 3'b010; #10;
    $display("AND : Y=%b", Y);

    OP = 3'b011; #10;
    $display("OR  : Y=%b", Y);

    OP = 3'b100; #10;
    $display("XOR : Y=%b", Y);

    OP = 3'b101; #10;
    $display("NOT : Y=%b", Y);

    OP = 3'b110; #10;
    $display("SHL : Y=%b", Y);

    OP = 3'b111; #10;
    $display("SHR : Y=%b", Y);

    $finish;
end

endmodule