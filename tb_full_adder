module full_adder_test;

    // Declare inputs and outputs
    reg a, b, cin;
    wire sum, cout;

    // Instantiate the full_adder module
    full_adder dut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Stimulus
    initial begin
        $monitor("a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);

        // Test case 1: 0 + 0 + 0 = 0 (carry-out 0)
        a = 1'b0; b = 1'b0; cin = 1'b0;
        #100;

        // Test case 2: 1 + 0 + 0 = 1 (carry-out 0)
        a = 1'b1; b = 1'b0; cin = 1'b0;
        #100;

        // Test case 3: 1 + 1 + 0 = 0 (carry-out 1)
        a = 1'b1; b = 1'b1; cin = 1'b0;
        #100;

        // Test case 4: 1 + 1 + 1 = 1 (carry-out 1)
        a = 1'b1; b = 1'b1; cin = 1'b1;
        #100;

        // Test case 5: 0 + 1 + 1 = 1 (carry-out 0)
        a = 1'b0; b = 1'b1; cin = 1'b1;
        #100;

        // Test case 6: 0 + 0 + 1 = 1 (carry-out 0)
        a = 1'b0; b = 1'b0; cin = 1'b1;
        #100;

        // End simulation
        $finish;
    end

endmodule
