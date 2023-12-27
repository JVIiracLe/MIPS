`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2023 08:44:04
// Design Name: 
// Module Name: registers
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


module registers(
    // ����, ������� ��������� "���", "������"
    input [1:0] clk, [4:0] rt_in, rs_in, // ��� ���������� ������ �� ���� ���������
    // �������� ���� ���������
    output [31:0] rt, rs, // �� ����� ������ �� ���� ���������
    
    // ���� ���������� ������, ������ ��������, ���� ����� �������� ������ � ���� ������
    input we, [4:0] rd_in, [31:0] data
    );

reg [31:0] registers[31:0]; // 32 ����� ���������, �� 32 ���� ������

assign rt = registers[rt_in];
assign rs = registers[rs_in];
// assign rd = registers[rd_in];

always @(*) begin
    if(we) registers[rd_in] <= data;
end

endmodule
