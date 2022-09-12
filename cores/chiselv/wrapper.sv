module rvfi_wrapper (
	input         clock,
	input         reset,
	`RVFI_OUTPUTS
);
	(* keep *) `rvformal_rand_reg mem_ready;
	(* keep *) `rvformal_rand_reg [31:0] mem_rdata;
	(* keep *) wire [31:0] mem_addr;

	(* keep *) wire [31:0] addr_data_mem;
	(* keep *) wire [31:0] mem_wdata;
	(* keep *) wire [3:0]  mem_wstrb;

	RVFITop uut (
		.clock    (clock),
		.reset    (reset),

		.io_imem_addr(mem_addr),
		.io_imem_ready(mem_ready),
		.io_imem_rdata(mem_rdata),

		.io_dmem_waddr(addr_data_mem),
		.io_dmem_wdata(mem_wdata),
		.io_dmem_wen(mem_wstrb),

		`RVFI_CONN
	);

endmodule

