module FSM #(
    parameter G_ADDR_WIDTH = 4,
    parameter G_DATA_WIDTH = 8,
    parameter G_REGISTERED_DATA = 0)
(
    input RST_N, CLOCK,
    output RST_DONE,
    input RD_EN_C1, WR_EN_C1,    // Read enable, write enable
    input [G_ADDR_WIDTH-1 : 0] RDADDR_C1, WRADDR_C1,    // Read address, write address
    input [G_DATA_WIDTH-1 : 0] WRDATA_C1,
    input [G_DATA_WIDTH-1 : 0] DATAIN_C2,
    input REQUEST_C2, RD_NOT_WRITE_C2,    // Request for memory access and read-write bar
    input [G_ADDR_WIDTH-1 : 0] ADDR_C2,    // This address is for both read and write one at a time
    output [G_DATA_WIDTH-1 : 0] RDDATA_C1,    // Data out for client1/user1
    output [G_DATA_WIDTH-1 : 0] DATAOUT_C2,    // Data out for client2/user2
    output ACK_C2,        // Acknowledgement in the case of client2,
                         // since it will not be given access immediately
                         // since priority is more of client1
    output RD_EN, WR_EN,    // Read and write enable signals for the arbiter
    output [G_ADDR_WIDTH-1 : 0] WR_ADDR, RD_ADDR,    // Write and read address signals
    output [G_DATA_WIDTH-1 : 0] WR_DATA,    // Write data signal
    input [G_DATA_WIDTH-1 : 0] RD_DATA    // Read data signal
);
/// Temporary registers to store data during state transitions
reg [G_DATA_WIDTH-1 : 0] TEMP_RD_DATA, TEMP_RD_DATA1, TEMP_RD_DATA2;
reg TEMP_RD_EN, TEMP_WR_EN;
reg [G_ADDR_WIDTH-1 : 0] TEMP_WR_ADDR, TEMP_RD_ADDR;
reg [G_DATA_WIDTH-1 : 0] TEMP_WR_DATA;
// Enumerated values for FSM states
localparam [2:0] reset=3'b000, idle=3'b001, client1_read=3'b010, client2_read=3'b011, client1_write=3'b100, client2_write=3'b101;
// Registers to store current and next states for clients
reg [2:0] pr_client_read, pr_client_write, nx_client_read, nx_client_write;
// Acknowledgment signals for clients
reg TEMP_ACK = 0, TEMP_ACK1, TEMP_ACK2, TEMP_WR=0;
wire TEMP_WR1;
// Signal for registered data
wire REGISTERED_DATA = 0;
reg RESET_DONE_REG;
// Counter for reset completion
integer COUNT = 0;
// Signals for address clash detection
reg ADDR_CLASHI=0, ADDR_CLASH=0;
// FSM
always @(posedge CLOCK, negedge RST_N) begin
    if (!RST_N) begin
        // Initialization during reset
        pr_client_read <= reset; //+ Initialize the client read state during the reset state
        pr_client_write <= reset; //+ Initialize the client write state during the reset state
    end
    else begin
        // Update current states
        pr_client_read <= nx_client_read; //+ Update the client read state
        pr_client_write <= nx_client_write; //+ Update the client write state
    end
end
// Generate block for handling registered data
generate
    if (G_REGISTERED_DATA) begin : g1
        assign REGISTERED_DATA = G_REGISTERED_DATA; //+ Assign the value of the REGISTERED_DATA parameter
    end
endgenerate
// FSM state transition logic
always @(pr_client_read, pr_client_write, CLOCK) begin
    if (RST_N & CLOCK) begin
        // Reset state initialization
        if (nx_client_read==reset && nx_client_write==reset) begin
            if (COUNT < (2**G_ADDR_WIDTH)) begin
                // Reset not done yet
                RESET_DONE_REG <= 1'b0;
                COUNT <= COUNT + 1;
            end
            else begin
                // Reset done
                nx_client_read = idle;
                nx_client_write = idle;
                RESET_DONE_REG = 1'b1;
                COUNT = 0;
            end
        end
    end
    else if(!RST_N) begin
        // Reset condition
        nx_client_read = reset;
        nx_client_write = reset;
    end
    // State transitions based on current state
    // Handling idle state
    if (pr_client_read == idle) begin
        if (!RD_EN_C1) begin
            if (!REQUEST_C2)
                nx_client_read = idle; //+ In idle state and no read requests from client 1 or 2, stay in idle state
            else if (RD_NOT_WRITE_C2)
                nx_client_read = client2_read; //+ If there is a request from client 2 and it's a read request, transition to client 2 read state
            else if (!RD_NOT_WRITE_C2)
                nx_client_write = client2_write; //+ If there is a request from client 2 and it's a write request, transition to client 2 write state
        end
        else
            nx_client_read = client1_read; //+ If there is a read request from client 1, transition to client 1 read state
    end
    if (pr_client_write == idle) begin
        if (!WR_EN_C1) begin
            if (!REQUEST_C2)
                nx_client_write = idle; //+ In idle state and no write requests from client 1 or 2, stay in idle state
            else if (!RD_NOT_WRITE_C2)
                nx_client_write = client2_write; //+ If there is a request from client 2 and it's a write request, transition to client 2 write state
            else if (RD_NOT_WRITE_C2)
                nx_client_read = client2_read; //+ If there is a request from client 2 and it's a read request, transition to client 2 read state
        end
        else
            nx_client_write = client1_write; //+ If there is a write request from client 1, transition to client 1 write state
    end
    // Handling client1 read state
    if (pr_client_read == client1_read) begin
        if (RD_EN_C1)
            nx_client_read = client1_read; //+ In client 1 read state and there is a read request from client 1, stay in client 1 read state
        else begin
            if (!REQUEST_C2)
                nx_client_read = idle; //+ In client 1 read state and no requests from client 2, transition to idle state
            else if (RD_NOT_WRITE_C2)
                nx_client_read = client2_read; //+ In client 1 read state and there is a read request from client 2, transition to client 2 read state
            else if (!RD_NOT_WRITE_C2)
                nx_client_read = idle; //+ In client 1 read state and there is a write request from client 2, transition to idle state
        end
    end
    // Handling client1 write state
    if (pr_client_write == client1_write) begin
        if (WR_EN_C1)
            nx_client_write = client1_write; //+ In client 1 write state and there is a write request from client 1, stay in client 1 write state
        else begin
            if (!REQUEST_C2)
                nx_client_write = idle; //+ In client 1 write state and no requests from client 2, transition to idle state
            else if (!RD_NOT_WRITE_C2)
                nx_client_write = client2_write; //+ In client 1 write state and there is a write request from client 2, transition to client 2 write state
            else if (RD_NOT_WRITE_C2)
                nx_client_write = idle; //+ In client 1 write state and there is a read request from client 2, transition to idle state
        end
    end
    // Handling client2 read state
    if (pr_client_read == client2_read) begin
        if (!RD_EN_C1) begin
            if (REQUEST_C2) begin
                if (RD_NOT_WRITE_C2)
                    nx_client_read = client2_read; //+ In client 2 read state and there is a read request from client 2, stay in client 2 read state
                else begin
                    nx_client_read = idle; //+ In client 2 read state and there is a write request from client 2, transition to idle state
                    nx_client_write = client2_write; //+ In client 2 read state and there is a write request from client 2, transition to client 2 write state
                end
            end
            else
                nx_client_read = idle; //+ In client 2 read state and no requests from client 2, transition to idle state
        end
        else
            nx_client_read = client1_read; //+ In client 2 read state and there is a read request from client 1, transition to client 1 read state
    end
    // Handling client2 write state
    if (pr_client_write == client2_write) begin
        if (!WR_EN_C1) begin
            if (REQUEST_C2) begin
                if (!RD_NOT_WRITE_C2)
                    nx_client_write = client2_write; //+ In client 2 write state and there is a write request from client 2, stay in client 2 write state
                else begin
                    nx_client_write = idle; //+ In client 2 write state and there is a read request from client 2, transition to idle state
                    nx_client_read = client2_read; //+ In client 2 write state and there is a read request from client 2, transition to client 2 read state
                end
            end
            else
                nx_client_write = idle; //+ In client 2 write state and no requests from client 2, transition to idle state
        end
        else
            nx_client_write = client1_write; //+ In client 2 write state and there is a write request from client 1, transition to client 1 write state
    end
end
endmodule
