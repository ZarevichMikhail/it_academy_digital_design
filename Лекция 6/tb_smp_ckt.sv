`timescale 1ns / 1ps
// Sample circuit testbench
module tb_smp_ckt ();

// Input ports
logic [3:0] D;

// Output ports
wire        QX;
wire        QY;

// Generate test signals
initial begin
	// Initialize input (all bits set to 1's)
	D = '1;
	// Run through every possible combination
	// to build truth table
	for (int i = 0; i < 2 ** $bits(D); i++)
		#1 D = i;
	// Reset input to 0's
	#1 D = '0;
end

// Unit under test (UUT)
smp_ckt #(
	.G_MODE (0)
) uut (
	.D  (D ),
	.QX (QX),
	.QY (QY)
);

endmodule: tb_smp_ckt
