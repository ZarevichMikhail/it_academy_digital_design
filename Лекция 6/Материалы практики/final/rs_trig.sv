`timescale 1ns / 1ps
// RS-trigger
module rs_trig (
	input  wire R, S,
	output wire Q, QB
);

assign Q  = !(R | QB);
assign QB = !(S | Q );

endmodule: rs_trig
