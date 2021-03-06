/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module multiplier_16bits_26 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] out
  );
  
  
  
  always @* begin
    
    case (alufn[0+5-:6])
      6'h02: begin
        out = $signed(a) * $signed(b);
      end
      6'h03: begin
        out = $signed(a) / $signed(b);
      end
      default: begin
        out = 1'h0;
      end
    endcase
  end
endmodule
