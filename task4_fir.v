module task4_fir #(
    parameter signed [7:0] H0 = 8'sd1,
    parameter signed [7:0] H1 = 8'sd2,
    parameter signed [7:0] H2 = 8'sd3,
    parameter signed [7:0] H3 = 8'sd4
) (
    input wire clk,
    input wire signed [7:0] x_in,
    output reg signed [15:0] y_out
);
    reg signed [7:0] x_reg0, x_reg1, x_reg2, x_reg3;
    reg signed [15:0] mult0, mult1, mult2, mult3;
    always @(posedge clk) begin
        x_reg3 <= x_reg2;
        x_reg2 <= x_reg1;
        x_reg1 <= x_reg0;
        x_reg0 <= x_in;
        mult0 <= H0 * x_reg0;
        mult1 <= H1 * x_reg1;
        mult2 <= H2 * x_reg2;
        mult3 <= H3 * x_reg3;
        y_out <= mult0 + mult1 + mult2 + mult3;
    end
endmodule
