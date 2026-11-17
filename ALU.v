`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2026 00:40:14
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
    input [3:0] a,b,
    input [2:0] sel,
    output reg [3:0] y,
    output reg c
    );
reg [4:0] temp;
    
always @(*)begin 
    
    y = 4'b0000;
    c = 1'b0;
    temp = 5'b00000;
    
    case(sel)
        3'b000:begin
            temp = {1'b0,a} + {1'b0,b};
            y = temp[3:0];
            c = temp[4];
        end
        
        3'b001:begin
            temp = {1'b0,a}-{1'b0,b};
            y = temp[3:0];
            c = temp[4];
        end
        
        3'b010: y = a&b;
        
        3'b011: y = a|b;
        
        3'b100: y = a^b;
        
        3'b101: y = ~a;
        
        3'b110: begin
            temp = {1'b0,a}+5'b00001;
            y = temp[3:0];
            c = temp[4];
        end
        
        3'b111: y = b;
        
        default: y = 4'b0000;
        
    endcase
end
endmodule
