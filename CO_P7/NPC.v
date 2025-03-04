`timescale 1ns / 1ps
`include "head.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:47:10 11/01/2023 
// Design Name: 
// Module Name:    NPC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module NPC(
    input Req,
    input [2:0] NPCOp,
    input [15:0] Imm16,
    input [25:0] Imm26,
    input [31:0] Addr,
    input [31:0] EPC,
    input [31:0] pc_F,
    input [31:0] pc_D,
    output [31:0] npc,
    output [31:0] pc4,
    output [4:0] EXCode_F
    );
    reg [31:0] next_pc;
    initial begin
        next_pc <= 32'h0000_3000;
    end

    always @(*) begin
        case(NPCOp)
            `NPC_pc4:
                next_pc = pc_F + 4;
            
            `NPC_Imm16:
                next_pc = pc_F + {{14{Imm16[15]}}, Imm16, 2'b00};

            `NPC_Imm26:
                next_pc = {pc_D[31:28], Imm26, 2'b00};

            `NPC_ra:
                next_pc = Addr;

            `NPC_EPC:
                next_pc = EPC;

            default:
                next_pc = 32'h0000_3000;
        endcase
        
        if (Req)
            next_pc = 32'h0000_4180;
    end

    assign npc = next_pc;
    assign pc4 = pc_F + 4;
    
    assign EXCode_F =   (pc_F[1:0] != 2'b00) ? `EXC_ADEL :
                        (pc_F < `INSMEM_LO || pc_F > `INSMEM_HI) ? `EXC_ADEL : 5'd0;
endmodule
