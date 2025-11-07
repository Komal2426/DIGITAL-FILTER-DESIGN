`timescale 1ns/1ps
module tb_task4_fir;
    reg clk;
    reg signed [7:0] x_in;
    wire signed [15:0] y_out;
    task4_fir uut (.clk(clk), .x_in(x_in), .y_out(y_out));
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        x_in = 8'sd1; #10;
        x_in = 8'sd2; #10;
        x_in = 8'sd3; #10;
        x_in = 8'sd4; #10;
        x_in = 8'sd0; #40;
        $stop;
    end
endmodule
