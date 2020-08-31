`timescale 1ns / 1ps

module fifo
	#(
		parameter B=8, // number of bits in a word
		W=2,  // number of address bits
		COLUMN = 3
	)
	(
		input wire clk, reset,
		input wire rd, wr,
		input wire [B-1:0] w_data[COLUMN-1:0],
		output wire empty, full,
		output wire [B-1:0] r_data[COLUMN-1:0]
	);

	//signal declaration
	reg [W-1:0] w_ptr_reg, w_ptr_next, w_ptr_succ;
	reg [W-1:0] r_ptr_reg, r_ptr_next, r_ptr_succ;
	reg full_reg, empty_reg, full_next, empty_next;
	wire wr_en;

    // RAM instats
    genvar i;
        generate
            for (i=0; i < COLUMN; i++) begin
             ram_infer #(B, W) RAM (
                .data (w_data[i]),
                .read_addr (r_ptr_reg),
                .write_addr (w_ptr_reg),
                .we   (wr_en),
                .clk    (clk),
                .q    (r_data[i])
             );     
        end
    endgenerate

	// write enabled only when FIFO is not full
	assign wr_en = wr & ~full_reg;

	// fifo control logic
	// register for read and write pointers
	always @(posedge clk, posedge reset)
		if (reset)
		begin
			w_ptr_reg <= 0;
			r_ptr_reg <= 0;
			full_reg <= 1'b0;
			empty_reg <= 1'b1;
		end
		else
		begin
			w_ptr_reg <= w_ptr_next;
			r_ptr_reg <= r_ptr_next;
			full_reg <= full_next;
			empty_reg <= empty_next;
		end

	// next-state logic for read and write pointers
	always @*
	begin
		// successive pointer values
		w_ptr_succ = w_ptr_reg + 1;
		r_ptr_succ = r_ptr_reg + 1;
		// default: keep old values
		w_ptr_next = w_ptr_reg;
		r_ptr_next = r_ptr_reg;
		full_next = full_reg;
		empty_next = empty_reg;
		case ({wr, rd})
			// 2'b00:  no op
			2'b01: // read
				if (~empty_reg) // not empty
				begin
					r_ptr_next = r_ptr_succ;
					full_next = 1'b0;
					if (r_ptr_succ==w_ptr_reg)
						empty_next = 1'b1;
				end
			2'b10: // write
				if (~full_reg) // not full
				begin
					w_ptr_next = w_ptr_succ;
					empty_next = 1'b0;
					if (w_ptr_succ==r_ptr_reg)
						full_next = 1'b1;
				end
			2'b11: // write and read
			begin
				w_ptr_next = w_ptr_succ;
				r_ptr_next = r_ptr_succ;
			end
		endcase
	end

	// output
	assign full = full_reg;
	assign empty = empty_reg;

endmodule

module ram_infer
#(
		parameter B=8, // number of bits in a word
		parameter W=8  // number of address bits
)
(
	input [B-1:0] data,
	input [W-1:0] read_addr, write_addr,
	input we, clk,
	output [B-1:0] q
);

	// Declare the RAM variable
	reg [B-1:0] ram[2**W-1:0];

	always @ (posedge clk)
	begin
		// Write
		if (we)
			ram[write_addr] <= data;
    end
		// Read (if read_addr == write_addr, return OLD data).	To return
		// NEW data, use = (blocking write) rather than <= (non-blocking write)
		// in the write assignment.	 NOTE: NEW data may require extra bypass
		// logic around the RAM.
	assign	q = ram[read_addr];
	

endmodule