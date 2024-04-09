module mux_2x1 (
    input wire sel,
    input wire data_0,
    input wire data_1,
    output reg output_data
);

always @(*)
begin
    case (sel)
        1'b0: output_data = data_0;
        1'b1: output_data = data_1;
        default: output_data = 1'bx; // 선택 비트가 정의되지 않은 경우 출력을 'x'로 설정
    endcase
end

endmodule
