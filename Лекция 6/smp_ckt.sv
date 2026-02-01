`timescale 1ns / 1ps
// Sample circuit
module smp_ckt #(
	bit G_MODE = 1'b0  // Pick mode:
		// 0 - basic,
		// 1 - advanced (same result)
) (
	input  wire [3:0] D,
	output wire       QX, QY
);

// Variant A: Basic
if (!G_MODE) begin: b_bsc
	
	wire n1;
	
	assign n1 = D[0] & D[1];
	
	assign QX = n1 | D[2];
	
	assign QY = ~(QX | D[3]);
	
end: b_bsc
// Variant B: Advanced
else begin: b_adv
	
	wire n1 = D[0] & D[1];
	
	assign {QX, QY} = {n1 | D[2], ~(QX | D[3])};
	
end: b_adv

endmodule: smp_ckt
