`timescale 1ns / 1ps

module tb_RAM;

  // Parameters
  parameter G_ADDR_WIDTH = 4;
  parameter G_DATA_WIDTH = 8;

  // Inputs
  reg CLOCK;
  reg RST_N;
  reg RD_EN;
  reg WR_EN;
  reg [G_ADDR_WIDTH-1:0] RD_ADDR;
  reg [G_ADDR_WIDTH-1:0] WR_ADDR;
  reg [G_DATA_WIDTH-1:0] WR_DATA;

  // Outputs
  wire [G_DATA_WIDTH-1:0] RD_DATA;

  // Instantiate the RAM module
  RAM #(G_ADDR_WIDTH, G_DATA_WIDTH) uut (
    .CLOCK(CLOCK),
    .RST_N(RST_N),
    .RD_EN(RD_EN),
    .WR_EN(WR_EN),
    .RD_ADDR(RD_ADDR),
    .WR_ADDR(WR_ADDR),
    .WR_DATA(WR_DATA),
    .RD_DATA(RD_DATA)
  );

  // Clock generation process
  always #5 CLOCK = ~CLOCK;

  // Initial stimulus
  initial begin
    // Initialize inputs
    RST_N = 1;
    CLOCK = 0;
    RD_EN = 0;
    WR_EN = 0;
    RD_ADDR = 0;
    WR_ADDR = 0;
    WR_DATA = 0;

    // Apply reset for a short duration
    //#50 RST_N = 0;
    #50 RST_N = 1;

     // Test Case 1: RAM Write Operation
    WR_EN = 1;
    RD_EN = 0;
    WR_ADDR = 4'b1101;
    WR_DATA = 8'b11100111;
    #100; 
    
    // Test Case 2: RAM Read Operation
    WR_EN = 0;
    RD_EN = 1;
    RD_ADDR = 4'b1101;
    #100;
    
    // Test Case 3: RAM Read & Write Operation
    WR_EN = 1;
    RD_EN = 1;
    RD_ADDR = 4'b1101; //1101 = d is address
    WR_ADDR = 4'b1011; //1011=b is address
    WR_DATA = 8'b10111001; // 10111001 = b9 is data
    #100;

    // Finish simulation
    $finish;
  end

endmodule
