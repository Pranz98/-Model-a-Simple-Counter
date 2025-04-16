module counter (
    input logic [4:0] data,
    input logic load,
    input logic enable,
    input logic clk,
    input logic rst_,
    output logic [4:0] count
);

    always_ff @(posedge clk or negedge rst_) begin
        if (!rst_) begin
            count <= 5'b0;
        end else if (load) begin
            count <= data;
        end else if (enable) begin
            count <= count + 1;
        end
    end

endmodule

