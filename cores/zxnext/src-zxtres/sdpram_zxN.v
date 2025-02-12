// Dual-Port RAM with Asynchronous Read (Distributed RAM)

module sdpram_zxN #(parameter DATAWIDTH=8, ADDRWIDTH=8, MEM_INIT_FILE="", FILL_REMAINING=0)
(
	input	  wire               clocka,
    
	input	wire [ADDRWIDTH-1:0] address_a,
	input	wire [DATAWIDTH-1:0] data_a,
	input	wire                 wren_a,
   output wire [DATAWIDTH-1:0] spo,

	input	wire [ADDRWIDTH-1:0] address_dpra,
	output wire [DATAWIDTH-1:0] dpo
);

    // BRAM to implement a dual port (2**ADDRWIDTH)Bytes memory buffer
    reg [DATAWIDTH-1:0] vram[0:(2**ADDRWIDTH)-1];
    integer i;
    initial begin
        for (i=0;i<(2**ADDRWIDTH);i=i+1) begin
            //vram[i] = 8'h00;
            vram[i] = FILL_REMAINING; 
        end
        if (MEM_INIT_FILE != "") begin $readmemh(MEM_INIT_FILE, vram); end
        for (i=0; i < 4; i=i+1) $display("%d:%h",i,vram[i]);        
        //for (i=8192; i < 8196; i=i+1) $display("%d:%h",i,vram[i]);        
    end
    
    reg [DATAWIDTH-1:0] out_b;
 
     // BRAM manager
    always @(posedge clocka) begin
       if (wren_a == 1'b1) begin
         vram[address_a] <= data_a;
       end
    end 
    assign spo = vram[address_a];
    
    assign dpo = vram[address_dpra];
endmodule
