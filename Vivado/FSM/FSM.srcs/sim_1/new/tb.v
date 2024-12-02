`timescale 1ns/1ps

module testbench;

  // Parameters
  parameter G_ADDR_WIDTH = 4;
  parameter G_DATA_WIDTH = 8;
  parameter G_REGISTERED_DATA = 0;

  // Signals
  reg RST_N, CLOCK;
  reg RD_EN_C1, WR_EN_C1;
  reg [G_ADDR_WIDTH-1:0] RDADDR_C1, WRADDR_C1;
  reg [G_DATA_WIDTH-1:0] WRDATA_C1, DATAIN_C2;
  reg REQUEST_C2, RD_NOT_WRITE_C2;
  reg [G_ADDR_WIDTH-1:0] ADDR_C2;
  wire [G_DATA_WIDTH-1:0] RDDATA_C1, DATAOUT_C2;
  wire ACK_C2;
  wire RD_EN, WR_EN;
  wire [G_ADDR_WIDTH-1:0] WR_ADDR, RD_ADDR;
  wire [G_DATA_WIDTH-1:0] WR_DATA;
  wire [G_DATA_WIDTH-1:0] RD_DATA;

  // Instantiate FSM module
  FSM #(
    .G_ADDR_WIDTH(G_ADDR_WIDTH),
    .G_DATA_WIDTH(G_DATA_WIDTH),
    .G_REGISTERED_DATA(G_REGISTERED_DATA)
  ) dut (
    .RST_N(RST_N),
    .CLOCK(CLOCK),
    .RST_DONE(), // You may need to connect this output based on your design
    .RD_EN_C1(RD_EN_C1),
    .WR_EN_C1(WR_EN_C1),
    .RDADDR_C1(RDADDR_C1),
    .WRADDR_C1(WRADDR_C1),
    .WRDATA_C1(WRDATA_C1),
    .DATAIN_C2(DATAIN_C2),
    .REQUEST_C2(REQUEST_C2),
    .RD_NOT_WRITE_C2(RD_NOT_WRITE_C2),
    .ADDR_C2(ADDR_C2),
    .RDDATA_C1(RDDATA_C1),
    .DATAOUT_C2(DATAOUT_C2),
    .ACK_C2(ACK_C2),
    .RD_EN(RD_EN),
    .WR_EN(WR_EN),
    .WR_ADDR(WR_ADDR),
    .RD_ADDR(RD_ADDR),
    .WR_DATA(WR_DATA),
    .RD_DATA(RD_DATA)
  );

  // Clock generation
  initial begin
    CLOCK = 0;
    forever #5 CLOCK = ~CLOCK;
  end

  // Test stimulus
  initial begin
    // Initialize inputs
    RST_N = 0;
    RD_EN_C1 = 0;
    WR_EN_C1 = 0;
    RDADDR_C1 = 0;
    WRADDR_C1 = 0;
    WRDATA_C1 = 0;
    DATAIN_C2 = 0;
    REQUEST_C2 = 0;
    RD_NOT_WRITE_C2 = 0;
    ADDR_C2 = 0;

    // Release reset after some time
    #10 RST_N = 1;

    // Test case 1: Idle state
    #20;
    // Add more test cases as needed

    // Finish simulation
    #100 $finish;
  end

  // Add any necessary waveform dumping or other simulation configurations here

endmodule
