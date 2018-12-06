/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module compare_16bits_23 (
    input [5:0] alufn,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] out
  );
  
  
  
  always @* begin
    out[0+15-:16] = 1'h0;
    
    case (alufn[1+1-:2])
      2'h1: begin
        if (a == b) begin
          out[0+0-:1] = 1'h1;
        end
      end
      2'h2: begin
        if (a < b) begin
          out[0+0-:1] = 1'h1;
        end
      end
      2'h3: begin
        if (a < b | a == b) begin
          out[0+0-:1] = 1'h1;
        end
      end
      default: begin
        out[0+0-:1] = 1'h0;
      end
    endcase
  end
endmodule