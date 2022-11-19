//  _______________________________________________________________________________
//   -----------------------------------------------------------------------------
//  |                                                                             |
//  |We will be designing the circuit to hold the instructions within the register|
//  |and on signal form the control unit the instruction has to be give as output |
//  |to the decoder.                                                              |  
//  |                                                                             |
//   -----------------------------------------------------------------------------
//  
//   -----------------------------------------------------------------------------
//  |                                                                             |
//  |                                                                             |
//  |                                                                             |
//  |                                                                             |
//  |                                                                             |
//   -----------------------------------------------------------------------------
//
//   -----------------------------------------------------------------------------
//  |                                                                             |
//  |                                                                             |
//  |                                                                             | 
//  |                                                                             |
//  |                                                                             |
//   ----------------------------------------------------------------------------- 
//
//
//  ______________________________________________________________________________


module InstructionMemory(clk,en,addr,out);

input logic clk,en;           /*declaring the clock module and the enable pin for 
										  the register                                     */


										 
input logic [31:0]addr;       /*the address for out instruction memory starts from
										  0x00000000 --->0xffffffff this will be provided by
										  the PC                                           */

										  
output logic [31:0]out;


always_ff@(posedge clk)
begin
	
	
	out[31:0]<= addr[31:0];
 
end
endmodule
