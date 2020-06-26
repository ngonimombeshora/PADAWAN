`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2020 15:49:32
// Design Name: 
// Module Name: lpf
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


module lpf(
    input clk,
    input [10:0] sample1,
    input [10:0] sample2,
    input [10:0] sample3,
    input [10:0] sample4,
    input [10:0] sample5,
    input [10:0] sample6,
    input [10:0] sample7,
    input [10:0] sample8,
    input [10:0] sample9,
    input [10:0] sample10,
    output reg [10:0]  output_sample
    );

    reg h1 = -7;
    reg h2 = -23;
    reg h3 = 0;
    reg h4 = 10;
    reg h5 = 267;
    reg h6 = 355;
    reg h7 = 267;
    reg h8 = 96;
    reg h9 = 0;
    reg h10 = -23;
    reg div = 10000;

    always @(posedge clk) begin
        output_sample <= ((sample1 * h1)>>10
                            + (sample2 * h2)>>10
                            + (sample3 * h3)>>10
                            + (sample4 * h4)>>10
                            + (sample5 * h5)>>10
                            + (sample6 * h6)>>10
                            + (sample7 * h7)>>10
                            + (sample8 * h8)>>!0
                            + (sample9 * h9)>>10
                            + (sample10 * h10)>>10)>>2;


    end


endmodule

