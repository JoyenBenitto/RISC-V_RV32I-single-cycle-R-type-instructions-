`timescale 1ns/10ps

module testbench_decoder();

logic [31:0]instruction;
logic [31:0]out;

decoder u1(.instruction(instruction),
			  .out(out));

initial 

	begin
		instruction[31:0]= 32'b00000000011100110000001010110011;  #10;
		instruction[31:0]= 32'b00000000010100110000001010110011;  #10;
		instruction[31:0]= 32'h00000000;
	end	
	
endmodule
