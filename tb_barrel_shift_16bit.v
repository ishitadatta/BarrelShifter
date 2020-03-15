`timescale 100 ns / 100 ps
module tb_barrel_shift_16bit;
  reg [15:0] in;
  reg [3:0] ctrl;
  wire [15:0] out; 
  initial begin $dumpfile("tb_project.vcd"); 
 $dumpvars(0,tb_barrel_shift_16bit); 
 end
barrel_shift_16bit bs(.in(in), .ctrl(ctrl), .out(out));
  
initial 
 begin
     $display($time, " << Starting the Simulation >>");    //Monitor display
     /*   in=16'd000; ctrl=4'd0; //no shift
    #10 in=16'd128; ctrl=4'd1; //shift by 1 bit
    #10 in=16'd128; ctrl=4'd2; //shift 2 bits
    #10 in=16'd128; ctrl=4'd4; //shift 4 bits
    #10 in=16'd255; ctrl=4'd7; //shift by 7 bits
    #10 in=16'd255; ctrl=4'd8; //shift by 8 bits
    #10 in=16'd511; ctrl=4'd15;//shift by 15 bits*/
#10 in=16'd32768; ctrl=4'd0; //shift 1 bits;
#10 in=16'd32768; ctrl=4'd1; //shift 2 bits;
#10 in=16'd32768; ctrl=4'd2; //shift 3 bits;
#10 in=16'd32768; ctrl=4'd3; //shift 4 bits;
#10 in=16'd32768; ctrl=4'd4; //shift 5 bits;
#10 in=16'd32768; ctrl=4'd5; //shift 6 bits;
#10 in=16'd32768; ctrl=4'd6; //shift 7 bits;
#10 in=16'd32768; ctrl=4'd7; //shift 8 bits;
#10 in=16'd32768; ctrl=4'd8; //shift 9 bits;
#10 in=16'd32768; ctrl=4'd9; //shift 10 bits;
#10 in=16'd32768; ctrl=4'd10; //shift 11 bits;
#10 in=16'd32768; ctrl=4'd11; //shift 12 bits;
#10 in=16'd32768; ctrl=4'd12; //shift 13 bits;
#10 in=16'd32768; ctrl=4'd13; //shift 14 bits;
#10 in=16'd32768; ctrl=4'd14; //shift 15 bits;
#10 in=16'd32768; ctrl=4'd15; //shift 16 bits;

  end
    initial begin
      $monitor("Input=%d, Control=%d, Output=%d",in,ctrl,out);    // this stament is used for direct display
    end
endmodule