`timescale 1ns / 1ps
// D-latch
module d_latch (
	input  wire GATE, D,
	output wire Q, QB
);

wire DB = !D;
wire R = GATE & DB;
wire S = GATE & D;

//assign Q  = !(R | QB);
//assign QB = !(S | Q );

rs_trig RS (
	.R  (R ),
	.S  (S ),
	.Q  (Q ),
	.QB (QB)
);

endmodule: d_latch
