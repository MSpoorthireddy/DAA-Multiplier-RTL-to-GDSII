module testbench;

    reg clk;
    reg reset;
    reg [7:0] A;
    reg [7:0] B;
    wire [15:0] result;

    daa_multiplier uut (
        .clk(clk),
        .reset(reset),
        .A(A),
        .B(B),
        .result(result)
    );

    initial begin
        clk = 0;
        reset = 1;
        A = 0;
        B = 0;
        #15 reset = 0;
        
        // Test case 1
        A = 8'h0F; // 15 decimal
        B = 8'h03; // 3 decimal
        #20;
        $display("Test 1 result = %d", result);  // Expected 45

        // Test case 2
        A = 8'hFF; // 255 decimal
        B = 8'h02; // 2 decimal
        #20;
        $display("Test 2 result = %d", result);  // Expected 510

        // Add more test cases...

        #10 $finish;
    end

    always #5 clk = ~clk;  // 10 time unit clock period

endmodule
