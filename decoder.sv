module decoder(instruction,out);    // VERIFIED USING WAVEFORMS

input logic [31:0]instruction;
output logic [31:0]out;

//we are implimenting R type instructions only


always_comb
begin
	 case(instruction[6:0])
		7'b0110011: begin
						out[4:0]   =   instruction[19:15];      //R-type instruction -- rs1
						out[9:5]   =   instruction[24:20];		 //rs2
						out[14:10] =   instruction[11:7];		 //rd	
						out[17:15] =   instruction[14:12];      //funct3
						out[23:16] =   instruction[31:25];      //funct7
						out[31:24] = 7'bz;
			 			end
		7'b0010011: begin
						out[4:0]   =   instruction[19:15];      //I-type instruction -- rs1
						out[17:5]  =   instruction[31:20];      //immediate
						out[23:18] =   instruction[11:7];		 //rd	
						out[26:24] =   instruction[14:12];      //funct3
						out[31:27] = 7'bz;
						end
						
      default:begin
						out[31:0]=32'h0;
				  end
		endcase
		
end
endmodule 
