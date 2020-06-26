`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2015 03:26:51 PM
// Design Name: 
// Module Name: // Project Name: 
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
 
///instantiate xadc
module XADCdemo(
   input CLK100MHZ,
   input vauxp2,
   input vauxn2,
   input vauxp3,
   input vauxn3,
   input vauxp10,
   input vauxn10,
   input vauxp11,
   input vauxn11,
   input vp_in,
   input vn_in,
   input [5:0] sw,
   output reg [15:0] LED,
   output [7:0] an,   //what if we want output to be pwm_aux_out 
   output dp,
   output [6:0] seg, 
    output AUD_PWM,
    output AUD_SD
 );
   

   wire enable;  
   wire ready;
   wire [15:0] data;   
   reg [6:0] Address_in;     
   reg [32:0] decimal;   
   reg [3:0] dig0;
   reg [3:0] dig1;
   reg [3:0] dig2;
   reg [3:0] dig3;
   reg [3:0] dig4;
   reg [3:0] dig5;
   reg [3:0] dig6;
   
   //--------------------
    reg [15:0] PWM;

  
  
   
   //xadc instantiation connect the eoc_out .den_in to get continuous conversion
   xadc_wiz_0  XLXI_7 (.daddr_in(Address_in), //addresses can be found in the artix 7 XADC user guide DRP register space
                     .dclk_in(CLK100MHZ), 
                     .den_in(enable), 
                     .di_in(0), 
                     .dwe_in(0), 
                     .busy_out(),                    
                     .vauxp2(vauxp2),
                     .vauxn2(vauxn2),
                     .vauxp3(vauxp3),
                     .vauxn3(vauxn3),
                     .vauxp10(vauxp10),
                     .vauxn10(vauxn10),
                     .vauxp11(vauxp11),
                     .vauxn11(vauxn11),
                     .vn_in(vn_in), 
                     .vp_in(vp_in), 
                     .alarm_out(), 
                     .do_out(data), 
                     .reset_in(0),
                     .eoc_out(enable),
                     .channel_out(),
                     .drdy_out(ready));
                     
         
    
      //led visual dmm              
      always @( posedge(CLK100MHZ))
      begin            
        if(ready == 1'b1)
        begin
          case (data[15:12])
            1:  LED <= 16'b11;
            2:  LED <= 16'b111;
            3:  LED <= 16'b1111;
            4:  LED <= 16'b11111;
            5:  LED <= 16'b111111;
            6:  LED <= 16'b1111111; 
            7:  LED <= 16'b11111111;
            8:  LED <= 16'b111111111;
            9:  LED <= 16'b1111111111;
            10: LED <= 16'b11111111111;
            11: LED <= 16'b111111111111;
            12: LED <= 16'b1111111111111;
            13: LED <= 16'b11111111111111;
            14: LED <= 16'b111111111111111;
            15: LED <= 16'b1111111111111111;                        
           default: LED <= 16'b1; 
           endcase
        end 

          
      end
      
     reg [32:0] count; 
     //binary to decimal conversion
      always @ (posedge(CLK100MHZ))
      begin
      
        if(count == 10000000)begin
        
        decimal = data >> 4;
        //looks nicer if our max value is 1V instead of .999755
        if(decimal >= 4093)
        begin
            dig0 = 0;
            dig1 = 0;
            dig2 = 0;
            dig3 = 0;
            dig4 = 0;
            dig5 = 0;
            dig6 = 1;
            count = 0;
        end
        else 
        begin
            decimal = decimal * 250000;
            decimal = decimal >> 10;
            
            
            dig0 = decimal % 10;
            decimal = decimal / 10;
            
            dig1 = decimal % 10;
            decimal = decimal / 10;
                   
            dig2 = decimal % 10;
            decimal = decimal / 10;
            
            dig3 = decimal % 10;
            decimal = decimal / 10;
            
            dig4 = decimal % 10;
            decimal = decimal / 10;
                   
            dig5 = decimal % 10;
            decimal = decimal / 10; 
            
            dig6 = decimal % 10;
            decimal = decimal / 10; 
            
            count = 0;
        end
       end
       
      count = count + 1;
               
      end
      
      always @(posedge(CLK100MHZ))
      begin
        case(sw)
        0: Address_in <= 8'h12;
        1: Address_in <= 8'h13;
        2: Address_in <= 8'h1a;
        3: Address_in <= 8'h1b;
        endcase
      
      
      end
      
   
      
      
      DigitToSeg segment1(.in1(dig0),
                         .in2(dig1),
                         .in3(dig2),
                         .in4(dig3),
                         .in5(dig4),
                         .in6(dig5),
                         .in7(dig6),
                         .in8(),
                         .mclk(CLK100MHZ),
                         .an(an),
                         .dp(dp),
                         .seg(seg));  
                         
 //---------------------------------------------------------------------------------------------------------------------
 
 // past samples
    reg [10:0] audio_reg;
    
    reg [10:0] p1 = 0;
    reg [10:0] p2 = 0;
    reg [10:0] p3 = 0;
    reg [10:0] p4 = 0;
    reg [10:0] p5 = 0;
    reg [10:0] p6 = 0;
    reg [10:0] p7 = 0;
    reg [10:0] p8 = 0;
    reg [10:0] p9 = 0;
    reg [10:0] p10 = 0;   
    reg [10:0] p11 = 0;
    reg [10:0] p12 = 0;
    reg [10:0] p13 = 0;
    reg [10:0] p14 = 0;
    reg [10:0] p15 = 0;
    reg [10:0] p16 = 0;
    reg [10:0] p17 = 0;
    reg [10:0] p18 = 0;
    reg [10:0] p19 = 0;
    reg [10:0] p20 = 0;
    reg [10:0] p21 = 0;  
    wire [10:0] f_data = 0;        
  
  
    
 lpf lpf(
    .clk(ready),
    .sample1(p1),
    .sample2(p2),
    .sample3(p3),
    .sample4(p4),
    .sample5(p5),
    .sample6(p6),
    .sample7(p7),
    .sample8(p8),
    .sample9(p9),
    .sample10(p10),
    .output_sample(f_data)
 );
 
 wire [10:0] d_data;
 wire [10:0] c_data;
 wire [10:0] e_data;
 
distortion distort(
    .ready(ready),
    .sample_in(data[15:5]),
    .sample_out(d_data)
    );
    
    
 chorus chorus(
    .clk(CLK100MHZ),
    .current_sample(audio_reg),
    .previous_sample(p10),
    .chorus_out(c_data)
    );   
    
echo echo(
    .clk(CLK100MHZ),
    .current_sample(audio_reg),
    .previous_sample(p21),
    .echo_out(e_data)
    );   
    
    


// Assign switches to effect attribute for state machine
    parameter DISTORTION_SW = 2;
    parameter CHORUS_SW = 3;
    parameter ECHO_SW = 4;
    parameter REVERB_SW = 5;
    
    // STATES FOR EFFECTS
    parameter BEGIN = 4'd3;
    parameter CHORUS = 4'd4;
    parameter DISTORTION = 4'd5;
    parameter ECHO = 4'd6;
    parameter REVERB = 4'd7;
    parameter OUTPUT = 4'd8;
        reg [3:0] next_state = BEGIN;

    
  always @ (posedge ready)
    begin
        case(next_state)
            BEGIN: begin //Buffer control
               if (ready==1) begin
                    audio_reg <= data[15:5];
                    p1 <= audio_reg;
                    p2 <= p1;
                    p3 <= p2;
                    p4 <= p3;
                    p5 <= p4;
                    p6 <= p5;
                    p7 <= p6;
                    p8 <= p7;
                    p9 <= p8;
                    p10 <= p9;
                    p10 <= p9;
                    p11 <= p10;
                    p12 <= p11;
                    p13 <= p12;
                    p14 <= p13;
                    p15 <= p14;
                    p16 <= p15;
                    p17 <= p16;
                    p18 <= p17;
                    p19 <= p18;
                    p20 <= p19;
                    p21 <= p20;
                end
                 next_state <= CHORUS;
            end

            CHORUS: begin //CHORUS 
                if (sw[CHORUS_SW]==1) begin
                    audio_reg <= c_data;    
                end
                next_state <= DISTORTION;
            end
            DISTORTION: begin          //DSTORTION
                if (sw[DISTORTION_SW]==1) begin 
                     audio_reg <= d_data;                                      
                end            
                next_state <= ECHO;
            end
            ECHO: begin           //ECHO
                if (sw[ECHO_SW]==1) begin
                end
                next_state <= REVERB;
            end
            REVERB: begin      //REVERB- not yet implemented
                if (sw[REVERB_SW]==1) begin
                
                end           
                next_state <= OUTPUT;
            end
            OUTPUT: begin  // output
                PWM <= audio_reg;   // triying instead of audio_reg
                next_state <= BEGIN;
            end
            default: next_state <= BEGIN;
        endcase
    end

    
    
//---------------------------------------------------------------------------------------------------------------------------------            
      assign AUD_SD = 1'b1;    
      // instanciate pwm
   pwm_module pwm(
        .clk(CLK100MHZ),
        .PWM_in(PWM),
        .PWM_out(AUD_PWM)
    );
endmodule
