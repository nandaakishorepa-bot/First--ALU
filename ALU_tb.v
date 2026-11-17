`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2026 23:58:30
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();

reg [3:0]a,b;
reg [2:0]sel;
wire [3:0]y;
wire c;

ALU uut(
    .a(a),
    .b(b),
    .sel(sel),
    .y(y),
    .c(c) );
integer i;
initial begin

a = 4'd8;
b = 4'd4;

for(i=0;i<8;i=i+1)begin
    sel = i[2:0];
    #10;
end
$finish;
end
endmodule
