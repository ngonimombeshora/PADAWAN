`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2020 17:21:43
// Design Name: 
// Module Name: distortion
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


module distortion(
    input ready,    
    input [10:0] sample_in,
    output reg [10:0] sample_out
    );


    always @(posedge ready) begin
        if (sample_in > 5000) begin
            sample_out<= sample_in - 10000;
        end
        else begin 
            sample_out<=sample_in;
        end

    end


endmodule