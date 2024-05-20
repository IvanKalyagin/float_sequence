`include "Addition-Subtraction.v"

module float_sequence
(
	input  		  clk,
	input  [31:0] A, 
	input  		  valid,
	input			  last,
	output reg [31:0] s_data,
	output reg	     s_valid	 
);
	
	wire Exception;
	wire [31:0] temp_sum;
	wire [31:0] res_wire;
	reg [31:0] res;
	
	Addition_Subtraction sum(
		.a_operand(temp_sum), .b_operand(A), .AddBar_Sub(1'd0), .Exception(Exception), .result(res_wire)
	);
	
	assign temp_sum = res;
	
always @ (posedge clk)
begin
	
	res = res_wire;

	if (valid == 0)
	begin
		res = 0;
	end;
	
	if (last == 1)
	begin
		s_valid = 1'd1;
		s_data = res;
	end
	else
	begin
		s_valid = 1'd0;
		s_data = 32'b0;
	end
end

endmodule