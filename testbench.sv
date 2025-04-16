`timescale 1ns/1ps

module counter_test;

    logic [4:0] data;
    logic load;
    logic enable;
    logic clk;
    logic rst_;
    logic [4:0] count;

    // Instantiate the counter
    counter uut (
        .data(data),
        .load(load),
        .enable(enable),
        .clk(clk),
        .rst_(rst_),
        .count(count)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        // Initialize signals
        rst_ = 1;
        load = 0;
        enable = 0;
        data = 5'b0;

        // Apply reset
        rst_ = 0;
        #10;
        rst_ = 1;
        #10;

        // Load data
        load = 1;
        data = 5'b10101;
        #10;
        load = 0;

        // Enable counting
        enable = 1;
        #50;

        // Disable counting
        enable = 0;
        #10;

        // Load new data
        load = 1;
        data = 5'b01010;
        #10;
        load = 0;

        // Enable counting
        enable = 1;
        #50;

        // End simulation
        $stop;
    end

    // Monitor signals
    initial begin
        $monitor("time=%0t clk=%b rst_=%b load=%b enable=%b data=%b count=%b", 
                  $time, clk, rst_, load, enable, data, count);
    end

    // Dump waveform
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, counter_test);
    end

endmodule
