`timescale 1ns/10ps
module testbench_ALU();


logic [3:0]ALU_sel;
logic [31:0]ALU_Out;
logic [31:0]reg1;
logic [31:0]reg2;

ALU u1(.ALU_sel(ALU_sel),
		 .ALU_Out(ALU_Out),
		 .reg1(reg1),
		 .reg2(reg2));

		 
		 
initial 
	begin
		
		ALU_sel[3:0]= 4'b0000; reg1= 32'd1; reg2=32'd1; #10;
		ALU_sel[3:0]= 4'b0000; reg1= 32'd0; reg2=32'd1; #10;
		ALU_sel[3:0]= 4'b0000; reg1= 32'd1; reg2=32'd22; #10;
		
	end		
endmodule
