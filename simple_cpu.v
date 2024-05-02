module simple_cpu(
    input wire clk,
    input wire reset,
    input wire [7:0] memory[0:255], // 8비트 메모리
    output reg [3:0] result // 실행 결과
);

reg [7:0] pc;
wire [7:0] instruction;
wire [3:0] opcode, operand;

fetch fetch_inst(.memory(memory), .pc(pc), .instruction(instruction));
decode decode_inst(.instruction(instruction), .opcode(opcode), .operand(operand));
execute execute_inst(.opcode(opcode), .operand(operand), .result(result));

always @(posedge clk) begin
    if (reset) begin
        pc <= 8'd0;
    end else begin
        pc <= pc + 1;
    end
end

endmodule
