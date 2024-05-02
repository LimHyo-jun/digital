module execution(
    input [3:0] opcode, // Opcode
    input [3:0] operand, // Operand
    output reg [3:0] result // 실행 결과
);

always @(*) begin
    case(opcode)
        4'b0000: result = operand; // ADD
        4'b0001: result = operand; // SUB
        4'b0010: result = operand; // AND
        4'b0011: result = operand; // OR
        default: result = 4'b0000; // 기타 명령은 0으로 초기화
    endcase
end

endmodule
