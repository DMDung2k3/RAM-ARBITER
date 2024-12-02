`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2023 10:26:16 AM
// Design Name: 
// Module Name: RAM_verilog_v1
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


module RAM #(parameter G_ADDR_WIDTH = 4, parameter G_DATA_WIDTH = 8)
  (input CLOCK, RST_N, RD_EN, WR_EN,
   input [G_ADDR_WIDTH-1:0] RD_ADDR, WR_ADDR,
   input [G_DATA_WIDTH-1:0] WR_DATA,
   output reg [G_DATA_WIDTH-1:0] RD_DATA);

  localparam RAM_DEPTH = 2**G_ADDR_WIDTH;
  reg [G_DATA_WIDTH-1:0] MEMORY [0:RAM_DEPTH-1];
  integer count = 0;
  reg reset_done;

  always @(posedge CLOCK) begin
    // Reset Process
    if (!RST_N)
      reset_done <= 1'b1;
    else begin
      // Initialization Process
      if ((count < (2**G_ADDR_WIDTH)) && (reset_done == 1'b1)) begin
        MEMORY[count] <= 0;
        count <= count + 1;
      end
      else begin
        count <= 0;
        reset_done <= 1'b0;
      end

      // Main Process (Read and Write)
      if (!reset_done) begin
        // Write Process
        if (WR_EN)
          MEMORY[WR_ADDR] <= WR_DATA;

        // Read Process
        if (RD_EN)
          RD_DATA <= MEMORY[RD_ADDR];
      end
    end
  end
endmodule


