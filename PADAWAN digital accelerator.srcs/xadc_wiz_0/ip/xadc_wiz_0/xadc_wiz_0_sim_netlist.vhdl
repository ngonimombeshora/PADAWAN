-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Mon Jun  8 22:56:38 2020
-- Host        : Prometheus running 64-bit Ubuntu 20.04 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top xadc_wiz_0 -prefix
--               xadc_wiz_0_ xadc_wiz_0_sim_netlist.vhdl
-- Design      : xadc_wiz_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xadc_wiz_0 is
  port (
    daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dclk_in : in STD_LOGIC;
    den_in : in STD_LOGIC;
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dwe_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    vauxp2 : in STD_LOGIC;
    vauxn2 : in STD_LOGIC;
    vauxp3 : in STD_LOGIC;
    vauxn3 : in STD_LOGIC;
    vauxp10 : in STD_LOGIC;
    vauxn10 : in STD_LOGIC;
    vauxp11 : in STD_LOGIC;
    vauxn11 : in STD_LOGIC;
    busy_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drdy_out : out STD_LOGIC;
    eoc_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xadc_wiz_0 : entity is true;
end xadc_wiz_0;

architecture STRUCTURE of xadc_wiz_0 is
  signal NLW_inst_JTAGBUSY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_JTAGLOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_JTAGMODIFIED_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_OT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ALM_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_inst_MUXADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of inst : label is "PRIMITIVE";
begin
inst: unisim.vcomponents.XADC
    generic map(
      INIT_40 => X"8000",
      INIT_41 => X"21AF",
      INIT_42 => X"1900",
      INIT_43 => X"0000",
      INIT_44 => X"0000",
      INIT_45 => X"0000",
      INIT_46 => X"0000",
      INIT_47 => X"0000",
      INIT_48 => X"0000",
      INIT_49 => X"0C0C",
      INIT_4A => X"0000",
      INIT_4B => X"0000",
      INIT_4C => X"0000",
      INIT_4D => X"0000",
      INIT_4E => X"0000",
      INIT_4F => X"0000",
      INIT_50 => X"B5ED",
      INIT_51 => X"57E4",
      INIT_52 => X"A147",
      INIT_53 => X"CA33",
      INIT_54 => X"A93A",
      INIT_55 => X"52C6",
      INIT_56 => X"9555",
      INIT_57 => X"AE4E",
      INIT_58 => X"5999",
      INIT_59 => X"0000",
      INIT_5A => X"0000",
      INIT_5B => X"0000",
      INIT_5C => X"5111",
      INIT_5D => X"0000",
      INIT_5E => X"0000",
      INIT_5F => X"0000",
      IS_CONVSTCLK_INVERTED => '0',
      IS_DCLK_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SIM_MONITOR_FILE => "design.txt"
    )
        port map (
      ALM(7) => alarm_out,
      ALM(6 downto 0) => NLW_inst_ALM_UNCONNECTED(6 downto 0),
      BUSY => busy_out,
      CHANNEL(4 downto 0) => channel_out(4 downto 0),
      CONVST => '0',
      CONVSTCLK => '0',
      DADDR(6 downto 0) => daddr_in(6 downto 0),
      DCLK => dclk_in,
      DEN => den_in,
      DI(15 downto 0) => di_in(15 downto 0),
      DO(15 downto 0) => do_out(15 downto 0),
      DRDY => drdy_out,
      DWE => dwe_in,
      EOC => eoc_out,
      EOS => eos_out,
      JTAGBUSY => NLW_inst_JTAGBUSY_UNCONNECTED,
      JTAGLOCKED => NLW_inst_JTAGLOCKED_UNCONNECTED,
      JTAGMODIFIED => NLW_inst_JTAGMODIFIED_UNCONNECTED,
      MUXADDR(4 downto 0) => NLW_inst_MUXADDR_UNCONNECTED(4 downto 0),
      OT => NLW_inst_OT_UNCONNECTED,
      RESET => reset_in,
      VAUXN(15 downto 12) => B"0000",
      VAUXN(11) => vauxn11,
      VAUXN(10) => vauxn10,
      VAUXN(9 downto 4) => B"000000",
      VAUXN(3) => vauxn3,
      VAUXN(2) => vauxn2,
      VAUXN(1 downto 0) => B"00",
      VAUXP(15 downto 12) => B"0000",
      VAUXP(11) => vauxp11,
      VAUXP(10) => vauxp10,
      VAUXP(9 downto 4) => B"000000",
      VAUXP(3) => vauxp3,
      VAUXP(2) => vauxp2,
      VAUXP(1 downto 0) => B"00",
      VN => vn_in,
      VP => vp_in
    );
end STRUCTURE;
