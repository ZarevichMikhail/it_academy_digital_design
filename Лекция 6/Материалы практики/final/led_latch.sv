`timescale 1ns / 1ps

module led_latch (
	input  wire        i_btn,
	input  wire  [3:0] i_sw ,
	output logic [3:0] o_led
);

//always_latch
//	if (i_btn)
//		o_led <= i_sw;

d_latch u_latch [3:0] (
	.GATE (i_btn),
	.D    (i_sw ),
	.Q    (o_led)
);

endmodule: led_latch
