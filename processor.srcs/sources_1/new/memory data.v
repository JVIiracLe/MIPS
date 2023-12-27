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
    input [31:0] rs, [15:0] imm, // дл€ командд rw sw значени€ регистра и константы
    output [31:0] data // на выход полученное значение из €чейки пам€ти
    );

reg [31:0] data_memory[63:0]; // пам€ть данных размером 32 ьита, в количестве 64 штук

assign data = data_memory[rs + imm];

endmodule

//-------------------------------------------------------------------------------
module datamem_plain (input clk,
    input we, input [31:0] addr,
    input [31:0] wd,
    output [31:0] rd);

    // массив пам€ти данных
    reg [31:0] RAM [63:0];

    // запись данных в RAM если флаг we (write enabled) равен '1'
    always @(posedge clk)
        if(we) RAM[addr[31:2]] <= wd;

    // чтение данных из RAM
    // выравнивание по словам (word aligned) - поделить адрес addr на 4
    // (просто отбросить 2 последних бита)
    assign rd = RAM[addr[31:2]];
endmodule