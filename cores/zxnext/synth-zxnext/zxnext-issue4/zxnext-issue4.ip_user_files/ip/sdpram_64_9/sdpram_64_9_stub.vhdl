-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue May  2 11:33:28 2023
-- Host        : Laptop-XPS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Projects/Z80/ZX_Spectrum_Next/ZX_Spectrum_Next_FPGA/cores/zxnext/synth-zxnext/zxnext-issue4/zxnext-issue4.runs/sdpram_64_9_synth_1/sdpram_64_9_stub.vhdl
-- Design      : sdpram_64_9
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a15tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sdpram_64_9 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    d : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    dpo : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );

end sdpram_64_9;

architecture stub of sdpram_64_9 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[5:0],d[8:0],dpra[5:0],clk,we,dpo[8:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_13,Vivado 2019.2";
begin
end;
