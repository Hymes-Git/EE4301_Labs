`timescale 1ns / 1ps

module MovingText(   
    output reg [3:0] leftAnode,
    output reg [3:0] rightAnode,
    output reg [7:0] leftCathode,
    output reg [7:0] rightCathode,
    input clk,
    input [10:0] sw
);

    reg[7:0] mem [0:23];

    reg [4:0] numCharactersStored;
    reg [4:0] scrollIndex;
    
    reg displayState;
    reg modifyState;
    reg storeState;
    reg resetState;
    
    reg [7:0] displayCharacters [0:3];
    
    reg [1:0] digit;
    
    wire displayClock;
    wire scrollClock;
    
                
    reg[0:4] iterator;
    
    reg [7:0] statusConversion [3:0];
    
    initial begin
        
        numCharactersStored = 5'b00000;
        
        leftAnode = 4'b1110;
        
        digit = 2'b00;
        statusConversion[0] = 8'b00000000; // display state no LEDs on
        statusConversion[1] = 8'b00111000; // modify state "L" 
        statusConversion[2] = 8'b01011100; // store state "o"
        statusConversion[3] = 8'b01010000; // reset state "r"
    
    end 
    
    always @ (posedge clk) begin
    //always @ (posedge scrollClock) begin
    
        if (sw[10] && sw[9] && !sw[8]) begin       
            displayState <= 1'b0;
            modifyState <= 1'b1;
            storeState <= 1'b0;
            resetState <= 1'b0;        
        end
        
        else if (!sw[10] && sw[9] && !sw[8]) begin
            displayState <= 1'b0;
            modifyState <= 1'b0;
            storeState <= 1'b0;
            resetState <= 1'b1;                
        end
        
        else if (sw[10] && sw[9] && sw[8]) begin
//            displayState <= 1'b0;
//            modifyState <= 1'b0;
//            storeState <= 1'b1;
//            resetState <= 1'b0;   
        end    
        
        else begin
            displayState <= 1'b1;
            modifyState <= 1'b0;
            storeState <= 1'b0;
            resetState <= 1'b0;        
        end        
    
        if (resetState) begin
        
            for (iterator = 0; iterator < 24; iterator = iterator + 1) begin
                            mem[iterator] <= 8'b00000000;        
            end   
                 
            displayCharacters[0] = 8'b00000000;
            displayCharacters[1] = 8'b00000000;
            displayCharacters[2] = 8'b00000000;
            displayCharacters[3] = 8'b00000000;
        end
    
        if (modifyState) begin
            displayCharacters[3] <= sw[7:0];
            displayCharacters[0] <= 8'b00000000;
            displayCharacters[1] <= 8'b00000000;
            displayCharacters[2] <= 8'b00000000;
            
            if (sw[10] && sw[9] && sw[8]) begin
                mem[numCharactersStored] <= sw[7:0];
                numCharactersStored = numCharactersStored + 1;
                displayState <= 1'b0;
                modifyState <= 1'b0;
                storeState <= 1'b1;
                resetState <= 1'b0;                
            end
        
        end
    
        if (displayState) begin
        
            if (numCharactersStored < 5) begin
                displayCharacters[0] = mem[0];
                displayCharacters[1] = mem[1];
                displayCharacters[2] = mem[2];
                displayCharacters[3] = mem[3];           
            end
            
            else begin
                if (scrollIndex < numCharactersStored) begin
                    scrollIndex <= scrollIndex + 1;
                end
                else begin
                    scrollIndex <= 5'b00000;       
                end
                
                    displayCharacters[0] = mem[scrollIndex];
                    displayCharacters[1] = mem[scrollIndex + 1];
                    displayCharacters[2] = mem[scrollIndex + 2];
                    displayCharacters[3] = mem[scrollIndex + 3];
                
            end

        end
            
    end
    
    
    always @ (posedge clk) begin
    //always @ (posedge displayClock) begin
        
        // left state
        if (displayState) begin
            leftCathode <= ~statusConversion[0];
        end
        
        if (modifyState) begin
            leftCathode <= ~statusConversion[1];
        end
        
        if (storeState) begin
            leftCathode <= ~statusConversion[2];
        end
    
        if (resetState) begin
            leftCathode <= ~statusConversion[3];
        end
        
        if (digit < 3) begin
            digit <= digit + 1;
        end
        else begin
            digit <= 0;
        end
        
        // most left character
        if (digit == 2'b00) begin
            rightAnode <= 4'b0111;
            rightCathode <= ~displayCharacters[0];
        end
        
        // 
        else if (digit == 2'b01) begin
            rightAnode <= 4'b1011;
            rightCathode <= ~displayCharacters[1];        
        end
        
        else if (digit == 2'b10) begin
            rightAnode <= 4'b1101;
            rightCathode <= ~displayCharacters[2];        
        end
        
        // most right character
        else begin
            rightAnode <= 4'b1110;
            rightCathode <= ~displayCharacters[3];        
        end
       
    
    end
       
    clock_divider #(20) CDIV2 (clk, displayClock);
    clock_divider #(50) CDIV3 (clk, scrollClock);


endmodule
