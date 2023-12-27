`timescale 1ns / 1ps

/*
module memory(
    //input [31:0] instruction_memory[511:0], // ������ ���������� �������� 32 ����, � ���������� 512 ����
    input [31:0] pc,
    output [31:0] instruction,
    output [31:0] data_read
    );

decoder decoder1(.instruction(instruction), .data(data));

reg [31:0] instruction_memory[511:0]; // ������ ���������� �������� 32 ����, � ���������� 512 ����
reg [31:0] data_memory[511:0]; // ������ ������ �������� 32 ����, � ���������� 512 ����
reg [31:0] instruction; // ������� ����������

always @(pc) begin
    assign insruction = instruction_memory[pc]; // ������� ������� ���������� ������� ������
    assign data = data_memory[pc];
end
endmodule
*/

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2023 08:47:02
// Design Name: 
// Module Name: memory
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


module memory_instructions(
    input [31:0] pc, [1:0] clk,
    output [31:0] current_instruction // ������� ����������
);

reg [31:0] instruction_memory[63:0]; // ������ ���������� �������� 32 ����, � ���������� 512 ����

always @(pc) begin
    current_instruction <= instruction_memory[pc]; // � ����������� �� pc ���������� ������� ����������
end

endmodule
