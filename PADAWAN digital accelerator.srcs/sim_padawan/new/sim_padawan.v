`timescale 1ns/1ps

module sound_test();
    
    //inputs
   reg CLK100MHZ;
   reg vauxp2;
   reg vauxn2;
   reg vauxp3;
   reg vauxn3;
   reg vauxp10;
   reg vauxn10;
   reg vauxp11;
   reg vauxn11;
   reg vp_in;
   reg vn_in;
   reg [1:0] sw;
   
   // outputs
   wire [15:0] LED;
   wire [7:0] an;   //what if we want output to be pwm_aux_out 
   wire dp;
   wire [6:0] seg; 
   wire AUD_PWM;
   wire AUD_SD;


   //variables of interest
   
   
   
   //UUT
   top XADCdemo(.CLK100MHZ(CLK100MHZ), .vauxp2(vauxp2), .vauxn2(vauxn2), .vauxp3(vauxp3)
                ,.vauxn3(vauxn3), .vauxp10(vauxp10), .vauxn10(vauxn10), .vauxp11(vauxp11)
                ,.vauxn11(vauxn11), .vp_in(vp_in), .vn_in(vn_in), .sw(sw), .LED(LED)
                ,.an(an), .dp(dp), .seg(seg) , .AUD_PWM(AUD_PWM), .AUD_SD(AUD_SD));
                
    
    initial begin
        CLK100MHZ = 0;
        vauxp2 = 0;
        vauxn2 = 0;
    end

endmodule