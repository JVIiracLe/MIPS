`timescale 1ns / 1ps

/*
module decoder(
    input [31:0] instruction
    );


reg [31:0] register[31:0]; // 32 штуки регистров, по 32 бита каждый
always @(instruction) begin
    case (instruction[31:26])
        6'b000000: // type R
        begin
            case (instruction[5:0])
                6'b100000: assign register[instruction[15:11]] = register[instruction[25:21]] + register[instruction[20:16]]; // add
                6'b100010: assign register[instruction[15:11]] = register[instruction[25:21]] - register[instruction[20:16]]; // sub
                6'b100100: assign register[instruction[15:11]] = register[instruction[25:21]] & register[instruction[20:16]]; // and
                6'b100101: assign register[instruction[15:11]] = register[instruction[25:21]] | register[instruction[20:16]]; // or
                6'b101010: assign register[instruction[15:11]] = (register[instruction[25:21]] < register[instruction[20:16]]) ? 1 : 0; // slt
                6'b011010:  // div
            endcase
        end
        // все остальные - тип I
        6'b100011: assign register[instruction[25:21]] = data_memory[register[instruction[20:16]] + instruction[15:0]/4]; // lw
        6'b101011: assign data_memory[register[instruction[20:16]] + instruction[15:0]/4] = register[instruction[25:21]]; // sw
        6'b000100: assign pc = (register[instruction[25:21]] == register[instruction[20:16]]) ? instruction[15:0]; // beq
        6'b000111: assign pc = (register[instruction[25:21]] == register[instruction[20:16]]) ? instruction[15:0]; // bgtz
        6'b001010:  // sb
    endcase
end

endmodule

*/

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2023 12:30:53
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [1:0] clk, [31:0] current_instruction,
    output [4:0] rs, rt, rd, [5:0] func, opcode, // на выход индексы регистров, фанк и опкод для команд I и R
    output [15:0] imm // на выход константа в командах типа I
);

assign rs = current_instruction[25:21];
assign rt = current_instruction[20:16];

if (current_instruction[31:26] == 6'b000000) // type R
    begin
        assign rd = current_instruction[15:11];
        assign func = instruction[5:0];
        // add 6'b100000
        // sub 6'b100010
        // and 6'b100100
        // or  6'b100101
        // slt 6'b101010
        // div 6'b011010
    end
    else
    begin
        assign imm = current_instruction[15:0];
        assign opcode = current_instruction[31:26]; // все остальные - тип I
        // lw   6'b100011
        // sw   6'b101011
        // beq  6'b000100
        // bgtz 6'b000111
        // sb   6'b001010
    end
endmodule 
