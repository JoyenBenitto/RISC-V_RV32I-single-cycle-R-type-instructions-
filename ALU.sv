module ALU(ALU_sel, ALU_Out, reg1, reg2);

input logic  [3:0]ALU_sel;
input logic  [31:0]reg1;
input logic  [31:0]reg2;
output logic [31:0]ALU_Out;


//        _________________________________________
//       |		       |		            		      |                      
//			|	  0000	 |		  ALU_Out = A + B       |
//			|____________|____________________________|	                       
//			|			    |  						         |
//			|	  0001	 |		  ALU_Out = A - B 	   |
//			|____________|____________________________|
//			|			    |  						         |
//			|	  0010	 |		  ALU_Out = A and B	   |
//			|____________|____________________________|	
//			|			    |  						         |
//			|	  0011	 |		  ALU_Out = A or B	   |
//			|____________|____________________________|
//			|			    |	                           |
//			|	  0100	 |		  ALU_Out = A xor B	   |
//			|____________|____________________________|
//			|		       |     	    					   |	
//			|	  0101	 |		    	   ----			   |
//			|____________|____________________________|
//			|	    		 |                            |	
//       |    0110	 |			      ----           |
//       |____________|____________________________|  



always_comb
	begin
		case(ALU_sel[3:0])
			4'b0000:begin
							ALU_Out[31:0]= reg1[31:0] + reg2[31:0];
					  end
			4'b0001:begin
							ALU_Out[31:0]= reg1[31:0] - reg2[31:0];
					  end
			4'b0010:begin
							ALU_Out[31:0]= reg1[31:0] & reg2[31:0];
					  end
			4'b0011:begin
							ALU_Out[31:0]= reg1[31:0] | reg2[31:0];
					  end
			4'b0100:begin
							ALU_Out[31:0]= reg1[31:0] ^ reg2[31:0];
					  end
			default:begin
							ALU_Out[31:0]= 32'b0;
					  end
		endcase
	
	
	end
endmodule
