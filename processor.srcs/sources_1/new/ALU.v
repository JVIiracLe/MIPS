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
    input [31:0] rs, rt, [5:0] func, opcode, // значени€ регистров, которые будут участвовать в арифметике; фанк и опкод
    input [15:0] imm, // константа дл€ I
    input [31:0] pc, // счетчик инструкций дл€ прыжков или просто дл€ его увеличени€
    input [31:0] data_from_mem, // значение €чейки пам€ти данных дл€ команд I
    output [31:0] data // на выход значение, которое пойдет в блок регистров дл€ записи в определенный регистр
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
