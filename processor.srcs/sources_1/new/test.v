module test(
    input [1:0] clk
    );

memory memory1(.pc(pc));


reg [31:0] pc = 0; // счетчик команд

always @(posedge clk) begin
    pc = pc + 1;
end

endmodule
