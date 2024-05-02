module fetch(
    input [7:0] memory[0:255], // 8비트 메모리
    input [7:0] pc, // 프로그램 카운터
    output reg [7:0] instruction // 현재 명령어
);

always @(*) begin
    instruction = memory[pc];
end

endmodule
