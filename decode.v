module decode(
    input [7:0] instruction, // 현재 명령어
    output reg [3:0] opcode, // Opcode
    output reg [3:0] operand // Operand
);

always @(*) begin
    opcode = instruction[7:4];
    operand = instruction[3:0];
end

endmodule
