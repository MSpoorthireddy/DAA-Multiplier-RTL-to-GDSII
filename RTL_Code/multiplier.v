module daa_multiplier (
    input clk,
    input reset,
    input [7:0] A,
    input [7:0] B,
    output reg [15:0] result
);
    integer i;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            result <= 16'b0;
        end else begin
            result <= 16'b0;  // reset result at every clock
            for (i = 0; i < 8; i = i + 1) begin
                if (B[i])
                    result <= result + (A << i);
            end
        end
    end
endmodule
