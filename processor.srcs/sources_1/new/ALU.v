`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2023 13:34:45
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] rs, rt, [5:0] func, opcode, // �������� ���������, ������� ����� ����������� � ����������; ���� � �����
    input [15:0] imm, // ��������� ��� I
    input [31:0] pc, // ������� ���������� ��� ������� ��� ������ ��� ��� ����������
    input [31:0] data_from_mem, // �������� ������ ������ ������ ��� ������ I
    output [31:0] data // �� ����� ��������, ������� ������ � ���� ��������� ��� ������ � ������������ �������
    );

always @(*) begin
    // add 6'b100000
    // sub 6'b100010
    // and 6'b100100
    // or  6'b100101
    // slt 6'b101010
    // div 6'b011010
    if (func == 6'b100000) // add
    begin
        
    end
    else if
    
    
    // lw   6'b100011
    // sw   6'b101011
    // beq  6'b000100
    // bgtz 6'b000111
    // sb   6'b001010
    if (opcode == 6'b100011)
    begin
        data <= 
    end
end

endmodule
