`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2023 09:59:35
// Design Name: 
// Module Name: memory data
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


module memory_data(
    input [1:0] clk,
    input [31:0] rs, [15:0] imm, // ��� ������� rw sw �������� �������� � ���������
    output [31:0] data // �� ����� ���������� �������� �� ������ ������
    );

reg [31:0] data_memory[63:0]; // ������ ������ �������� 32 ����, � ���������� 64 ����

assign data = data_memory[rs + imm];

endmodule

//-------------------------------------------------------------------------------
module datamem_plain (input clk,
    input we, input [31:0] addr,
    input [31:0] wd,
    output [31:0] rd);

    // ������ ������ ������
    reg [31:0] RAM [63:0];

    // ������ ������ � RAM ���� ���� we (write enabled) ����� '1'
    always @(posedge clk)
        if(we) RAM[addr[31:2]] <= wd;

    // ������ ������ �� RAM
    // ������������ �� ������ (word aligned) - �������� ����� addr �� 4
    // (������ ��������� 2 ��������� ����)
    assign rd = RAM[addr[31:2]];
endmodule