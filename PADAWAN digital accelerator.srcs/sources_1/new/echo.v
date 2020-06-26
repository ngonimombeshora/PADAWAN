`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2020 14:16:50
// Design Name: 
// Module Name: chorus
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


module echo(
    input clk,
    input [10:0] current_sample,
    input [10:0] previous_sample,
    output reg [10:0] echo_out

    );
        
    
    always @(posedge clk) begin
        echo_out <= (current_sample + previous_sample)>>1;
    end
    
endmodule
