`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 10:39:37 AM
// Design Name: 
// Module Name: Lab05_Top
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


module Lab05_Top(
    input clk,
    input PCIncrement,
    output [15:0] led
    );
    
    wire [31:0] instruction;
    wire [7:0] muxToPC;
    wire [7:0] PCValue;
    wire [7:0] PCAdd4;
    wire [7:0] PCBranchResult;
    wire BranchOrNot;
    wire Zero;
    wire [31:0] ImmediateOut;
    wire [31:0] ALUMuxOut;
    
    wire [31:0] regDataIn;
    wire [31:0] regReadData1;
    wire [31:0] regReadData2;
    
    wire [4:0] ALUOpCtrlOut;
    
    wire [31:0] ALUResult;
    
    wire [31:0] DataMemOut;
    
    wire Branch;
    wire MemRead;
    wire MemToReg;
    wire ALUOP1;
    wire ALUOP0;
    wire MemWrite;
    wire ALUSrc;
    wire RegWrite;
    
    wire [7:0] x6RegContents;
    
    assign led = {Branch, MemRead, MemToReg, ALUOP1, ALUOP0, MemWrite, ALUSrc, RegWrite, x6RegContents};
    
    ProgramCounter PC (PCIncrement, muxToPC, PCValue);
    Multiplexor  #(.n(8)) PCMux (muxToPC, PCAdd4, PCBranchResult, BranchOrNot);
    and doBranch (BranchOrNot, Branch, Zero);
    //Adder branchAdder (ImmediateOut, PCValue, PCBranchResult);
    Adder branchAdder (ImmediateOut, PCAdd4, PCBranchResult);
    Adder PCAdder (4, PCValue, PCAdd4);
    instructionMemory iMem (PCValue, instruction);
    Registers regs (PCIncrement, instruction[19:15], instruction [24:20], instruction [11:7], regDataIn, RegWrite, regReadData1, regReadData2, x6RegContents);
    ImmediateGenerator immGen (instruction, ImmediateOut);
    Multiplexor #(.n(32)) ALUInMux (ALUMuxOut, regReadData2, ImmediateOut, ALUSrc);
    Controller control (instruction[6:0], Branch, MemRead, MemToReg, ALUOP1, ALUOP0, MemWrite, ALUSrc, RegWrite);
    ALU_Controller AluCtrl ({ALUOP1, ALUOP0}, instruction[14:12], instruction[30], ALUOpCtrlOut);
    ALU_Unit alu (ALUOpCtrlOut, regReadData1, ALUMuxOut, Zero, ALUResult);
    DataMemory dataMem (PCIncrement, ALUResult, regReadData2, MemWrite, DataMemOut);
    Multiplexor #(.n(32)) muxToRegister (regDataIn, ALUResult, DataMemOut, MemToReg);
    
endmodule

module Controller (
    input [6:0] opcode,
    output reg Branch,
    output reg MemRead,
    output reg MemToReg,
    output reg ALUOp1,
    output reg ALUOp0,
    output reg MemWrite,
    output reg ALUSrc,
    output reg RegWrite  
);
    always @ (*) begin
        // add instruction
        if (opcode == 7'b0110011) begin
            Branch <= 0;
            MemRead <= 0;
            MemToReg <= 0;
            ALUOp1 <= 1;
            ALUOp0 <= 0;
            MemWrite <= 0;
            ALUSrc <= 0;
            RegWrite <= 1;         
        end
        // LW Instruction
        else if (opcode == 7'b0000011) begin
            Branch <= 0;
            MemRead <= 1;
            MemToReg <= 1;
            ALUOp1 <= 0;
            ALUOp0 <= 0;
            MemWrite <= 0;
            ALUSrc <= 1;
            RegWrite <= 1;       
        end
        // SW Instructon
        else if (opcode == 7'b0100011) begin
            Branch <= 0;
            MemRead <= 0;
            MemToReg <= 0;
            ALUOp1 <= 0;
            ALUOp0 <= 0;
            MemWrite <= 1;
            ALUSrc <= 1;
            RegWrite <= 0;
        end
        // BEQ Instruction
        else if (opcode == 7'b1100011) begin
            Branch <= 1;
            MemRead <= 0;
            MemToReg <= 0;
            ALUOp1 <= 0;
            ALUOp0 <= 1;
            MemWrite <= 0;
            ALUSrc <= 0;
            RegWrite <= 0;       
        end
        // JAL Instruction
        else if (opcode == 7'b1101111) begin
            Branch <= 1;
            MemRead <= 0;
            MemToReg <= 0;
            ALUOp1 <= 1;
            ALUOp0 <= 1;
            MemWrite <= 0;
            ALUSrc <= 0;
            RegWrite <= 0;         
        
        end
                
    end

endmodule

module Adder (
    input [n-1:0] in1,
    input [n-1:0] in2,
    output [n-1:0] sum
);

    parameter n = 8;

    assign sum = in1 + in2;

endmodule

module ProgramCounter (
    input pretendClock,
    input [7:0] newCounter,
    output [7:0] counterOut
);

    reg [7:0] programCounter;
    
    assign counterOut = programCounter;
    
    initial begin
        programCounter <= 0;
    end
    
    always @ (posedge pretendClock) begin
    
        programCounter <= newCounter;
    end

endmodule

module Multiplexor (
    output [n-1:0] out,
    input [n-1:0] in1,
    input [n-1:0] in2,
    input sel
);

    parameter n = 32;

    assign out = sel ? in2 : in1;

endmodule

module ImmediateGenerator (
    input [31:0] instruction,
    output reg [31:0] immediate
);

    always @ (*) begin

        if (instruction [6:0] == 7'b0110011) begin // R instruction
            immediate <= 0;
        end 
        else if (instruction [6:0] == 7'b0000011) begin // I Instruction
            immediate [31:12] <= 0;
            immediate [11:0] <= instruction [31:20];
        end
        else if (instruction [6:0] == 7'b0100011) begin // S instruction
            immediate [31:12] <= 0;
            immediate [11:5] <= instruction [31:25];
            immediate [4:0] <= instruction [11:7];
        end
        else if (instruction [6:0] == 7'b1100011) begin // SB instruction
            immediate [31:13] <= {19{instruction[31]}};
            immediate [12] <= instruction[31];
            immediate [11] <= instruction[7];
            immediate [10:5] <= instruction [30:25];
            immediate [4:1] <= instruction [11:8];
            immediate [0] <= 0;
        end
        else if (instruction [6:0] == 7'b1101111) begin // J instruction
            immediate [31:21] <= {11{instruction[31]}};;
            immediate [20] <= instruction[31];
            immediate [19:12] <= instruction[19:12];
            immediate [11] <= instruction [20];
            immediate [10:1] <= instruction [30:21];
            immediate [0] <= 0;
        end
    
    end

endmodule

module ALU_Controller (
    input [1:0] ALUOpIn,
    input [2:0] Func3,
    input Func7,
    output reg [4:0] ALUOpOut
);

    always @ (*) begin
    
        if (ALUOpIn == 0) begin // I or S Instruction
        
            if (Func3 == 3'b010) begin // LW or SW instruction
                ALUOpOut <= 0;
            end
        
        end
        
        else if (ALUOpIn == 1) begin // B Instruction
        
            if (Func3 == 3'b000) begin // BEQ Instruction
                ALUOpOut <= 1;
            end
        
        end
        
        else if (ALUOpIn == 2) begin // R Instruction
        
            if (Func3 == 3'b000 && Func7 == 1'b0) begin // add instruction
                ALUOpOut <= 0;
            end
            
            else if (Func3 == 3'b000 && Func7 == 1'b1) begin // subtract instruction
                ALUOpOut <= 1;
            end
        
        end
        
        else if (ALUOpIn == 3) begin // J Instruction
            ALUOpOut <= 2;   
        end
    
    end
    
endmodule

module ALU_Unit (
    input [4:0] ALUOP,
    input [31:0] ALUIn1,
    input [31:0] ALUIn2,
    output reg zero,
    output reg [31:0] ALUOut
);

    always @ (*) begin
    
        if (ALUOP == 0) begin
            ALUOut <= ALUIn1 + ALUIn2;
            zero <= 0;
        end
       
        else if (ALUOP == 1) begin
            ALUOut <= ALUIn1 - ALUIn2;
           
            if (ALUOut == 0) begin
                zero <= 1;
            end
            
            else begin
                zero <= 0;
            end
           
        end
       
       else if (ALUOP == 2) begin
           zero <= 1;
       end
    
    end

    

endmodule

module Registers (
    input pretendClock,
    input [4:0] readRegister1,
    input [4:0] readRegister2,
    input [4:0] writeRegister,
    input [31:0] writeData,
    input regWrite, // Signal to update register
    output [31:0] readData1,
    output [31:0] readData2,
    output [7:0] x6RegContents 
);

    reg [31:0] registers [0:31];
    
    assign readData1 = registers[readRegister1];
    assign readData2 = registers[readRegister2];
    
    assign x6RegContents = registers[6];
    
    integer i;
    initial begin
    
        for (i = 0; i < 32; i = i + 1) begin
            registers[i] <= 0;
        end    
    
    end
    
    always @ (posedge pretendClock) begin     
        if (regWrite) begin
            registers[writeRegister] = writeData;
        end   
    end
    
endmodule

module DataMemory (
    input pretendClock,
    input [7:0] address,
    input [31:0] writeData,
    input writeMem,
    output [31:0] readData
);

    reg [7:0] dataMem [0:255];   
//    assign readData[7:0] = dataMem[address];
//    assign readData[15:8] = dataMem[address+1];
//    assign readData[23:16] = dataMem[address+2];
//    assign readData[31:24] = dataMem[address+3];
    
    assign readData = {dataMem[address+3], dataMem[address+2], dataMem[address+1], dataMem[address]};
    
    integer i;
    
    initial begin
    
        for (i = 0; i < 256; i = i + 1) begin
            dataMem[i] <= 0;
        end
        
        dataMem[128] <= 3;
        dataMem[132] <= 255;
        dataMem[133] <= 255;
        dataMem[134] <= 255;
        dataMem[135] <= 255;
    
    end
    
    always @ (posedge pretendClock) begin   
        if (writeMem) begin
            dataMem[address] = writeData[7:0];
            dataMem[address+1] = writeData[15:8];        
            dataMem[address+2] = writeData[23:16];
            dataMem[address+3] = writeData[31:24];
        end
    end

endmodule

module instructionMemory (
    input [7:0] readMemory,
    output [31:0] instruction  
);

    reg [7:0] instructionMem [0:255];    
    assign instruction[7:0] = instructionMem[readMemory];
    assign instruction[15:8] = instructionMem[readMemory+1];
    assign instruction[23:16] = instructionMem[readMemory+2];
    assign instruction[31:24] = instructionMem[readMemory+3];
    
    integer i;
    
    initial begin
    
        for (i = 0; i < 256; i = i + 1) begin
            instructionMem[i] <= 0;
        end
        
        {instructionMem[3], instructionMem[2], instructionMem[1], instructionMem[0]} <= 32'h08002303; // lw
        {instructionMem[7], instructionMem[6], instructionMem[5], instructionMem[4]} <= 32'h08402283; // lw
        {instructionMem[11], instructionMem[10], instructionMem[9], instructionMem[8]} <= 32'h00530333; // add
        {instructionMem[15], instructionMem[14], instructionMem[13], instructionMem[12]} <= 32'h00600263; //beq
        {instructionMem[19], instructionMem[18], instructionMem[17], instructionMem[16]} <= 32'hff5ff06f; // jal
        {instructionMem[23], instructionMem[22], instructionMem[21], instructionMem[20]} <= 32'h08032423; //sw
    end

endmodule