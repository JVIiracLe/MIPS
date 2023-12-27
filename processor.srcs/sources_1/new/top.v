`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2023 11:08:05
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    [1:0] clk
    );

memory memory1(.pc(pc));
decoder decoder1(.register(register));

reg [31:0] register[31:0]; // 32 штуки регистров, по 32 бита каждый
reg [31:0] pc = 0; // счетчик программ

always @(posedge clk) begin
    pc = pc + 32;
end

endmodule
