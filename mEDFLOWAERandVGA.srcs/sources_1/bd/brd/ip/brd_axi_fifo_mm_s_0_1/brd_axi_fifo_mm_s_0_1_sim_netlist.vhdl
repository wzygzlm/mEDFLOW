-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Nov 16 11:38:19 2022
-- Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top brd_axi_fifo_mm_s_0_1 -prefix
--               brd_axi_fifo_mm_s_0_1_ brd_axi_fifo_mm_s_0_1_sim_netlist.vhdl
-- Design      : brd_axi_fifo_mm_s_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_axi_read_fsm is
  port (
    s_axi4_arready : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rlast : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gaxi_full_sm.arlen_cntr_reg[4]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grid.S_AXI_RID_reg[0]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi4_arlen_4_sp_1 : in STD_LOGIC;
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gaxi_full_sm.arlen_cntr_reg[3]\ : in STD_LOGIC;
    s_axi4_arlen_3_sp_1 : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[4]_0\ : in STD_LOGIC;
    s_axi4_arlen_0_sp_1 : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[2]\ : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[7]\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[5]\ : in STD_LOGIC;
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_rid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end brd_axi_fifo_mm_s_0_1_axi_read_fsm;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_axi_read_fsm is
  signal \FSM_sequential_gaxi_full_sm.present_state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_4__0_n_0\ : STD_LOGIC;
  signal arready_int : STD_LOGIC;
  attribute MAX_FANOUT : string;
  attribute MAX_FANOUT of arready_int : signal is "10";
  attribute RTL_MAX_FANOUT : string;
  attribute RTL_MAX_FANOUT of arready_int : signal is "found";
  signal \gaxi_full_sm.allowed_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.allowed_reg_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[2]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[4]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[7]_i_6_n_0\ : STD_LOGIC;
  signal \^gaxi_full_sm.arlen_cntr_reg[4]\ : STD_LOGIC;
  signal \gaxi_full_sm.arready_int_i_10_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arready_int_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arready_int_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arready_int_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arready_int_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arready_int_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arready_int_i_6_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arready_int_i_7_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arready_int_i_8_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arready_int_i_9_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arready_int_reg_rep__0_n_0\ : STD_LOGIC;
  attribute MAX_FANOUT of \gaxi_full_sm.arready_int_reg_rep__0_n_0\ : signal is "10";
  attribute RTL_MAX_FANOUT of \gaxi_full_sm.arready_int_reg_rep__0_n_0\ : signal is "found";
  signal \gaxi_full_sm.arready_int_reg_rep_n_0\ : STD_LOGIC;
  attribute MAX_FANOUT of \gaxi_full_sm.arready_int_reg_rep_n_0\ : signal is "10";
  attribute RTL_MAX_FANOUT of \gaxi_full_sm.arready_int_reg_rep_n_0\ : signal is "found";
  signal \gaxi_full_sm.arready_int_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arready_int_rep_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.outstanding_read_r_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.r_last_r_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.r_last_r_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.r_valid_r1_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.r_valid_r_i_1_n_0\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal outstanding_read_r : STD_LOGIC;
  signal present_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of present_state : signal is "yes";
  signal r_last_c : STD_LOGIC;
  signal r_valid_c : STD_LOGIC;
  signal r_valid_r1 : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of r_valid_r1 : signal is std.standard.true;
  signal s_axi4_arlen_0_sn_1 : STD_LOGIC;
  signal s_axi4_arlen_3_sn_1 : STD_LOGIC;
  signal s_axi4_arlen_4_sn_1 : STD_LOGIC;
  signal \^s_axi4_rlast\ : STD_LOGIC;
  signal \^s_axi4_rvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0\ : label is "soft_lutpair57";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gaxi_full_sm.present_state_reg[0]\ : label is "wait_rdaddr:00,os_rd:11,rd_mem:01,reg_rdaddr:10";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_gaxi_full_sm.present_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gaxi_full_sm.present_state_reg[1]\ : label is "wait_rdaddr:00,os_rd:11,rd_mem:01,reg_rdaddr:10";
  attribute KEEP of \FSM_sequential_gaxi_full_sm.present_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \gaxi_full_sm.allowed_i_1\ : label is "soft_lutpair57";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \gaxi_full_sm.arready_int_reg\ : label is "gaxi_full_sm.arready_int_reg";
  attribute RTL_MAX_FANOUT of \gaxi_full_sm.arready_int_reg\ : label is "found";
  attribute IS_FANOUT_CONSTRAINED : integer;
  attribute IS_FANOUT_CONSTRAINED of \gaxi_full_sm.arready_int_reg_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \gaxi_full_sm.arready_int_reg_rep\ : label is "gaxi_full_sm.arready_int_reg";
  attribute RTL_MAX_FANOUT of \gaxi_full_sm.arready_int_reg_rep\ : label is "found";
  attribute IS_FANOUT_CONSTRAINED of \gaxi_full_sm.arready_int_reg_rep__0\ : label is 1;
  attribute ORIG_CELL_NAME of \gaxi_full_sm.arready_int_reg_rep__0\ : label is "gaxi_full_sm.arready_int_reg";
  attribute RTL_MAX_FANOUT of \gaxi_full_sm.arready_int_reg_rep__0\ : label is "found";
  attribute SOFT_HLUTNM of \gaxi_full_sm.r_last_r_i_1\ : label is "soft_lutpair58";
  attribute DONT_TOUCH of \gaxi_full_sm.r_valid_r1_reg\ : label is std.standard.true;
  attribute KEEP of \gaxi_full_sm.r_valid_r1_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \gaxi_full_sm.r_valid_r1_reg\ : label is "no";
  attribute SOFT_HLUTNM of \gaxi_full_sm.r_valid_r_i_1\ : label is "soft_lutpair58";
begin
  \gaxi_full_sm.arlen_cntr_reg[4]\ <= \^gaxi_full_sm.arlen_cntr_reg[4]\;
  \out\ <= r_valid_r1;
  s_axi4_arlen_0_sn_1 <= s_axi4_arlen_0_sp_1;
  s_axi4_arlen_3_sn_1 <= s_axi4_arlen_3_sp_1;
  s_axi4_arlen_4_sn_1 <= s_axi4_arlen_4_sp_1;
  s_axi4_arready <= arready_int;
  s_axi4_rlast <= \^s_axi4_rlast\;
  s_axi4_rvalid <= \^s_axi4_rvalid\;
\FSM_sequential_gaxi_full_sm.present_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCDCCCCCCFFCC"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \FSM_sequential_gaxi_full_sm.present_state[0]_i_2__0_n_0\,
      I2 => present_state(1),
      I3 => \gaxi_full_sm.arready_int_reg_rep_n_0\,
      I4 => present_state(0),
      I5 => \FSM_sequential_gaxi_full_sm.present_state[0]_i_3__0_n_0\,
      O => next_state(0)
    );
\FSM_sequential_gaxi_full_sm.present_state[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF30AA003030AA00"
    )
        port map (
      I0 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_3__0_n_0\,
      I1 => s_axi4_rready,
      I2 => \^s_axi4_rvalid\,
      I3 => present_state(0),
      I4 => present_state(1),
      I5 => outstanding_read_r,
      O => \FSM_sequential_gaxi_full_sm.present_state[0]_i_2__0_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \gaxi_full_sm.arlen_cntr[4]_i_2_n_0\,
      I1 => s_axi4_arlen(7),
      I2 => s_axi4_arlen(6),
      I3 => s_axi4_arlen(4),
      I4 => s_axi4_arlen(5),
      O => \FSM_sequential_gaxi_full_sm.present_state[0]_i_3__0_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8880AAA2"
    )
        port map (
      I0 => present_state(0),
      I1 => present_state(1),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0\,
      I3 => outstanding_read_r,
      I4 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_3__0_n_0\,
      I5 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_4__0_n_0\,
      O => next_state(1)
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^s_axi4_rvalid\,
      I1 => s_axi4_rready,
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => Q(5),
      I2 => Q(4),
      I3 => Q(6),
      I4 => Q(7),
      I5 => \^gaxi_full_sm.arlen_cntr_reg[4]\,
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_3__0_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055755555"
    )
        port map (
      I0 => \gaxi_full_sm.r_last_r_i_3_n_0\,
      I1 => \gaxi_full_sm.arready_int_reg_rep__0_n_0\,
      I2 => \^s_axi4_rvalid\,
      I3 => s_axi4_rready,
      I4 => present_state(1),
      I5 => present_state(0),
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_4__0_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_state(0),
      Q => present_state(0),
      R => SR(0)
    );
\FSM_sequential_gaxi_full_sm.present_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_state(1),
      Q => present_state(1),
      R => SR(0)
    );
\gaxi_full_sm.allowed_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55554000"
    )
        port map (
      I0 => \gaxi_full_sm.arready_int_reg_rep_n_0\,
      I1 => \^s_axi4_rvalid\,
      I2 => s_axi4_rready,
      I3 => \^s_axi4_rlast\,
      I4 => \gaxi_full_sm.allowed_reg_n_0\,
      O => \gaxi_full_sm.allowed_i_1_n_0\
    );
\gaxi_full_sm.allowed_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gaxi_full_sm.allowed_i_1_n_0\,
      Q => \gaxi_full_sm.allowed_reg_n_0\,
      S => SR(0)
    );
\gaxi_full_sm.arlen_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22627767"
    )
        port map (
      I0 => \gaxi_full_sm.arlen_cntr[7]_i_6_n_0\,
      I1 => s_axi4_arlen(0),
      I2 => \gaxi_full_sm.arready_int_reg_rep_n_0\,
      I3 => present_state(0),
      I4 => Q(0),
      O => D(0)
    );
\gaxi_full_sm.arlen_cntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B7B484B484B4B7"
    )
        port map (
      I0 => s_axi4_arlen(0),
      I1 => \gaxi_full_sm.arlen_cntr[7]_i_6_n_0\,
      I2 => s_axi4_arlen(1),
      I3 => \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\,
      I4 => Q(0),
      I5 => Q(1),
      O => D(1)
    );
\gaxi_full_sm.arlen_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => s_axi4_arlen(0),
      I1 => s_axi4_arlen(1),
      I2 => s_axi4_arlen(2),
      I3 => \gaxi_full_sm.arlen_cntr[7]_i_6_n_0\,
      I4 => \gaxi_full_sm.arlen_cntr[2]_i_2_n_0\,
      O => D(2)
    );
\gaxi_full_sm.arlen_cntr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFB08080808FB"
    )
        port map (
      I0 => s_axi4_arlen(2),
      I1 => \gaxi_full_sm.arready_int_reg_rep__0_n_0\,
      I2 => present_state(0),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \gaxi_full_sm.arlen_cntr[2]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B7B484B484B4B7"
    )
        port map (
      I0 => s_axi4_arlen_0_sn_1,
      I1 => \gaxi_full_sm.arlen_cntr[7]_i_6_n_0\,
      I2 => s_axi4_arlen(3),
      I3 => \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\,
      I4 => \gaxi_full_sm.arlen_cntr_reg[2]\,
      I5 => Q(3),
      O => D(3)
    );
\gaxi_full_sm.arlen_cntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"787B78487848787B"
    )
        port map (
      I0 => \gaxi_full_sm.arlen_cntr[4]_i_2_n_0\,
      I1 => \gaxi_full_sm.arlen_cntr[7]_i_6_n_0\,
      I2 => s_axi4_arlen(4),
      I3 => \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\,
      I4 => Q(4),
      I5 => \^gaxi_full_sm.arlen_cntr_reg[4]\,
      O => D(4)
    );
\gaxi_full_sm.arlen_cntr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi4_arlen(3),
      I1 => s_axi4_arlen(0),
      I2 => s_axi4_arlen(1),
      I3 => s_axi4_arlen(2),
      O => \gaxi_full_sm.arlen_cntr[4]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \^gaxi_full_sm.arlen_cntr_reg[4]\
    );
\gaxi_full_sm.arlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B484B4B7B4B7B484"
    )
        port map (
      I0 => s_axi4_arlen_3_sn_1,
      I1 => \gaxi_full_sm.arlen_cntr[7]_i_6_n_0\,
      I2 => s_axi4_arlen(5),
      I3 => \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\,
      I4 => Q(5),
      I5 => \gaxi_full_sm.arlen_cntr_reg[4]_0\,
      O => D(5)
    );
\gaxi_full_sm.arlen_cntr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7848787B787B7848"
    )
        port map (
      I0 => s_axi4_arlen_4_sn_1,
      I1 => \gaxi_full_sm.arlen_cntr[7]_i_6_n_0\,
      I2 => s_axi4_arlen(6),
      I3 => \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\,
      I4 => Q(6),
      I5 => \gaxi_full_sm.arlen_cntr_reg[3]\,
      O => D(6)
    );
\gaxi_full_sm.arlen_cntr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEEEEEE"
    )
        port map (
      I0 => \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\,
      I1 => \gaxi_full_sm.arlen_cntr[7]_i_4_n_0\,
      I2 => Q(7),
      I3 => s_axi4_rready,
      I4 => \gaxi_full_sm.arlen_cntr_reg[5]\,
      I5 => \gaxi_full_sm.arlen_cntr[7]_i_6_n_0\,
      O => E(0)
    );
\gaxi_full_sm.arlen_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E002E0E0E2E2E2E2"
    )
        port map (
      I0 => \gaxi_full_sm.arlen_cntr_reg[7]\,
      I1 => \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\,
      I2 => s_axi4_arlen(7),
      I3 => s_axi4_arlen(6),
      I4 => s_axi4_arlen_4_sn_1,
      I5 => \gaxi_full_sm.arlen_cntr[7]_i_6_n_0\,
      O => D(7)
    );
\gaxi_full_sm.arlen_cntr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \gaxi_full_sm.arready_int_reg_rep__0_n_0\,
      I1 => present_state(0),
      O => \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\
    );
\gaxi_full_sm.arlen_cntr[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => present_state(1),
      I1 => present_state(0),
      I2 => s_axi4_rready,
      I3 => \^s_axi4_rvalid\,
      O => \gaxi_full_sm.arlen_cntr[7]_i_4_n_0\
    );
\gaxi_full_sm.arlen_cntr[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000BF00"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \^s_axi4_rvalid\,
      I2 => present_state(1),
      I3 => \gaxi_full_sm.arready_int_reg_rep_n_0\,
      I4 => present_state(0),
      I5 => \FSM_sequential_gaxi_full_sm.present_state[0]_i_3__0_n_0\,
      O => \gaxi_full_sm.arlen_cntr[7]_i_6_n_0\
    );
\gaxi_full_sm.arready_int_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \gaxi_full_sm.arready_int_i_2_n_0\,
      I1 => \gaxi_full_sm.arready_int_i_3_n_0\,
      I2 => \gaxi_full_sm.arready_int_i_4_n_0\,
      I3 => \gaxi_full_sm.arready_int_i_5_n_0\,
      O => \gaxi_full_sm.arready_int_i_1_n_0\
    );
\gaxi_full_sm.arready_int_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi4_araddr(31),
      I1 => s_axi4_araddr(11),
      I2 => s_axi4_araddr(15),
      I3 => s_axi4_araddr(13),
      O => \gaxi_full_sm.arready_int_i_10_n_0\
    );
\gaxi_full_sm.arready_int_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_axi4_araddr(14),
      I1 => s_axi4_araddr(17),
      I2 => s_axi4_araddr(30),
      I3 => s_axi4_araddr(21),
      I4 => \gaxi_full_sm.arready_int_i_6_n_0\,
      I5 => \gaxi_full_sm.arready_int_i_7_n_0\,
      O => \gaxi_full_sm.arready_int_i_2_n_0\
    );
\gaxi_full_sm.arready_int_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => s_axi4_araddr(26),
      I1 => s_axi4_araddr(29),
      I2 => s_axi4_araddr(9),
      I3 => s_axi4_araddr(12),
      I4 => \gaxi_full_sm.arready_int_i_8_n_0\,
      O => \gaxi_full_sm.arready_int_i_3_n_0\
    );
\gaxi_full_sm.arready_int_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => s_axi4_araddr(3),
      I1 => s_axi4_araddr(16),
      I2 => s_axi4_araddr(5),
      I3 => s_axi4_araddr(0),
      I4 => \gaxi_full_sm.arready_int_i_9_n_0\,
      O => \gaxi_full_sm.arready_int_i_4_n_0\
    );
\gaxi_full_sm.arready_int_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => s_axi4_araddr(8),
      I1 => s_axi4_araddr(24),
      I2 => \gaxi_full_sm.arready_int_reg_rep__0_n_0\,
      I3 => s_axi4_araddr(23),
      I4 => \gaxi_full_sm.arready_int_i_10_n_0\,
      O => \gaxi_full_sm.arready_int_i_5_n_0\
    );
\gaxi_full_sm.arready_int_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_axi4_araddr(19),
      I1 => s_axi4_araddr(4),
      I2 => s_axi_aresetn,
      I3 => s_axi4_araddr(2),
      O => \gaxi_full_sm.arready_int_i_6_n_0\
    );
\gaxi_full_sm.arready_int_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_axi4_araddr(1),
      I1 => s_axi4_araddr(18),
      I2 => s_axi4_araddr(25),
      I3 => s_axi4_araddr(7),
      O => \gaxi_full_sm.arready_int_i_7_n_0\
    );
\gaxi_full_sm.arready_int_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => s_axi4_araddr(22),
      I1 => s_axi4_araddr(10),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_araddr(6),
      O => \gaxi_full_sm.arready_int_i_8_n_0\
    );
\gaxi_full_sm.arready_int_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \gaxi_full_sm.allowed_reg_n_0\,
      I1 => s_axi4_araddr(20),
      I2 => s_axi4_araddr(28),
      I3 => s_axi4_araddr(27),
      O => \gaxi_full_sm.arready_int_i_9_n_0\
    );
\gaxi_full_sm.arready_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gaxi_full_sm.arready_int_i_1_n_0\,
      Q => arready_int,
      R => '0'
    );
\gaxi_full_sm.arready_int_reg_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gaxi_full_sm.arready_int_rep_i_1_n_0\,
      Q => \gaxi_full_sm.arready_int_reg_rep_n_0\,
      R => '0'
    );
\gaxi_full_sm.arready_int_reg_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gaxi_full_sm.arready_int_rep_i_1__0_n_0\,
      Q => \gaxi_full_sm.arready_int_reg_rep__0_n_0\,
      R => '0'
    );
\gaxi_full_sm.arready_int_rep_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \gaxi_full_sm.arready_int_i_2_n_0\,
      I1 => \gaxi_full_sm.arready_int_i_3_n_0\,
      I2 => \gaxi_full_sm.arready_int_i_4_n_0\,
      I3 => \gaxi_full_sm.arready_int_i_5_n_0\,
      O => \gaxi_full_sm.arready_int_rep_i_1_n_0\
    );
\gaxi_full_sm.arready_int_rep_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \gaxi_full_sm.arready_int_i_2_n_0\,
      I1 => \gaxi_full_sm.arready_int_i_3_n_0\,
      I2 => \gaxi_full_sm.arready_int_i_4_n_0\,
      I3 => \gaxi_full_sm.arready_int_i_5_n_0\,
      O => \gaxi_full_sm.arready_int_rep_i_1__0_n_0\
    );
\gaxi_full_sm.outstanding_read_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000808000000000"
    )
        port map (
      I0 => \FSM_sequential_gaxi_full_sm.present_state[0]_i_3__0_n_0\,
      I1 => \gaxi_full_sm.arready_int_reg_rep_n_0\,
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0\,
      I3 => outstanding_read_r,
      I4 => present_state(0),
      I5 => present_state(1),
      O => \gaxi_full_sm.outstanding_read_r_i_1_n_0\
    );
\gaxi_full_sm.outstanding_read_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gaxi_full_sm.outstanding_read_r_i_1_n_0\,
      Q => outstanding_read_r,
      R => SR(0)
    );
\gaxi_full_sm.r_last_r_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => r_last_c,
      I1 => s_axi4_rready,
      I2 => \^s_axi4_rvalid\,
      I3 => \^s_axi4_rlast\,
      O => \gaxi_full_sm.r_last_r_i_1_n_0\
    );
\gaxi_full_sm.r_last_r_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0050005FC050CF5F"
    )
        port map (
      I0 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_3__0_n_0\,
      I1 => outstanding_read_r,
      I2 => present_state(0),
      I3 => present_state(1),
      I4 => \gaxi_full_sm.r_last_r_i_3_n_0\,
      I5 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0\,
      O => r_last_c
    );
\gaxi_full_sm.r_last_r_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \gaxi_full_sm.arready_int_reg_rep__0_n_0\,
      I1 => s_axi4_arlen(5),
      I2 => s_axi4_arlen(4),
      I3 => s_axi4_arlen(6),
      I4 => s_axi4_arlen(7),
      I5 => \gaxi_full_sm.arlen_cntr[4]_i_2_n_0\,
      O => \gaxi_full_sm.r_last_r_i_3_n_0\
    );
\gaxi_full_sm.r_last_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gaxi_full_sm.r_last_r_i_1_n_0\,
      Q => \^s_axi4_rlast\,
      R => SR(0)
    );
\gaxi_full_sm.r_valid_r1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \^s_axi4_rvalid\,
      O => \gaxi_full_sm.r_valid_r1_i_1_n_0\
    );
\gaxi_full_sm.r_valid_r1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F5440055FF5500"
    )
        port map (
      I0 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0\,
      I1 => outstanding_read_r,
      I2 => \FSM_sequential_gaxi_full_sm.present_state[0]_i_3__0_n_0\,
      I3 => present_state(0),
      I4 => \gaxi_full_sm.arready_int_reg_rep_n_0\,
      I5 => present_state(1),
      O => r_valid_c
    );
\gaxi_full_sm.r_valid_r1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gaxi_full_sm.r_valid_r1_i_1_n_0\,
      D => r_valid_c,
      Q => r_valid_r1,
      R => SR(0)
    );
\gaxi_full_sm.r_valid_r_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => r_valid_c,
      I1 => s_axi4_rready,
      I2 => \^s_axi4_rvalid\,
      O => \gaxi_full_sm.r_valid_r_i_1_n_0\
    );
\gaxi_full_sm.r_valid_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gaxi_full_sm.r_valid_r_i_1_n_0\,
      Q => \^s_axi4_rvalid\,
      R => SR(0)
    );
\grid.S_AXI_RID[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi4_arid(0),
      I1 => \gaxi_full_sm.arready_int_reg_rep__0_n_0\,
      I2 => s_axi4_rid(0),
      O => \grid.S_AXI_RID_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_axi_write_fsm is
  port (
    \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0\ : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_wready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gaxif_wlast_gen.awlen_cntr_r_reg[6]\ : out STD_LOGIC;
    bvalid_c : out STD_LOGIC;
    I53 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\ : out STD_LOGIC;
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gaxif_wlast_gen.awlen_cntr_r_reg[0]\ : in STD_LOGIC;
    \gaxif_wlast_gen.awlen_cntr_r_reg[2]\ : in STD_LOGIC;
    \gaxif_wlast_gen.awlen_cntr_r_reg[3]\ : in STD_LOGIC;
    \gaxif_wlast_gen.awlen_cntr_r_reg[4]\ : in STD_LOGIC;
    \gaxif_wlast_gen.awlen_cntr_r_reg[6]_0\ : in STD_LOGIC;
    \bvalid_count_r_reg[0]\ : in STD_LOGIC;
    \bvalid_count_r_reg[1]\ : in STD_LOGIC;
    \bvalid_count_r_reg[2]\ : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end brd_axi_fifo_mm_s_0_1_axi_write_fsm;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_axi_write_fsm is
  signal \FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_gaxi_full_sm.present_state_reg[1]_0\ : STD_LOGIC;
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aw_ready_c : STD_LOGIC;
  signal \^bvalid_c\ : STD_LOGIC;
  signal \gaxi_full_sm.aw_ready_r_i_10_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.aw_ready_r_i_11_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.aw_ready_r_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.aw_ready_r_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.aw_ready_r_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.aw_ready_r_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.aw_ready_r_i_6_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.aw_ready_r_i_7_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.aw_ready_r_i_8_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.aw_ready_r_i_9_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.w_ready_r_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\ : STD_LOGIC;
  signal \^gaxif_wlast_gen.awlen_cntr_r_reg[6]\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal present_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of present_state : signal is "yes";
  signal w_ready_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gaxi_full_sm.present_state[0]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \FSM_sequential_gaxi_full_sm.present_state[1]_i_10\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FSM_sequential_gaxi_full_sm.present_state[1]_i_15\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \FSM_sequential_gaxi_full_sm.present_state[1]_i_16\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \FSM_sequential_gaxi_full_sm.present_state[1]_i_5\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \FSM_sequential_gaxi_full_sm.present_state[1]_i_6\ : label is "soft_lutpair64";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gaxi_full_sm.present_state_reg[0]\ : label is "os_wr:01,reg_wraddr:10,wr_mem:11,wait_wraddr:00";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_gaxi_full_sm.present_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gaxi_full_sm.present_state_reg[1]\ : label is "os_wr:01,reg_wraddr:10,wr_mem:11,wait_wraddr:00";
  attribute KEEP of \FSM_sequential_gaxi_full_sm.present_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \gaxi_full_sm.aw_ready_r_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \gaxi_full_sm.aw_ready_r_i_9\ : label is "soft_lutpair65";
begin
  \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0\ <= \^fsm_sequential_gaxi_full_sm.present_state_reg[1]_0\;
  SS(0) <= \^ss\(0);
  bvalid_c <= \^bvalid_c\;
  \gaxif_wlast_gen.awlen_cntr_r_reg[6]\ <= \^gaxif_wlast_gen.awlen_cntr_r_reg[6]\;
\FSM_sequential_gaxi_full_sm.present_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00005053"
    )
        port map (
      I0 => \FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0\,
      I1 => s_axi4_wvalid,
      I2 => present_state(0),
      I3 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I4 => present_state(1),
      I5 => \FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0\,
      O => next_state(0)
    );
\FSM_sequential_gaxi_full_sm.present_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => \bvalid_count_r_reg[2]\,
      I1 => \bvalid_count_r_reg[1]\,
      I2 => \bvalid_count_r_reg[0]\,
      I3 => \gaxi_full_sm.w_ready_r_i_2_n_0\,
      I4 => s_axi4_wvalid,
      O => \FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70404040"
    )
        port map (
      I0 => s_axi4_bready,
      I1 => present_state(0),
      I2 => present_state(1),
      I3 => \gaxi_full_sm.aw_ready_r_i_2_n_0\,
      I4 => \gaxi_full_sm.w_ready_r_i_2_n_0\,
      O => \FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAABABABBBA"
    )
        port map (
      I0 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I1 => present_state(0),
      I2 => present_state(1),
      I3 => s_axi4_wvalid,
      I4 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0\,
      I5 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0\,
      O => next_state(1)
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_sequential_gaxi_full_sm.present_state_reg[1]_0\,
      I1 => s_axi4_awvalid,
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_10_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi4_awaddr(21),
      I1 => s_axi4_awaddr(20),
      I2 => s_axi4_awaddr(2),
      I3 => s_axi4_awaddr(3),
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_11_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi4_awaddr(5),
      I1 => s_axi4_awaddr(31),
      I2 => s_axi4_awaddr(29),
      I3 => s_axi4_awaddr(28),
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_12_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => s_axi4_awaddr(30),
      I1 => s_axi4_awaddr(16),
      I2 => s_axi4_awaddr(7),
      I3 => s_axi4_awaddr(6),
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_13_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi4_awaddr(13),
      I1 => s_axi4_awaddr(12),
      I2 => s_axi4_awaddr(15),
      I3 => s_axi4_awaddr(14),
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_14_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi4_awaddr(17),
      I1 => s_axi4_awaddr(4),
      I2 => s_axi4_awaddr(19),
      I3 => s_axi4_awaddr(18),
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_15_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi4_awaddr(0),
      I1 => s_axi4_awaddr(1),
      I2 => s_axi4_awaddr(27),
      I3 => s_axi4_awaddr(26),
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_16_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55550000CFC00000"
    )
        port map (
      I0 => s_axi4_bready,
      I1 => \gaxi_full_sm.aw_ready_r_i_2_n_0\,
      I2 => \gaxi_full_sm.w_ready_r_i_2_n_0\,
      I3 => s_axi4_wvalid,
      I4 => present_state(0),
      I5 => present_state(1),
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_5_n_0\,
      I1 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0\,
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_7_n_0\,
      I3 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_8_n_0\,
      I4 => s_axi4_awvalid,
      I5 => \^fsm_sequential_gaxi_full_sm.present_state_reg[1]_0\,
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA8AAAA"
    )
        port map (
      I0 => \gaxi_full_sm.w_ready_r_i_2_n_0\,
      I1 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_9_n_0\,
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_7_n_0\,
      I3 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_8_n_0\,
      I4 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_10_n_0\,
      I5 => \gaxi_full_sm.aw_ready_r_i_2_n_0\,
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi4_awaddr(18),
      I1 => s_axi4_awaddr(19),
      I2 => s_axi4_awaddr(4),
      I3 => s_axi4_awaddr(17),
      I4 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_11_n_0\,
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_5_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi4_awaddr(26),
      I1 => s_axi4_awaddr(27),
      I2 => s_axi4_awaddr(1),
      I3 => s_axi4_awaddr(0),
      I4 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_12_n_0\,
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => s_axi4_awaddr(23),
      I1 => s_axi4_awaddr(22),
      I2 => s_axi4_awaddr(25),
      I3 => s_axi4_awaddr(24),
      I4 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_13_n_0\,
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_7_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi4_awaddr(10),
      I1 => s_axi4_awaddr(11),
      I2 => s_axi4_awaddr(8),
      I3 => s_axi4_awaddr(9),
      I4 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_14_n_0\,
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_8_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_11_n_0\,
      I1 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_15_n_0\,
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_12_n_0\,
      I3 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_16_n_0\,
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_9_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_state(0),
      Q => present_state(0),
      R => \^ss\(0)
    );
\FSM_sequential_gaxi_full_sm.present_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_state(1),
      Q => present_state(1),
      R => \^ss\(0)
    );
IP2Bus_RdAck_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^ss\(0)
    );
\gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      O => I53
    );
\gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bvalid_c\,
      I1 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]_0\(0),
      O => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\
    );
\gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]_0\(0),
      I1 => \^bvalid_c\,
      I2 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]_0\(1),
      O => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\
    );
\gaxi_bvalid_id_r.bvalid_d1_c_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => present_state(0),
      I1 => present_state(1),
      I2 => \gaxi_full_sm.w_ready_r_i_2_n_0\,
      O => \^bvalid_c\
    );
\gaxi_full_sm.aw_ready_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4444F4444444F4"
    )
        port map (
      I0 => \gaxi_full_sm.aw_ready_r_i_2_n_0\,
      I1 => \^bvalid_c\,
      I2 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I3 => present_state(0),
      I4 => present_state(1),
      I5 => s_axi4_bready,
      O => aw_ready_c
    );
\gaxi_full_sm.aw_ready_r_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_axi4_awaddr(31),
      I1 => s_axi4_awaddr(28),
      I2 => s_axi4_awaddr(23),
      I3 => s_axi4_awaddr(6),
      O => \gaxi_full_sm.aw_ready_r_i_10_n_0\
    );
\gaxi_full_sm.aw_ready_r_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi4_awaddr(15),
      I1 => s_axi4_awaddr(8),
      I2 => s_axi4_awaddr(0),
      I3 => s_axi4_awaddr(13),
      O => \gaxi_full_sm.aw_ready_r_i_11_n_0\
    );
\gaxi_full_sm.aw_ready_r_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \bvalid_count_r_reg[0]\,
      I1 => \bvalid_count_r_reg[1]\,
      I2 => \bvalid_count_r_reg[2]\,
      O => \gaxi_full_sm.aw_ready_r_i_2_n_0\
    );
\gaxi_full_sm.aw_ready_r_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gaxi_full_sm.aw_ready_r_i_4_n_0\,
      I1 => \gaxi_full_sm.aw_ready_r_i_5_n_0\,
      I2 => \gaxi_full_sm.aw_ready_r_i_6_n_0\,
      I3 => \gaxi_full_sm.aw_ready_r_i_7_n_0\,
      O => \gaxi_full_sm.aw_ready_r_i_3_n_0\
    );
\gaxi_full_sm.aw_ready_r_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => s_axi4_awaddr(11),
      I1 => s_axi4_awaddr(5),
      I2 => s_axi4_awaddr(7),
      I3 => \^fsm_sequential_gaxi_full_sm.present_state_reg[1]_0\,
      I4 => \gaxi_full_sm.aw_ready_r_i_8_n_0\,
      I5 => \gaxi_full_sm.aw_ready_r_i_9_n_0\,
      O => \gaxi_full_sm.aw_ready_r_i_4_n_0\
    );
\gaxi_full_sm.aw_ready_r_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => s_axi4_awaddr(20),
      I1 => s_axi4_awaddr(25),
      I2 => s_axi4_awaddr(9),
      I3 => s_axi4_awaddr(30),
      I4 => \gaxi_full_sm.aw_ready_r_i_10_n_0\,
      O => \gaxi_full_sm.aw_ready_r_i_5_n_0\
    );
\gaxi_full_sm.aw_ready_r_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi4_awaddr(2),
      I1 => s_axi4_awaddr(1),
      I2 => s_axi4_awaddr(19),
      I3 => s_axi4_awaddr(27),
      I4 => \gaxi_full_sm.aw_ready_r_i_11_n_0\,
      O => \gaxi_full_sm.aw_ready_r_i_6_n_0\
    );
\gaxi_full_sm.aw_ready_r_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => s_axi4_awaddr(16),
      I1 => s_axi4_awaddr(3),
      I2 => s_axi4_awaddr(18),
      I3 => s_axi4_awaddr(29),
      I4 => s_axi4_awaddr(14),
      I5 => s_axi4_awaddr(17),
      O => \gaxi_full_sm.aw_ready_r_i_7_n_0\
    );
\gaxi_full_sm.aw_ready_r_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_axi4_awaddr(26),
      I1 => s_axi4_awaddr(12),
      I2 => s_axi4_awaddr(24),
      I3 => s_axi4_awaddr(21),
      O => \gaxi_full_sm.aw_ready_r_i_8_n_0\
    );
\gaxi_full_sm.aw_ready_r_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => s_axi4_awvalid,
      I1 => s_axi4_awaddr(10),
      I2 => s_axi4_awaddr(22),
      I3 => s_axi4_awaddr(4),
      O => \gaxi_full_sm.aw_ready_r_i_9_n_0\
    );
\gaxi_full_sm.aw_ready_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_ready_c,
      Q => \^fsm_sequential_gaxi_full_sm.present_state_reg[1]_0\,
      R => \^ss\(0)
    );
\gaxi_full_sm.w_ready_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F1F55"
    )
        port map (
      I0 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I1 => \gaxi_full_sm.aw_ready_r_i_2_n_0\,
      I2 => \gaxi_full_sm.w_ready_r_i_2_n_0\,
      I3 => present_state(1),
      I4 => present_state(0),
      O => w_ready_c
    );
\gaxi_full_sm.w_ready_r_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => Q(6),
      I1 => \^gaxif_wlast_gen.awlen_cntr_r_reg[6]\,
      I2 => s_axi4_wvalid,
      I3 => Q(7),
      O => \gaxi_full_sm.w_ready_r_i_2_n_0\
    );
\gaxi_full_sm.w_ready_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => w_ready_c,
      Q => s_axi4_wready,
      R => \^ss\(0)
    );
\gaxif_wlast_gen.awlen_cntr_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008FFFB"
    )
        port map (
      I0 => s_axi4_awlen(0),
      I1 => \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\,
      I2 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I3 => present_state(0),
      I4 => Q(0),
      O => D(0)
    );
\gaxif_wlast_gen.awlen_cntr_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB00080008FFFB"
    )
        port map (
      I0 => s_axi4_awlen(1),
      I1 => \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\,
      I2 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I3 => present_state(0),
      I4 => Q(0),
      I5 => Q(1),
      O => D(1)
    );
\gaxif_wlast_gen.awlen_cntr_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB00080008FFFB"
    )
        port map (
      I0 => s_axi4_awlen(2),
      I1 => \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\,
      I2 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I3 => present_state(0),
      I4 => \gaxif_wlast_gen.awlen_cntr_r_reg[0]\,
      I5 => Q(2),
      O => D(2)
    );
\gaxif_wlast_gen.awlen_cntr_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB00080008FFFB"
    )
        port map (
      I0 => s_axi4_awlen(3),
      I1 => \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\,
      I2 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I3 => present_state(0),
      I4 => \gaxif_wlast_gen.awlen_cntr_r_reg[2]\,
      I5 => Q(3),
      O => D(3)
    );
\gaxif_wlast_gen.awlen_cntr_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB00080008FFFB"
    )
        port map (
      I0 => s_axi4_awlen(4),
      I1 => \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\,
      I2 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I3 => present_state(0),
      I4 => Q(4),
      I5 => \gaxif_wlast_gen.awlen_cntr_r_reg[3]\,
      O => D(4)
    );
\gaxif_wlast_gen.awlen_cntr_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB00080008FFFB"
    )
        port map (
      I0 => s_axi4_awlen(5),
      I1 => \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\,
      I2 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I3 => present_state(0),
      I4 => \gaxif_wlast_gen.awlen_cntr_r_reg[4]\,
      I5 => Q(5),
      O => D(5)
    );
\gaxif_wlast_gen.awlen_cntr_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFBFFFB0008"
    )
        port map (
      I0 => s_axi4_awlen(6),
      I1 => \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\,
      I2 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I3 => present_state(0),
      I4 => Q(6),
      I5 => \^gaxif_wlast_gen.awlen_cntr_r_reg[6]\,
      O => D(6)
    );
\gaxif_wlast_gen.awlen_cntr_r[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Q(5),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(4),
      O => \^gaxif_wlast_gen.awlen_cntr_r_reg[6]\
    );
\gaxif_wlast_gen.awlen_cntr_r[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF22FF8B"
    )
        port map (
      I0 => s_axi4_wvalid,
      I1 => present_state(0),
      I2 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I3 => \gaxi_full_sm.w_ready_r_i_2_n_0\,
      I4 => present_state(1),
      O => E(0)
    );
\gaxif_wlast_gen.awlen_cntr_r[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFBFFFB0008"
    )
        port map (
      I0 => s_axi4_awlen(7),
      I1 => \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\,
      I2 => \gaxi_full_sm.aw_ready_r_i_3_n_0\,
      I3 => present_state(0),
      I4 => Q(7),
      I5 => \gaxif_wlast_gen.awlen_cntr_r_reg[6]_0\,
      O => D(7)
    );
\gaxif_wlast_gen.awlen_cntr_r[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD00FFFF"
    )
        port map (
      I0 => \bvalid_count_r_reg[0]\,
      I1 => \bvalid_count_r_reg[1]\,
      I2 => \bvalid_count_r_reg[2]\,
      I3 => \gaxi_full_sm.w_ready_r_i_2_n_0\,
      I4 => present_state(1),
      O => \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_pselect_f is
  port (
    ce_expnd_i_12 : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end brd_axi_fifo_mm_s_0_1_pselect_f;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_pselect_f is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\(3),
      I1 => \bus2ip_addr_i_reg[5]\(2),
      I2 => \bus2ip_addr_i_reg[5]\(0),
      I3 => \bus2ip_addr_i_reg[5]\(1),
      O => ce_expnd_i_12
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized0\ is
  port (
    ce_expnd_i_11 : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized0\ : entity is "pselect_f";
end \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized0\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized0\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\(3),
      I1 => \bus2ip_addr_i_reg[5]\(2),
      I2 => \bus2ip_addr_i_reg[5]\(1),
      I3 => \bus2ip_addr_i_reg[5]\(0),
      O => ce_expnd_i_11
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized1\ is
  port (
    ce_expnd_i_10 : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized1\ : entity is "pselect_f";
end \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized1\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized1\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\(3),
      I1 => \bus2ip_addr_i_reg[5]\(2),
      I2 => \bus2ip_addr_i_reg[5]\(0),
      I3 => \bus2ip_addr_i_reg[5]\(1),
      O => ce_expnd_i_10
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized10\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized10\ : entity is "pselect_f";
end \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized10\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized10\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\(2),
      I1 => \bus2ip_addr_i_reg[5]\(3),
      I2 => \bus2ip_addr_i_reg[5]\(0),
      I3 => \bus2ip_addr_i_reg[5]\(1),
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized11\ is
  port (
    ce_expnd_i_0 : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized11\ : entity is "pselect_f";
end \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized11\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized11\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\(1),
      I1 => \bus2ip_addr_i_reg[5]\(0),
      I2 => \bus2ip_addr_i_reg[5]\(3),
      I3 => \bus2ip_addr_i_reg[5]\(2),
      O => ce_expnd_i_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized3\ is
  port (
    ce_expnd_i_8 : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized3\ : entity is "pselect_f";
end \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized3\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized3\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\(3),
      I1 => \bus2ip_addr_i_reg[5]\(1),
      I2 => \bus2ip_addr_i_reg[5]\(0),
      I3 => \bus2ip_addr_i_reg[5]\(2),
      O => ce_expnd_i_8
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized4\ is
  port (
    ce_expnd_i_7 : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized4\ : entity is "pselect_f";
end \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized4\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized4\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\(3),
      I1 => \bus2ip_addr_i_reg[5]\(1),
      I2 => \bus2ip_addr_i_reg[5]\(0),
      I3 => \bus2ip_addr_i_reg[5]\(2),
      O => ce_expnd_i_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized5\ is
  port (
    ce_expnd_i_6 : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized5\ : entity is "pselect_f";
end \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized5\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized5\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\(3),
      I1 => \bus2ip_addr_i_reg[5]\(0),
      I2 => \bus2ip_addr_i_reg[5]\(1),
      I3 => \bus2ip_addr_i_reg[5]\(2),
      O => ce_expnd_i_6
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized6\ is
  port (
    ce_expnd_i_5 : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized6\ : entity is "pselect_f";
end \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized6\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized6\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\(3),
      I1 => \bus2ip_addr_i_reg[5]\(2),
      I2 => \bus2ip_addr_i_reg[5]\(0),
      I3 => \bus2ip_addr_i_reg[5]\(1),
      O => ce_expnd_i_5
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized7\ is
  port (
    ce_expnd_i_4 : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized7\ : entity is "pselect_f";
end \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized7\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized7\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\(2),
      I1 => \bus2ip_addr_i_reg[5]\(1),
      I2 => \bus2ip_addr_i_reg[5]\(0),
      I3 => \bus2ip_addr_i_reg[5]\(3),
      O => ce_expnd_i_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized8\ is
  port (
    ce_expnd_i_3 : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized8\ : entity is "pselect_f";
end \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized8\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized8\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\(2),
      I1 => \bus2ip_addr_i_reg[5]\(1),
      I2 => \bus2ip_addr_i_reg[5]\(3),
      I3 => \bus2ip_addr_i_reg[5]\(0),
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized9\ is
  port (
    ce_expnd_i_2 : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized9\ : entity is "pselect_f";
end \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized9\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_pselect_f__parameterized9\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\(2),
      I1 => \bus2ip_addr_i_reg[5]\(0),
      I2 => \bus2ip_addr_i_reg[5]\(3),
      I3 => \bus2ip_addr_i_reg[5]\(1),
      O => ce_expnd_i_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of brd_axi_fifo_mm_s_0_1_xpm_cdc_sync_rst : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of brd_axi_fifo_mm_s_0_1_xpm_cdc_sync_rst : entity is 5;
  attribute INIT : string;
  attribute INIT of brd_axi_fifo_mm_s_0_1_xpm_cdc_sync_rst : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of brd_axi_fifo_mm_s_0_1_xpm_cdc_sync_rst : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of brd_axi_fifo_mm_s_0_1_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of brd_axi_fifo_mm_s_0_1_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of brd_axi_fifo_mm_s_0_1_xpm_cdc_sync_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of brd_axi_fifo_mm_s_0_1_xpm_cdc_sync_rst : entity is "SYNC_RST";
end brd_axi_fifo_mm_s_0_1_xpm_cdc_sync_rst;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_blk_mem_gen_prim_wrapper is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end brd_axi_fifo_mm_s_0_1_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_blk_mem_gen_prim_wrapper is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_12\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_13\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_14\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_20\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_22\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_28\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_29\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_36\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_4\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_44\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_45\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_46\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_5\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_52\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_6\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_60\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_61\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_62\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_73\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_75\ : STD_LOGIC;
  signal doutb : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => \gc0.count_d1_reg[8]\(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 29) => B"000",
      DIADI(28 downto 24) => axi_str_rxd_tdata(11 downto 7),
      DIADI(23 downto 21) => B"000",
      DIADI(20 downto 16) => axi_str_rxd_tdata(6 downto 2),
      DIADI(15 downto 13) => B"000",
      DIADI(12 downto 11) => axi_str_rxd_tdata(1 downto 0),
      DIADI(10 downto 1) => B"1110010000",
      DIADI(0) => axi_str_rxd_tlast,
      DIBDI(31 downto 29) => B"000",
      DIBDI(28 downto 24) => axi_str_rxd_tdata(31 downto 27),
      DIBDI(23 downto 21) => B"000",
      DIBDI(20 downto 16) => axi_str_rxd_tdata(26 downto 22),
      DIBDI(15 downto 13) => B"000",
      DIBDI(12 downto 8) => axi_str_rxd_tdata(21 downto 17),
      DIBDI(7 downto 5) => B"000",
      DIBDI(4 downto 0) => axi_str_rxd_tdata(16 downto 12),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_4\,
      DOADO(30) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_5\,
      DOADO(29) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_6\,
      DOADO(28 downto 24) => D(11 downto 7),
      DOADO(23) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_12\,
      DOADO(22) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_13\,
      DOADO(21) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_14\,
      DOADO(20 downto 16) => D(6 downto 2),
      DOADO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_20\,
      DOADO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21\,
      DOADO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_22\,
      DOADO(12 downto 11) => D(1 downto 0),
      DOADO(10 downto 8) => doutb(8 downto 6),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_28\,
      DOADO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_29\,
      DOADO(5 downto 0) => doutb(5 downto 0),
      DOBDO(31) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_36\,
      DOBDO(30) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37\,
      DOBDO(29) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38\,
      DOBDO(28 downto 24) => D(31 downto 27),
      DOBDO(23) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_44\,
      DOBDO(22) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_45\,
      DOBDO(21) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_46\,
      DOBDO(20 downto 16) => D(26 downto 22),
      DOBDO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_52\,
      DOBDO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53\,
      DOBDO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54\,
      DOBDO(12 downto 8) => D(21 downto 17),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_60\,
      DOBDO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_61\,
      DOBDO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_62\,
      DOBDO(4 downto 0) => D(16 downto 12),
      DOPADOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68\,
      DOPADOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69\,
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71\,
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72\,
      DOPBDOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_73\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ENB_I,
      ENBWREN => ENA_I,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => POR_B,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => ram_full_fb_i_reg(0),
      WEBWE(6) => ram_full_fb_i_reg(0),
      WEBWE(5) => ram_full_fb_i_reg(0),
      WEBWE(4) => ram_full_fb_i_reg(0),
      WEBWE(3) => ram_full_fb_i_reg(0),
      WEBWE(2) => ram_full_fb_i_reg(0),
      WEBWE(1) => ram_full_fb_i_reg(0),
      WEBWE(0) => ram_full_fb_i_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_compare is
  port (
    comp0 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_compare;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_compare is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gcc0.gc0.count_d1_reg[8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_compare_0 is
  port (
    ram_full_i_reg : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gcc0.gc0.count_reg[8]\ : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of brd_axi_fifo_mm_s_0_1_compare_0 : entity is "compare";
end brd_axi_fifo_mm_s_0_1_compare_0;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_compare_0 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gcc0.gc0.count_reg[8]\
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => \out\,
      I2 => axi_str_rxd_tvalid,
      I3 => ram_full_fb_i_reg,
      I4 => comp1,
      I5 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      O => ram_full_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_compare_2 is
  port (
    comp0 : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[0]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[6]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of brd_axi_fifo_mm_s_0_1_compare_2 : entity is "compare";
end brd_axi_fifo_mm_s_0_1_compare_2;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_compare_2 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \gcc0.gc0.count_d1_reg[6]\,
      S(2) => \gcc0.gc0.count_d1_reg[4]\,
      S(1) => \gcc0.gc0.count_d1_reg[2]\,
      S(0) => \gcc0.gc0.count_d1_reg[0]\
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gcc0.gc0.count_d1_reg[8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_compare_3 is
  port (
    ram_empty_i_reg : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_reg[8]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    comp0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of brd_axi_fifo_mm_s_0_1_compare_3 : entity is "compare";
end brd_axi_fifo_mm_s_0_1_compare_3;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_compare_3 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gc0.count_reg[8]\
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FFF8FFF0FFF8F"
    )
        port map (
      I0 => E(0),
      I1 => comp1,
      I2 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\,
      I3 => \out\,
      I4 => ram_full_fb_i_reg(0),
      I5 => comp0,
      O => ram_empty_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_dmem is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[22]\ : out STD_LOGIC_VECTOR ( 22 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    fg_rxd_wr_length : in STD_LOGIC_VECTOR ( 21 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    \gc1.count_d2_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_full_fb_i_reg_0 : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end brd_axi_fifo_mm_s_0_1_dmem;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_dmem is
  signal RAM_reg_0_63_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_21_21_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_22_22_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_21_21_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_22_22_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_9_11_n_2 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gpr1.dout_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[10]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[12]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[13]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[14]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[15]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[16]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[17]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[18]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[19]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[20]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[21]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[22]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[9]_i_1_n_0\ : STD_LOGIC;
  signal NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_21_21_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_22_22_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_21_21_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_22_22_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_15_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_18_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_15_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_18_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_9_11 : label is "";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gpr1.dout_i[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gpr1.dout_i[10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gpr1.dout_i[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gpr1.dout_i[12]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gpr1.dout_i[13]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gpr1.dout_i[14]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gpr1.dout_i[15]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gpr1.dout_i[16]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gpr1.dout_i[17]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gpr1.dout_i[18]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gpr1.dout_i[19]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gpr1.dout_i[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gpr1.dout_i[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gpr1.dout_i[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gpr1.dout_i[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gpr1.dout_i[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gpr1.dout_i[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gpr1.dout_i[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gpr1.dout_i[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gpr1.dout_i[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gpr1.dout_i[8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gpr1.dout_i[9]_i_1\ : label is "soft_lutpair18";
begin
  SR(0) <= \^sr\(0);
RAM_reg_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => '0',
      DIB => fg_rxd_wr_length(0),
      DIC => fg_rxd_wr_length(1),
      DID => '0',
      DOA => RAM_reg_0_63_0_2_n_0,
      DOB => RAM_reg_0_63_0_2_n_1,
      DOC => RAM_reg_0_63_0_2_n_2,
      DOD => NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => fg_rxd_wr_length(11),
      DIB => fg_rxd_wr_length(12),
      DIC => fg_rxd_wr_length(13),
      DID => '0',
      DOA => RAM_reg_0_63_12_14_n_0,
      DOB => RAM_reg_0_63_12_14_n_1,
      DOC => RAM_reg_0_63_12_14_n_2,
      DOD => NLW_RAM_reg_0_63_12_14_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => fg_rxd_wr_length(14),
      DIB => fg_rxd_wr_length(15),
      DIC => fg_rxd_wr_length(16),
      DID => '0',
      DOA => RAM_reg_0_63_15_17_n_0,
      DOB => RAM_reg_0_63_15_17_n_1,
      DOC => RAM_reg_0_63_15_17_n_2,
      DOD => NLW_RAM_reg_0_63_15_17_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => fg_rxd_wr_length(17),
      DIB => fg_rxd_wr_length(18),
      DIC => fg_rxd_wr_length(19),
      DID => '0',
      DOA => RAM_reg_0_63_18_20_n_0,
      DOB => RAM_reg_0_63_18_20_n_1,
      DOC => RAM_reg_0_63_18_20_n_2,
      DOD => NLW_RAM_reg_0_63_18_20_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_21_21: unisim.vcomponents.RAM64X1D
     port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      A5 => Q(5),
      D => fg_rxd_wr_length(20),
      DPO => RAM_reg_0_63_21_21_n_0,
      DPRA0 => \gc1.count_d2_reg[6]\(0),
      DPRA1 => \gc1.count_d2_reg[6]\(1),
      DPRA2 => \gc1.count_d2_reg[6]\(2),
      DPRA3 => \gc1.count_d2_reg[6]\(3),
      DPRA4 => \gc1.count_d2_reg[6]\(4),
      DPRA5 => \gc1.count_d2_reg[6]\(5),
      SPO => NLW_RAM_reg_0_63_21_21_SPO_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_22_22: unisim.vcomponents.RAM64X1D
     port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      A5 => Q(5),
      D => fg_rxd_wr_length(21),
      DPO => RAM_reg_0_63_22_22_n_0,
      DPRA0 => \gc1.count_d2_reg[6]\(0),
      DPRA1 => \gc1.count_d2_reg[6]\(1),
      DPRA2 => \gc1.count_d2_reg[6]\(2),
      DPRA3 => \gc1.count_d2_reg[6]\(3),
      DPRA4 => \gc1.count_d2_reg[6]\(4),
      DPRA5 => \gc1.count_d2_reg[6]\(5),
      SPO => NLW_RAM_reg_0_63_22_22_SPO_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => fg_rxd_wr_length(2),
      DIB => fg_rxd_wr_length(3),
      DIC => fg_rxd_wr_length(4),
      DID => '0',
      DOA => RAM_reg_0_63_3_5_n_0,
      DOB => RAM_reg_0_63_3_5_n_1,
      DOC => RAM_reg_0_63_3_5_n_2,
      DOD => NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => fg_rxd_wr_length(5),
      DIB => fg_rxd_wr_length(6),
      DIC => fg_rxd_wr_length(7),
      DID => '0',
      DOA => RAM_reg_0_63_6_8_n_0,
      DOB => RAM_reg_0_63_6_8_n_1,
      DOC => RAM_reg_0_63_6_8_n_2,
      DOD => NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => fg_rxd_wr_length(8),
      DIB => fg_rxd_wr_length(9),
      DIC => fg_rxd_wr_length(10),
      DID => '0',
      DOA => RAM_reg_0_63_9_11_n_0,
      DOB => RAM_reg_0_63_9_11_n_1,
      DOC => RAM_reg_0_63_9_11_n_2,
      DOD => NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => '0',
      DIB => fg_rxd_wr_length(0),
      DIC => fg_rxd_wr_length(1),
      DID => '0',
      DOA => RAM_reg_64_127_0_2_n_0,
      DOB => RAM_reg_64_127_0_2_n_1,
      DOC => RAM_reg_64_127_0_2_n_2,
      DOD => NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_64_127_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => fg_rxd_wr_length(11),
      DIB => fg_rxd_wr_length(12),
      DIC => fg_rxd_wr_length(13),
      DID => '0',
      DOA => RAM_reg_64_127_12_14_n_0,
      DOB => RAM_reg_64_127_12_14_n_1,
      DOC => RAM_reg_64_127_12_14_n_2,
      DOD => NLW_RAM_reg_64_127_12_14_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_64_127_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => fg_rxd_wr_length(14),
      DIB => fg_rxd_wr_length(15),
      DIC => fg_rxd_wr_length(16),
      DID => '0',
      DOA => RAM_reg_64_127_15_17_n_0,
      DOB => RAM_reg_64_127_15_17_n_1,
      DOC => RAM_reg_64_127_15_17_n_2,
      DOD => NLW_RAM_reg_64_127_15_17_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_64_127_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => fg_rxd_wr_length(17),
      DIB => fg_rxd_wr_length(18),
      DIC => fg_rxd_wr_length(19),
      DID => '0',
      DOA => RAM_reg_64_127_18_20_n_0,
      DOB => RAM_reg_64_127_18_20_n_1,
      DOC => RAM_reg_64_127_18_20_n_2,
      DOD => NLW_RAM_reg_64_127_18_20_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_64_127_21_21: unisim.vcomponents.RAM64X1D
     port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      A5 => Q(5),
      D => fg_rxd_wr_length(20),
      DPO => RAM_reg_64_127_21_21_n_0,
      DPRA0 => \gc1.count_d2_reg[6]\(0),
      DPRA1 => \gc1.count_d2_reg[6]\(1),
      DPRA2 => \gc1.count_d2_reg[6]\(2),
      DPRA3 => \gc1.count_d2_reg[6]\(3),
      DPRA4 => \gc1.count_d2_reg[6]\(4),
      DPRA5 => \gc1.count_d2_reg[6]\(5),
      SPO => NLW_RAM_reg_64_127_21_21_SPO_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_64_127_22_22: unisim.vcomponents.RAM64X1D
     port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      A5 => Q(5),
      D => fg_rxd_wr_length(21),
      DPO => RAM_reg_64_127_22_22_n_0,
      DPRA0 => \gc1.count_d2_reg[6]\(0),
      DPRA1 => \gc1.count_d2_reg[6]\(1),
      DPRA2 => \gc1.count_d2_reg[6]\(2),
      DPRA3 => \gc1.count_d2_reg[6]\(3),
      DPRA4 => \gc1.count_d2_reg[6]\(4),
      DPRA5 => \gc1.count_d2_reg[6]\(5),
      SPO => NLW_RAM_reg_64_127_22_22_SPO_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => fg_rxd_wr_length(2),
      DIB => fg_rxd_wr_length(3),
      DIC => fg_rxd_wr_length(4),
      DID => '0',
      DOA => RAM_reg_64_127_3_5_n_0,
      DOB => RAM_reg_64_127_3_5_n_1,
      DOC => RAM_reg_64_127_3_5_n_2,
      DOD => NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => fg_rxd_wr_length(5),
      DIB => fg_rxd_wr_length(6),
      DIC => fg_rxd_wr_length(7),
      DID => '0',
      DOA => RAM_reg_64_127_6_8_n_0,
      DOB => RAM_reg_64_127_6_8_n_1,
      DOC => RAM_reg_64_127_6_8_n_2,
      DOD => NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[6]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => fg_rxd_wr_length(8),
      DIB => fg_rxd_wr_length(9),
      DIC => fg_rxd_wr_length(10),
      DID => '0',
      DOA => RAM_reg_64_127_9_11_n_0,
      DOB => RAM_reg_64_127_9_11_n_1,
      DOC => RAM_reg_64_127_9_11_n_2,
      DOD => NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => ram_full_fb_i_reg_0
    );
\gc1.count_d1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => Axi_Str_TxD_AReset,
      I1 => s_axi_aresetn,
      I2 => sig_rx_channel_reset_reg,
      O => \^sr\(0)
    );
\gpr1.dout_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_0_2_n_0,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_0_2_n_0,
      O => \gpr1.dout_i[0]_i_1_n_0\
    );
\gpr1.dout_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_9_11_n_1,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_9_11_n_1,
      O => \gpr1.dout_i[10]_i_1_n_0\
    );
\gpr1.dout_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_9_11_n_2,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_9_11_n_2,
      O => \gpr1.dout_i[11]_i_1_n_0\
    );
\gpr1.dout_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_12_14_n_0,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_12_14_n_0,
      O => \gpr1.dout_i[12]_i_1_n_0\
    );
\gpr1.dout_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_12_14_n_1,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_12_14_n_1,
      O => \gpr1.dout_i[13]_i_1_n_0\
    );
\gpr1.dout_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_12_14_n_2,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_12_14_n_2,
      O => \gpr1.dout_i[14]_i_1_n_0\
    );
\gpr1.dout_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_15_17_n_0,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_15_17_n_0,
      O => \gpr1.dout_i[15]_i_1_n_0\
    );
\gpr1.dout_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_15_17_n_1,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_15_17_n_1,
      O => \gpr1.dout_i[16]_i_1_n_0\
    );
\gpr1.dout_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_15_17_n_2,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_15_17_n_2,
      O => \gpr1.dout_i[17]_i_1_n_0\
    );
\gpr1.dout_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_18_20_n_0,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_18_20_n_0,
      O => \gpr1.dout_i[18]_i_1_n_0\
    );
\gpr1.dout_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_18_20_n_1,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_18_20_n_1,
      O => \gpr1.dout_i[19]_i_1_n_0\
    );
\gpr1.dout_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_0_2_n_1,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_0_2_n_1,
      O => \gpr1.dout_i[1]_i_1_n_0\
    );
\gpr1.dout_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_18_20_n_2,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_18_20_n_2,
      O => \gpr1.dout_i[20]_i_1_n_0\
    );
\gpr1.dout_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_21_21_n_0,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_21_21_n_0,
      O => \gpr1.dout_i[21]_i_1_n_0\
    );
\gpr1.dout_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_22_22_n_0,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_22_22_n_0,
      O => \gpr1.dout_i[22]_i_1_n_0\
    );
\gpr1.dout_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_0_2_n_2,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_0_2_n_2,
      O => \gpr1.dout_i[2]_i_1_n_0\
    );
\gpr1.dout_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_3_5_n_0,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_3_5_n_0,
      O => \gpr1.dout_i[3]_i_1_n_0\
    );
\gpr1.dout_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_3_5_n_1,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_3_5_n_1,
      O => \gpr1.dout_i[4]_i_1_n_0\
    );
\gpr1.dout_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_3_5_n_2,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_3_5_n_2,
      O => \gpr1.dout_i[5]_i_1_n_0\
    );
\gpr1.dout_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_6_8_n_0,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_6_8_n_0,
      O => \gpr1.dout_i[6]_i_1_n_0\
    );
\gpr1.dout_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_6_8_n_1,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_6_8_n_1,
      O => \gpr1.dout_i[7]_i_1_n_0\
    );
\gpr1.dout_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_6_8_n_2,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_6_8_n_2,
      O => \gpr1.dout_i[8]_i_1_n_0\
    );
\gpr1.dout_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RAM_reg_64_127_9_11_n_0,
      I1 => \gc1.count_d2_reg[6]\(6),
      I2 => RAM_reg_0_63_9_11_n_0,
      O => \gpr1.dout_i[9]_i_1_n_0\
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[0]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(0),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[10]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(10),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[11]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(11),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[12]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(12),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[13]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(13),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[14]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(14),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[15]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(15),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[16]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(16),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[17]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(17),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[18]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(18),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[19]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(19),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[1]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(1),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[20]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(20),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[21]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(21),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[22]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(22),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[2]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(2),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[3]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(3),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[4]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(4),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[5]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(5),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[6]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(6),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[7]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(7),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[8]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(8),
      R => \^sr\(0)
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gpr1.dout_i[9]_i_1_n_0\,
      Q => \goreg_dm.dout_i_reg[22]\(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_rd_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[8]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[4]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i_reg : out STD_LOGIC;
    \gcc0.gc0.count_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_rd_bin_cntr;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_rd_bin_cntr is
  signal \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gc0.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 8 to 8 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gc0.count[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gc0.count[8]_i_1\ : label is "soft_lutpair3";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) <= \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(8 downto 0);
  Q(7 downto 0) <= \^q\(7 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__1\(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__1\(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \plusOp__1\(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \plusOp__1\(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => \plusOp__1\(4)
    );
\gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \plusOp__1\(5)
    );
\gc0.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gc0.count[8]_i_2_n_0\,
      O => \plusOp__1\(6)
    );
\gc0.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \gc0.count[8]_i_2_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => \plusOp__1\(7)
    );
\gc0.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => rd_pntr_plus1(8),
      I1 => \gc0.count[8]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \plusOp__1\(8)
    );
\gc0.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \gc0.count[8]_i_2_n_0\
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(0),
      R => SR(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(1),
      R => SR(0)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(2),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(2),
      R => SR(0)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(3),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(3),
      R => SR(0)
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(4),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(4),
      R => SR(0)
    );
\gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(5),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(5),
      R => SR(0)
    );
\gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(6),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(6),
      R => SR(0)
    );
\gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(7),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(7),
      R => SR(0)
    );
\gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus1(8),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(8),
      R => SR(0)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(0),
      Q => \^q\(0),
      S => SR(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(1),
      Q => \^q\(1),
      R => SR(0)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(2),
      Q => \^q\(2),
      R => SR(0)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(3),
      Q => \^q\(3),
      R => SR(0)
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(4),
      Q => \^q\(4),
      R => SR(0)
    );
\gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(5),
      Q => \^q\(5),
      R => SR(0)
    );
\gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(6),
      Q => \^q\(6),
      R => SR(0)
    );
\gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(7),
      Q => \^q\(7),
      R => SR(0)
    );
\gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(8),
      Q => rd_pntr_plus1(8),
      R => SR(0)
    );
\gmux.gm[0].gm1.m1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(0),
      I1 => \gcc0.gc0.count_reg[7]\(0),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(1),
      I3 => \gcc0.gc0.count_reg[7]\(1),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(2),
      I1 => \gcc0.gc0.count_reg[7]\(2),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(3),
      I3 => \gcc0.gc0.count_reg[7]\(3),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(4),
      I1 => \gcc0.gc0.count_reg[7]\(4),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(5),
      I3 => \gcc0.gc0.count_reg[7]\(5),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(6),
      I1 => \gcc0.gc0.count_reg[7]\(6),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(7),
      I3 => \gcc0.gc0.count_reg[7]\(7),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rd_pntr_plus1(8),
      I1 => \gcc0.gc0.count_d1_reg[8]\(0),
      O => ram_empty_i_reg
    );
\plusOp_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(7),
      I1 => \gcc0.gc0.count_reg[7]\(7),
      O => \gdiff.gcry_1_sym.diff_pntr_pad_reg[8]\(3)
    );
\plusOp_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(6),
      I1 => \gcc0.gc0.count_reg[7]\(6),
      O => \gdiff.gcry_1_sym.diff_pntr_pad_reg[8]\(2)
    );
\plusOp_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(5),
      I1 => \gcc0.gc0.count_reg[7]\(5),
      O => \gdiff.gcry_1_sym.diff_pntr_pad_reg[8]\(1)
    );
\plusOp_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(4),
      I1 => \gcc0.gc0.count_reg[7]\(4),
      O => \gdiff.gcry_1_sym.diff_pntr_pad_reg[8]\(0)
    );
\plusOp_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(3),
      I1 => \gcc0.gc0.count_reg[7]\(3),
      O => \gdiff.gcry_1_sym.diff_pntr_pad_reg[4]\(3)
    );
\plusOp_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(2),
      I1 => \gcc0.gc0.count_reg[7]\(2),
      O => \gdiff.gcry_1_sym.diff_pntr_pad_reg[4]\(2)
    );
\plusOp_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(1),
      I1 => \gcc0.gc0.count_reg[7]\(1),
      O => \gdiff.gcry_1_sym.diff_pntr_pad_reg[4]\(1)
    );
\plusOp_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(0),
      I1 => \gcc0.gc0.count_reg[7]\(0),
      O => \gdiff.gcry_1_sym.diff_pntr_pad_reg[4]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_rd_bin_cntr__parameterized0\ is
  port (
    ram_empty_i_reg : out STD_LOGIC;
    ram_full_i_reg : out STD_LOGIC;
    \gpr1.dout_i_reg[22]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \gc1.count_d2_reg[6]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gcc0.gc0.count_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_rd_bin_cntr__parameterized0\ : entity is "rd_bin_cntr";
end \brd_axi_fifo_mm_s_0_1_rd_bin_cntr__parameterized0\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_rd_bin_cntr__parameterized0\ is
  signal \gc1.count[6]_i_2_n_0\ : STD_LOGIC;
  signal \^gc1.count_d2_reg[6]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^gpr1.dout_i_reg[22]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal ram_full_fb_i_i_3_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_4_n_0 : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rd_pntr_plus2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc1.count[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gc1.count[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gc1.count[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gc1.count[6]_i_2\ : label is "soft_lutpair9";
begin
  \gc1.count_d2_reg[6]_0\(4 downto 0) <= \^gc1.count_d2_reg[6]_0\(4 downto 0);
  \gpr1.dout_i_reg[22]\(6 downto 0) <= \^gpr1.dout_i_reg[22]\(6 downto 0);
\gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      O => plusOp(0)
    );
\gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      O => plusOp(1)
    );
\gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => rd_pntr_plus2(2),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(0),
      O => plusOp(2)
    );
\gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => rd_pntr_plus2(3),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(2),
      O => plusOp(3)
    );
\gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => rd_pntr_plus2(4),
      I1 => rd_pntr_plus2(2),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(0),
      I4 => rd_pntr_plus2(3),
      O => plusOp(4)
    );
\gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => rd_pntr_plus2(5),
      I1 => rd_pntr_plus2(3),
      I2 => rd_pntr_plus2(0),
      I3 => rd_pntr_plus2(1),
      I4 => rd_pntr_plus2(2),
      I5 => rd_pntr_plus2(4),
      O => plusOp(5)
    );
\gc1.count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => rd_pntr_plus2(6),
      I1 => \gc1.count[6]_i_2_n_0\,
      I2 => rd_pntr_plus2(5),
      O => plusOp(6)
    );
\gc1.count[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => rd_pntr_plus2(4),
      I1 => rd_pntr_plus2(2),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(0),
      I4 => rd_pntr_plus2(3),
      O => \gc1.count[6]_i_2_n_0\
    );
\gc1.count_d1_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(0),
      Q => rd_pntr_plus1(0),
      S => SS(0)
    );
\gc1.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(1),
      Q => rd_pntr_plus1(1),
      R => SS(0)
    );
\gc1.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(2),
      Q => \^gc1.count_d2_reg[6]_0\(0),
      R => SS(0)
    );
\gc1.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(3),
      Q => \^gc1.count_d2_reg[6]_0\(1),
      R => SS(0)
    );
\gc1.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(4),
      Q => \^gc1.count_d2_reg[6]_0\(2),
      R => SS(0)
    );
\gc1.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(5),
      Q => \^gc1.count_d2_reg[6]_0\(3),
      R => SS(0)
    );
\gc1.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(6),
      Q => \^gc1.count_d2_reg[6]_0\(4),
      R => SS(0)
    );
\gc1.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus1(0),
      Q => \^gpr1.dout_i_reg[22]\(0),
      R => SS(0)
    );
\gc1.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus1(1),
      Q => \^gpr1.dout_i_reg[22]\(1),
      R => SS(0)
    );
\gc1.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^gc1.count_d2_reg[6]_0\(0),
      Q => \^gpr1.dout_i_reg[22]\(2),
      R => SS(0)
    );
\gc1.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^gc1.count_d2_reg[6]_0\(1),
      Q => \^gpr1.dout_i_reg[22]\(3),
      R => SS(0)
    );
\gc1.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^gc1.count_d2_reg[6]_0\(2),
      Q => \^gpr1.dout_i_reg[22]\(4),
      R => SS(0)
    );
\gc1.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^gc1.count_d2_reg[6]_0\(3),
      Q => \^gpr1.dout_i_reg[22]\(5),
      R => SS(0)
    );
\gc1.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^gc1.count_d2_reg[6]_0\(4),
      Q => \^gpr1.dout_i_reg[22]\(6),
      R => SS(0)
    );
\gc1.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(0),
      Q => rd_pntr_plus2(0),
      R => SS(0)
    );
\gc1.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(1),
      Q => rd_pntr_plus2(1),
      S => SS(0)
    );
\gc1.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(2),
      Q => rd_pntr_plus2(2),
      R => SS(0)
    );
\gc1.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(3),
      Q => rd_pntr_plus2(3),
      R => SS(0)
    );
\gc1.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(4),
      Q => rd_pntr_plus2(4),
      R => SS(0)
    );
\gc1.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(5),
      Q => rd_pntr_plus2(5),
      R => SS(0)
    );
\gc1.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(6),
      Q => rd_pntr_plus2(6),
      R => SS(0)
    );
ram_empty_fb_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => \gcc0.gc0.count_d1_reg[1]\(1),
      I2 => rd_pntr_plus1(0),
      I3 => \gcc0.gc0.count_d1_reg[1]\(0),
      O => ram_empty_i_reg
    );
ram_full_fb_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => ram_full_fb_i_i_3_n_0,
      I1 => \^gpr1.dout_i_reg[22]\(2),
      I2 => \gcc0.gc0.count_reg[6]\(2),
      I3 => \^gpr1.dout_i_reg[22]\(3),
      I4 => \gcc0.gc0.count_reg[6]\(3),
      I5 => ram_full_fb_i_i_4_n_0,
      O => ram_full_i_reg
    );
ram_full_fb_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[22]\(1),
      I1 => \gcc0.gc0.count_reg[6]\(1),
      I2 => \^gpr1.dout_i_reg[22]\(0),
      I3 => \gcc0.gc0.count_reg[6]\(0),
      O => ram_full_fb_i_i_3_n_0
    );
ram_full_fb_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[22]\(6),
      I1 => \gcc0.gc0.count_reg[6]\(6),
      I2 => \gcc0.gc0.count_reg[6]\(4),
      I3 => \^gpr1.dout_i_reg[22]\(4),
      I4 => \gcc0.gc0.count_reg[6]\(5),
      I5 => \^gpr1.dout_i_reg[22]\(5),
      O => ram_full_fb_i_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_rd_fwft is
  port (
    \out\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_full_i_reg : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rd_rlen : out STD_LOGIC;
    \sig_ip2bus_data_reg[29]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[28]\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \count_reg[5]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \goreg_dm.dout_i_reg[11]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg[8]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    \gc1.count_d2_reg[2]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[6]\ : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_rd_fwft;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_rd_fwft is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal \aempty_fwft_fb_i_i_1__0_n_0\ : STD_LOGIC;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal \empty_fwft_fb_i_i_1__0_n_0\ : STD_LOGIC;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal \gpregsm1.curr_fwft_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s2mm_prmry_reset_out_n\ : STD_LOGIC;
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  E(0) <= \^e\(0);
  \out\ <= empty_fwft_i;
  s2mm_prmry_reset_out_n <= \^s2mm_prmry_reset_out_n\;
\aempty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF80EB00FFFFFFFF"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => aempty_fwft_fb_i,
      I4 => sig_rd_rlen_reg,
      I5 => \^s2mm_prmry_reset_out_n\,
      O => \aempty_fwft_fb_i_i_1__0_n_0\
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \aempty_fwft_fb_i_i_1__0_n_0\,
      Q => aempty_fwft_fb_i,
      R => '0'
    );
aempty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \aempty_fwft_fb_i_i_1__0_n_0\,
      Q => aempty_fwft_i,
      R => '0'
    );
\empty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF08FFFF"
    )
        port map (
      I0 => sig_rd_rlen_reg,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => empty_fwft_fb_i,
      I4 => \^s2mm_prmry_reset_out_n\,
      O => \empty_fwft_fb_i_i_1__0_n_0\
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \empty_fwft_fb_i_i_1__0_n_0\,
      Q => empty_fwft_fb_i,
      R => '0'
    );
\empty_fwft_fb_o_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => sig_rd_rlen_reg,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb_o_i,
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      S => SS(0)
    );
empty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \empty_fwft_fb_i_i_1__0_n_0\,
      Q => empty_fwft_i,
      R => '0'
    );
\gc1.count_d1[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5515"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => sig_rd_rlen_reg,
      O => \^e\(0)
    );
\goreg_dm.dout_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => sig_rd_rlen_reg,
      I2 => curr_fwft_state(0),
      O => \goreg_dm.dout_i_reg[22]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => sig_rd_rlen_reg,
      I2 => curr_fwft_state(0),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => sig_rd_rlen_reg,
      I3 => ram_empty_fb_i_reg,
      O => \gpregsm1.curr_fwft_state[1]_i_1__0_n_0\
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => SS(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gpregsm1.curr_fwft_state[1]_i_1__0_n_0\,
      Q => curr_fwft_state(1),
      R => SS(0)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => SS(0)
    );
\ram_full_fb_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA2022002220"
    )
        port map (
      I0 => \^s2mm_prmry_reset_out_n\,
      I1 => \^e\(0),
      I2 => rx_len_wr_en,
      I3 => ram_full_fb_i_reg,
      I4 => \gc1.count_d2_reg[2]\,
      I5 => \gcc0.gc0.count_d1_reg[6]\,
      O => ram_full_i_reg
    );
s2mm_prmry_reset_out_n_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => sig_rx_channel_reset_reg,
      I1 => s_axi_aresetn,
      I2 => Axi_Str_TxD_AReset,
      O => \^s2mm_prmry_reset_out_n\
    );
\sig_ip2bus_data[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02030200"
    )
        port map (
      I0 => \count_reg[8]\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      I2 => sig_rx_channel_reset_reg,
      I3 => empty_fwft_i,
      I4 => \goreg_dm.dout_i_reg[11]\(4),
      O => D(1)
    );
\sig_ip2bus_data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101011110000010"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      I1 => sig_rx_channel_reset_reg,
      I2 => empty_fwft_i,
      I3 => \grxd.rx_partial_pkt_reg\,
      I4 => Q(3),
      I5 => \goreg_dm.dout_i_reg[11]\(3),
      O => D(0)
    );
\sig_ip2bus_data[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222220200202000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      I1 => sig_rx_channel_reset_reg,
      I2 => empty_fwft_i,
      I3 => \count_reg[5]\,
      I4 => Q(2),
      I5 => \goreg_dm.dout_i_reg[11]\(2),
      O => \sig_ip2bus_data_reg[23]\
    );
\sig_ip2bus_data[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A80"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      I1 => Q(1),
      I2 => empty_fwft_i,
      I3 => \goreg_dm.dout_i_reg[11]\(1),
      I4 => sig_rx_channel_reset_reg,
      O => \sig_ip2bus_data_reg[28]\
    );
\sig_ip2bus_data[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A80"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      I1 => Q(0),
      I2 => empty_fwft_i,
      I3 => \goreg_dm.dout_i_reg[11]\(0),
      I4 => sig_rx_channel_reset_reg,
      O => \sig_ip2bus_data_reg[29]\
    );
sig_rd_rlen_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_rx_channel_reset_reg_0,
      I1 => empty_fwft_i,
      O => sig_rd_rlen
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_rd_fwft_1 is
  port (
    \goreg_bm.dout_i_reg[40]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gaxi_full_sm.r_valid_r1_reg\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]_0\ : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \count_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of brd_axi_fifo_mm_s_0_1_rd_fwft_1 : entity is "rd_fwft";
end brd_axi_fifo_mm_s_0_1_rd_fwft_1;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_rd_fwft_1 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_fb_i_i_1_n_0 : STD_LOGIC;
  signal aempty_fwft_fb_i_i_2_n_0 : STD_LOGIC;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_i_i_1_n_0 : STD_LOGIC;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal \gpregsm1.curr_fwft_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gpregsm1.curr_fwft_state[1]_i_1_n_0\ : STD_LOGIC;
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF80EB00FFFFFFFF"
    )
        port map (
      I0 => \out\,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => aempty_fwft_fb_i,
      I4 => aempty_fwft_fb_i_i_2_n_0,
      I5 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]_0\,
      O => aempty_fwft_fb_i_i_1_n_0
    );
aempty_fwft_fb_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => \gaxi_full_sm.r_valid_r1_reg\,
      I2 => s_axi4_rready,
      O => aempty_fwft_fb_i_i_2_n_0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => aempty_fwft_fb_i_i_1_n_0,
      Q => aempty_fwft_fb_i,
      R => '0'
    );
aempty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => aempty_fwft_fb_i_i_1_n_0,
      Q => aempty_fwft_i,
      R => '0'
    );
\count[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => \count_reg[1]\(0),
      I1 => empty_fwft_fb_o_i,
      I2 => \gaxi_full_sm.r_valid_r1_reg\,
      I3 => s_axi4_rready,
      I4 => user_valid,
      O => S(0)
    );
\count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => ram_full_fb_i_reg(0),
      I1 => empty_fwft_fb_o_i,
      I2 => \gaxi_full_sm.r_valid_r1_reg\,
      I3 => s_axi4_rready,
      I4 => user_valid,
      O => E(0)
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFCFCFFFEFFFC"
    )
        port map (
      I0 => aempty_fwft_fb_i_i_2_n_0,
      I1 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\(1),
      I2 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\(0),
      I3 => empty_fwft_fb_i,
      I4 => curr_fwft_state(0),
      I5 => curr_fwft_state(1),
      O => empty_fwft_fb_i_i_1_n_0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => empty_fwft_fb_i_i_1_n_0,
      Q => empty_fwft_fb_i,
      R => '0'
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0800"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \gaxi_full_sm.r_valid_r1_reg\,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      I4 => empty_fwft_fb_o_i,
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      S => SR(0)
    );
empty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => empty_fwft_fb_i_i_1_n_0,
      Q => empty_fwft_i,
      R => '0'
    );
\goreg_bm.dout_i[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7555000000000000"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => empty_fwft_fb_o_i,
      I2 => \gaxi_full_sm.r_valid_r1_reg\,
      I3 => s_axi4_rready,
      I4 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]_0\,
      I5 => curr_fwft_state(1),
      O => \goreg_bm.dout_i_reg[40]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEEEE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => empty_fwft_fb_o_i,
      I3 => \gaxi_full_sm.r_valid_r1_reg\,
      I4 => s_axi4_rready,
      O => \gpregsm1.curr_fwft_state[0]_i_1__0_n_0\
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7000000FFFFFFFF"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \gaxi_full_sm.r_valid_r1_reg\,
      I2 => empty_fwft_fb_o_i,
      I3 => curr_fwft_state(0),
      I4 => curr_fwft_state(1),
      I5 => \out\,
      O => \gpregsm1.curr_fwft_state[1]_i_1_n_0\
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gpregsm1.curr_fwft_state[0]_i_1__0_n_0\,
      Q => curr_fwft_state(0),
      R => SR(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gpregsm1.curr_fwft_state[1]_i_1_n_0\,
      Q => curr_fwft_state(1),
      R => SR(0)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gpregsm1.curr_fwft_state[0]_i_1__0_n_0\,
      Q => user_valid,
      R => SR(0)
    );
\greg.ram_rd_en_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040555555555555"
    )
        port map (
      I0 => \out\,
      I1 => s_axi4_rready,
      I2 => \gaxi_full_sm.r_valid_r1_reg\,
      I3 => empty_fwft_fb_o_i,
      I4 => curr_fwft_state(0),
      I5 => curr_fwft_state(1),
      O => \gc0.count_d1_reg[8]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_rd_pe_ss is
  port (
    p_10_out : out STD_LOGIC;
    \gpfs.prog_full_i_reg\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_pntr_inv_pad : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gcc0.gc0.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[6]\ : in STD_LOGIC;
    p_9_out : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_rd_pe_ss;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_rd_pe_ss is
  signal diff_pntr_pad : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \gntv_or_sync_fifo.gl0.wr/gwss.gpf.wrpf/ram_rd_en_i\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr/gwss.gpf.wrpf/ram_wr_en_i\ : STD_LOGIC;
  signal \gpes.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \gpes.prog_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gpes.prog_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \^p_10_out\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_carry__1_n_7\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of plusOp_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  p_10_out <= \^p_10_out\;
\gpes.prog_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFEEEFEFE"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\(1),
      I1 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\(0),
      I2 => \^p_10_out\,
      I3 => \gpes.prog_empty_i_i_2_n_0\,
      I4 => \gntv_or_sync_fifo.gl0.wr/gwss.gpf.wrpf/ram_wr_en_i\,
      I5 => \gntv_or_sync_fifo.gl0.wr/gwss.gpf.wrpf/ram_rd_en_i\,
      O => \gpes.prog_empty_i_i_1_n_0\
    );
\gpes.prog_empty_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => diff_pntr_pad(6),
      I1 => diff_pntr_pad(9),
      I2 => diff_pntr_pad(2),
      I3 => \gpes.prog_empty_i_i_3_n_0\,
      O => \gpes.prog_empty_i_i_2_n_0\
    );
\gpes.prog_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => diff_pntr_pad(7),
      I1 => diff_pntr_pad(3),
      I2 => diff_pntr_pad(1),
      I3 => diff_pntr_pad(8),
      I4 => diff_pntr_pad(4),
      I5 => diff_pntr_pad(5),
      O => \gpes.prog_empty_i_i_3_n_0\
    );
\gpes.prog_empty_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gpes.prog_empty_i_i_1_n_0\,
      Q => \^p_10_out\,
      R => '0'
    );
\gpfs.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45550400"
    )
        port map (
      I0 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      I1 => \gntv_or_sync_fifo.gl0.wr/gwss.gpf.wrpf/ram_wr_en_i\,
      I2 => \gntv_or_sync_fifo.gl0.wr/gwss.gpf.wrpf/ram_rd_en_i\,
      I3 => \gdiff.gcry_1_sym.diff_pntr_pad_reg[6]\,
      I4 => p_9_out,
      O => \gpfs.prog_full_i_reg\
    );
\greg.gpcry_sym.diff_pntr_pad_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp_carry_n_7,
      Q => diff_pntr_pad(1),
      R => SR(0)
    );
\greg.gpcry_sym.diff_pntr_pad_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp_carry_n_6,
      Q => diff_pntr_pad(2),
      R => SR(0)
    );
\greg.gpcry_sym.diff_pntr_pad_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp_carry_n_5,
      Q => diff_pntr_pad(3),
      R => SR(0)
    );
\greg.gpcry_sym.diff_pntr_pad_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp_carry_n_4,
      Q => diff_pntr_pad(4),
      R => SR(0)
    );
\greg.gpcry_sym.diff_pntr_pad_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \plusOp_carry__0_n_7\,
      Q => diff_pntr_pad(5),
      R => SR(0)
    );
\greg.gpcry_sym.diff_pntr_pad_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \plusOp_carry__0_n_6\,
      Q => diff_pntr_pad(6),
      R => SR(0)
    );
\greg.gpcry_sym.diff_pntr_pad_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \plusOp_carry__0_n_5\,
      Q => diff_pntr_pad(7),
      R => SR(0)
    );
\greg.gpcry_sym.diff_pntr_pad_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \plusOp_carry__0_n_4\,
      Q => diff_pntr_pad(8),
      R => SR(0)
    );
\greg.gpcry_sym.diff_pntr_pad_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \plusOp_carry__1_n_7\,
      Q => diff_pntr_pad(9),
      R => SR(0)
    );
\greg.ram_rd_en_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => E(0),
      Q => \gntv_or_sync_fifo.gl0.wr/gwss.gpf.wrpf/ram_rd_en_i\,
      R => SR(0)
    );
\greg.ram_wr_en_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_full_fb_i_reg(0),
      Q => \gntv_or_sync_fifo.gl0.wr/gwss.gpf.wrpf/ram_wr_en_i\,
      R => SR(0)
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => rd_pntr_inv_pad(0),
      DI(3 downto 0) => Q(3 downto 0),
      O(3) => plusOp_carry_n_4,
      O(2) => plusOp_carry_n_5,
      O(1) => plusOp_carry_n_6,
      O(0) => plusOp_carry_n_7,
      S(3 downto 0) => S(3 downto 0)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3) => \plusOp_carry__0_n_4\,
      O(2) => \plusOp_carry__0_n_5\,
      O(1) => \plusOp_carry__0_n_6\,
      O(0) => \plusOp_carry__0_n_7\,
      S(3 downto 0) => \gcc0.gc0.count_d1_reg[7]\(3 downto 0)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3 downto 0) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_plusOp_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \plusOp_carry__1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \gcc0.gc0.count_d1_reg[8]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_rd_status_flags_ss__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_fb_i_reg_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_rd_status_flags_ss__parameterized0\ : entity is "rd_status_flags_ss";
end \brd_axi_fifo_mm_s_0_1_rd_status_flags_ss__parameterized0\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_rd_status_flags_ss__parameterized0\ is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      Q => ram_empty_fb_i,
      R => '0'
    );
ram_empty_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      Q => ram_empty_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_updn_cntr is
  port (
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \sig_ip2bus_data_reg[25]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[22]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[20]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[19]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[12]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[24]\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \goreg_dm.dout_i_reg[18]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \grxd.rx_partial_pkt_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC;
    rx_complete : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_sm.r_valid_r1_reg\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_updn_cntr;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_updn_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_2_n_0\ : STD_LOGIC;
  signal \count[4]_i_3_n_0\ : STD_LOGIC;
  signal \count[4]_i_4_n_0\ : STD_LOGIC;
  signal \count[4]_i_5_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_i_3_n_0\ : STD_LOGIC;
  signal \count[8]_i_4_n_0\ : STD_LOGIC;
  signal \count[8]_i_5_n_0\ : STD_LOGIC;
  signal \count[9]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[9]_i_2_n_7\ : STD_LOGIC;
  signal \sig_ip2bus_data[22]_i_7_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[25]_i_3_n_0\ : STD_LOGIC;
  signal \^sig_ip2bus_data_reg[19]\ : STD_LOGIC;
  signal \sig_register_array[0][2]_i_6_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][2]_i_7_n_0\ : STD_LOGIC;
  signal \NLW_count_reg[9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \count_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count_reg[9]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sig_ip2bus_data[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[20]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[25]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sig_register_array[0][2]_i_7\ : label is "soft_lutpair1";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  \sig_ip2bus_data_reg[19]\ <= \^sig_ip2bus_data_reg[19]\;
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count[0]_i_1_n_0\
    );
\count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \count[4]_i_2_n_0\
    );
\count[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \count[4]_i_3_n_0\
    );
\count[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \count[4]_i_4_n_0\
    );
\count[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \count[4]_i_5_n_0\
    );
\count[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      O => \count[8]_i_2_n_0\
    );
\count[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \count[8]_i_3_n_0\
    );
\count[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \count[8]_i_4_n_0\
    );
\count[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \count[8]_i_5_n_0\
    );
\count[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => \count[9]_i_3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \count[0]_i_1_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \count_reg[4]_i_1_n_7\,
      Q => \^q\(1),
      R => SR(0)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \count_reg[4]_i_1_n_6\,
      Q => \^q\(2),
      R => SR(0)
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \count_reg[4]_i_1_n_5\,
      Q => \^q\(3),
      R => SR(0)
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \count_reg[4]_i_1_n_4\,
      Q => \^q\(4),
      R => SR(0)
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => \^q\(0),
      DI(3 downto 1) => \^q\(3 downto 1),
      DI(0) => \count[4]_i_2_n_0\,
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3) => \count[4]_i_3_n_0\,
      S(2) => \count[4]_i_4_n_0\,
      S(1) => \count[4]_i_5_n_0\,
      S(0) => S(0)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \count_reg[8]_i_1_n_7\,
      Q => \^q\(5),
      R => SR(0)
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \count_reg[8]_i_1_n_6\,
      Q => \^q\(6),
      R => SR(0)
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \count_reg[8]_i_1_n_5\,
      Q => \^q\(7),
      R => SR(0)
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \count_reg[8]_i_1_n_4\,
      Q => \^q\(8),
      R => SR(0)
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3) => \count[8]_i_2_n_0\,
      S(2) => \count[8]_i_3_n_0\,
      S(1) => \count[8]_i_4_n_0\,
      S(0) => \count[8]_i_5_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \count_reg[9]_i_2_n_7\,
      Q => \^q\(9),
      R => SR(0)
    );
\count_reg[9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_reg[9]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_reg[9]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_reg[9]_i_2_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \count[9]_i_3_n_0\
    );
\sig_ip2bus_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101FF0000000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^sig_ip2bus_data_reg[19]\,
      I3 => \goreg_dm.dout_i_reg[18]\(10),
      I4 => \out\,
      I5 => sig_rx_channel_reset_reg_0,
      O => D(6)
    );
\sig_ip2bus_data[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBA"
    )
        port map (
      I0 => \sig_register_array[0][2]_i_7_n_0\,
      I1 => rx_complete,
      I2 => \grxd.rx_partial_pkt_reg_0\,
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => \^q\(6),
      O => \^sig_ip2bus_data_reg[19]\
    );
\sig_ip2bus_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000100FF000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^sig_ip2bus_data_reg[19]\,
      I3 => sig_rx_channel_reset_reg_0,
      I4 => \goreg_dm.dout_i_reg[18]\(9),
      I5 => \out\,
      O => D(5)
    );
\sig_ip2bus_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000100FF000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^sig_ip2bus_data_reg[19]\,
      I3 => sig_rx_channel_reset_reg_0,
      I4 => \goreg_dm.dout_i_reg[18]\(8),
      I5 => \out\,
      O => D(4)
    );
\sig_ip2bus_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000100FF000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^sig_ip2bus_data_reg[19]\,
      I3 => sig_rx_channel_reset_reg_0,
      I4 => \goreg_dm.dout_i_reg[18]\(7),
      I5 => \out\,
      O => D(3)
    );
\sig_ip2bus_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000100FF000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^sig_ip2bus_data_reg[19]\,
      I3 => sig_rx_channel_reset_reg_0,
      I4 => \goreg_dm.dout_i_reg[18]\(6),
      I5 => \out\,
      O => D(2)
    );
\sig_ip2bus_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000100FF000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^sig_ip2bus_data_reg[19]\,
      I3 => sig_rx_channel_reset_reg_0,
      I4 => \goreg_dm.dout_i_reg[18]\(5),
      I5 => \out\,
      O => D(1)
    );
\sig_ip2bus_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000100FF000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^sig_ip2bus_data_reg[19]\,
      I3 => sig_rx_channel_reset_reg_0,
      I4 => \goreg_dm.dout_i_reg[18]\(4),
      I5 => \out\,
      O => D(0)
    );
\sig_ip2bus_data[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\,
      I1 => \^sig_ip2bus_data_reg[19]\,
      I2 => \^q\(8),
      I3 => \^q\(9),
      O => \sig_ip2bus_data_reg[12]\
    );
\sig_ip2bus_data[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^sig_ip2bus_data_reg[19]\,
      I2 => \^q\(9),
      O => \sig_ip2bus_data_reg[20]\
    );
\sig_ip2bus_data[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF3F305555"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[18]\(3),
      I1 => \^q\(7),
      I2 => \grxd.rx_partial_pkt_reg\,
      I3 => \sig_ip2bus_data[22]_i_7_n_0\,
      I4 => \out\,
      I5 => sig_rx_channel_reset_reg,
      O => \sig_ip2bus_data_reg[22]\
    );
\sig_ip2bus_data[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(6),
      O => \sig_ip2bus_data[22]_i_7_n_0\
    );
\sig_ip2bus_data[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000051"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grxd.rx_partial_pkt_reg_0\,
      I2 => rx_complete,
      I3 => \^q\(4),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \sig_ip2bus_data_reg[23]\
    );
\sig_ip2bus_data[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF333C5555"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[18]\(2),
      I1 => \^q\(5),
      I2 => \grxd.rx_partial_pkt_reg\,
      I3 => \sig_register_array[0][2]_i_7_n_0\,
      I4 => \out\,
      I5 => sig_rx_channel_reset_reg,
      O => \sig_ip2bus_data_reg[24]\
    );
\sig_ip2bus_data[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0F3C5555"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[18]\(1),
      I1 => \grxd.rx_partial_pkt_reg\,
      I2 => \^q\(4),
      I3 => \sig_ip2bus_data[25]_i_3_n_0\,
      I4 => \out\,
      I5 => sig_rx_channel_reset_reg,
      O => \sig_ip2bus_data_reg[25]\
    );
\sig_ip2bus_data[25]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \sig_ip2bus_data[25]_i_3_n_0\
    );
\sig_ip2bus_data[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF333C5555"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[18]\(0),
      I1 => \^q\(3),
      I2 => \grxd.rx_partial_pkt_reg\,
      I3 => \^q\(2),
      I4 => \out\,
      I5 => sig_rx_channel_reset_reg,
      O => \sig_ip2bus_data_reg[26]\
    );
\sig_register_array[0][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \sig_register_array[0][2]_i_6_n_0\,
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \^q\(0),
      I4 => sig_rx_channel_reset_reg,
      I5 => \sig_register_array[0][2]_i_7_n_0\,
      O => \sig_register_array_reg[0][2]\
    );
\sig_register_array[0][2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \gaxi_full_sm.r_valid_r1_reg\,
      I1 => s_axi4_rready,
      I2 => \^q\(1),
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \sig_register_array[0][2]_i_6_n_0\
    );
\sig_register_array[0][2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      O => \sig_register_array[0][2]_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_wr_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i_reg : out STD_LOGIC;
    ram_empty_i_reg_0 : out STD_LOGIC;
    ram_empty_i_reg_1 : out STD_LOGIC;
    ram_empty_i_reg_2 : out STD_LOGIC;
    \greg.gpcry_sym.diff_pntr_pad_reg[8]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg : out STD_LOGIC;
    ram_full_i_reg_0 : out STD_LOGIC;
    \greg.gpcry_sym.diff_pntr_pad_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg_3 : out STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gc0.count_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_wr_bin_cntr;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_wr_bin_cntr is
  signal \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gcc0.gc0.count[8]_i_2_n_0\ : STD_LOGIC;
  signal p_13_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[1]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[8]_i_1\ : label is "soft_lutpair6";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) <= \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(8 downto 0);
  Q(7 downto 0) <= \^q\(7 downto 0);
\gcc0.gc0.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__2\(0)
    );
\gcc0.gc0.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__2\(1)
    );
\gcc0.gc0.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \plusOp__2\(2)
    );
\gcc0.gc0.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \plusOp__2\(3)
    );
\gcc0.gc0.count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => \plusOp__2\(4)
    );
\gcc0.gc0.count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \plusOp__2\(5)
    );
\gcc0.gc0.count[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gcc0.gc0.count[8]_i_2_n_0\,
      O => \plusOp__2\(6)
    );
\gcc0.gc0.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \gcc0.gc0.count[8]_i_2_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => \plusOp__2\(7)
    );
\gcc0.gc0.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => p_13_out(8),
      I1 => \gcc0.gc0.count[8]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \plusOp__2\(8)
    );
\gcc0.gc0.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \gcc0.gc0.count[8]_i_2_n_0\
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(0),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(1),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(2),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(2),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(3),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(3),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(4),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(4),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(5),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(5),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(6),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(6),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(7),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(7),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_13_out(8),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(8),
      R => SR(0)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(0),
      Q => \^q\(0),
      S => SR(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(1),
      Q => \^q\(1),
      R => SR(0)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(2),
      Q => \^q\(2),
      R => SR(0)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(3),
      Q => \^q\(3),
      R => SR(0)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(4),
      Q => \^q\(4),
      R => SR(0)
    );
\gcc0.gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(5),
      Q => \^q\(5),
      R => SR(0)
    );
\gcc0.gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(6),
      Q => \^q\(6),
      R => SR(0)
    );
\gcc0.gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(7),
      Q => \^q\(7),
      R => SR(0)
    );
\gcc0.gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__2\(8),
      Q => p_13_out(8),
      R => SR(0)
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(0),
      I1 => \gc0.count_d1_reg[8]\(0),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(1),
      I3 => \gc0.count_d1_reg[8]\(1),
      O => v1_reg_0(0)
    );
\gmux.gm[0].gm1.m1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(0),
      I1 => \gc0.count_reg[7]\(0),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(1),
      I3 => \gc0.count_reg[7]\(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(0),
      I1 => \gc0.count_d1_reg[8]\(0),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(1),
      I3 => \gc0.count_d1_reg[8]\(1),
      O => ram_empty_i_reg
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(2),
      I1 => \gc0.count_d1_reg[8]\(2),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(3),
      I3 => \gc0.count_d1_reg[8]\(3),
      O => v1_reg_0(1)
    );
\gmux.gm[1].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(2),
      I1 => \gc0.count_reg[7]\(2),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(3),
      I3 => \gc0.count_reg[7]\(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(2),
      I1 => \gc0.count_d1_reg[8]\(2),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(3),
      I3 => \gc0.count_d1_reg[8]\(3),
      O => ram_empty_i_reg_0
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(4),
      I1 => \gc0.count_d1_reg[8]\(4),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(5),
      I3 => \gc0.count_d1_reg[8]\(5),
      O => v1_reg_0(2)
    );
\gmux.gm[2].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(4),
      I1 => \gc0.count_reg[7]\(4),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(5),
      I3 => \gc0.count_reg[7]\(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(4),
      I1 => \gc0.count_d1_reg[8]\(4),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(5),
      I3 => \gc0.count_d1_reg[8]\(5),
      O => ram_empty_i_reg_1
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(6),
      I1 => \gc0.count_d1_reg[8]\(6),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(7),
      I3 => \gc0.count_d1_reg[8]\(7),
      O => v1_reg_0(3)
    );
\gmux.gm[3].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(6),
      I1 => \gc0.count_reg[7]\(6),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(7),
      I3 => \gc0.count_reg[7]\(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(6),
      I1 => \gc0.count_d1_reg[8]\(6),
      I2 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(7),
      I3 => \gc0.count_d1_reg[8]\(7),
      O => ram_empty_i_reg_2
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(8),
      I1 => \gc0.count_d1_reg[8]\(8),
      O => ram_full_i_reg
    );
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_13_out(8),
      I1 => \gc0.count_d1_reg[8]\(8),
      O => ram_full_i_reg_0
    );
\gmux.gm[4].gms.ms_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(8),
      I1 => \gc0.count_d1_reg[8]\(8),
      O => ram_empty_i_reg_3
    );
\plusOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(7),
      I1 => \gc0.count_d1_reg[8]\(7),
      O => \greg.gpcry_sym.diff_pntr_pad_reg[8]\(3)
    );
\plusOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(6),
      I1 => \gc0.count_d1_reg[8]\(6),
      O => \greg.gpcry_sym.diff_pntr_pad_reg[8]\(2)
    );
\plusOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(5),
      I1 => \gc0.count_d1_reg[8]\(5),
      O => \greg.gpcry_sym.diff_pntr_pad_reg[8]\(1)
    );
\plusOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(4),
      I1 => \gc0.count_d1_reg[8]\(4),
      O => \greg.gpcry_sym.diff_pntr_pad_reg[8]\(0)
    );
\plusOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(8),
      I1 => \gc0.count_d1_reg[8]\(8),
      O => \greg.gpcry_sym.diff_pntr_pad_reg[9]\(0)
    );
\plusOp_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_13_out(8),
      I1 => \gc0.count_d1_reg[8]\(8),
      O => \gdiff.gcry_1_sym.diff_pntr_pad_reg[9]\(0)
    );
plusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(3),
      I1 => \gc0.count_d1_reg[8]\(3),
      O => S(3)
    );
plusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(2),
      I1 => \gc0.count_d1_reg[8]\(2),
      O => S(2)
    );
plusOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(1),
      I1 => \gc0.count_d1_reg[8]\(1),
      O => S(1)
    );
plusOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(0),
      I1 => \gc0.count_d1_reg[8]\(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_wr_bin_cntr__parameterized0\ is
  port (
    ram_empty_i_reg : out STD_LOGIC;
    ram_empty_i_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \gcc0.gc0.count_d1_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grxd.rx_len_wr_en_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc1.count_d1_reg[1]\ : in STD_LOGIC;
    \gc1.count_d1_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gc1.count_d2_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_wr_bin_cntr__parameterized0\ : entity is "wr_bin_cntr";
end \brd_axi_fifo_mm_s_0_1_wr_bin_cntr__parameterized0\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_wr_bin_cntr__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \gcc0.gc0.count[6]_i_2_n_0\ : STD_LOGIC;
  signal \^gcc0.gc0.count_d1_reg[6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal ram_empty_fb_i_i_3_n_0 : STD_LOGIC;
  signal ram_empty_fb_i_i_4_n_0 : STD_LOGIC;
  signal ram_empty_fb_i_i_5_n_0 : STD_LOGIC;
  signal ram_empty_fb_i_i_6_n_0 : STD_LOGIC;
  signal \^ram_empty_i_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[6]_i_2\ : label is "soft_lutpair11";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  \gcc0.gc0.count_d1_reg[6]_0\(6 downto 0) <= \^gcc0.gc0.count_d1_reg[6]_0\(6 downto 0);
  ram_empty_i_reg_0 <= \^ram_empty_i_reg_0\;
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[6]_0\(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[6]_0\(0),
      I1 => \^gcc0.gc0.count_d1_reg[6]_0\(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[6]_0\(2),
      I1 => \^gcc0.gc0.count_d1_reg[6]_0\(1),
      I2 => \^gcc0.gc0.count_d1_reg[6]_0\(0),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[6]_0\(3),
      I1 => \^gcc0.gc0.count_d1_reg[6]_0\(0),
      I2 => \^gcc0.gc0.count_d1_reg[6]_0\(1),
      I3 => \^gcc0.gc0.count_d1_reg[6]_0\(2),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[6]_0\(4),
      I1 => \^gcc0.gc0.count_d1_reg[6]_0\(2),
      I2 => \^gcc0.gc0.count_d1_reg[6]_0\(1),
      I3 => \^gcc0.gc0.count_d1_reg[6]_0\(0),
      I4 => \^gcc0.gc0.count_d1_reg[6]_0\(3),
      O => \plusOp__0\(4)
    );
\gcc0.gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[6]_0\(5),
      I1 => \^gcc0.gc0.count_d1_reg[6]_0\(3),
      I2 => \^gcc0.gc0.count_d1_reg[6]_0\(0),
      I3 => \^gcc0.gc0.count_d1_reg[6]_0\(1),
      I4 => \^gcc0.gc0.count_d1_reg[6]_0\(2),
      I5 => \^gcc0.gc0.count_d1_reg[6]_0\(4),
      O => \plusOp__0\(5)
    );
\gcc0.gc0.count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[6]_0\(6),
      I1 => \gcc0.gc0.count[6]_i_2_n_0\,
      I2 => \^gcc0.gc0.count_d1_reg[6]_0\(5),
      O => \plusOp__0\(6)
    );
\gcc0.gc0.count[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[6]_0\(4),
      I1 => \^gcc0.gc0.count_d1_reg[6]_0\(2),
      I2 => \^gcc0.gc0.count_d1_reg[6]_0\(1),
      I3 => \^gcc0.gc0.count_d1_reg[6]_0\(0),
      I4 => \^gcc0.gc0.count_d1_reg[6]_0\(3),
      O => \gcc0.gc0.count[6]_i_2_n_0\
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \^gcc0.gc0.count_d1_reg[6]_0\(0),
      Q => \^q\(0),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \^gcc0.gc0.count_d1_reg[6]_0\(1),
      Q => \^q\(1),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \^gcc0.gc0.count_d1_reg[6]_0\(2),
      Q => \^q\(2),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \^gcc0.gc0.count_d1_reg[6]_0\(3),
      Q => \^q\(3),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \^gcc0.gc0.count_d1_reg[6]_0\(4),
      Q => \^q\(4),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \^gcc0.gc0.count_d1_reg[6]_0\(5),
      Q => \^q\(5),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \^gcc0.gc0.count_d1_reg[6]_0\(6),
      Q => \^q\(6),
      R => SR(0)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \plusOp__0\(0),
      Q => \^gcc0.gc0.count_d1_reg[6]_0\(0),
      S => SR(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \plusOp__0\(1),
      Q => \^gcc0.gc0.count_d1_reg[6]_0\(1),
      R => SR(0)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \plusOp__0\(2),
      Q => \^gcc0.gc0.count_d1_reg[6]_0\(2),
      R => SR(0)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \plusOp__0\(3),
      Q => \^gcc0.gc0.count_d1_reg[6]_0\(3),
      R => SR(0)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \plusOp__0\(4),
      Q => \^gcc0.gc0.count_d1_reg[6]_0\(4),
      R => SR(0)
    );
\gcc0.gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \plusOp__0\(5),
      Q => \^gcc0.gc0.count_d1_reg[6]_0\(5),
      R => SR(0)
    );
\gcc0.gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \grxd.rx_len_wr_en_reg\(0),
      D => \plusOp__0\(6),
      Q => \^gcc0.gc0.count_d1_reg[6]_0\(6),
      R => SR(0)
    );
\ram_empty_fb_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8FFFCFCFCF"
    )
        port map (
      I0 => \^ram_empty_i_reg_0\,
      I1 => ram_empty_fb_i_reg,
      I2 => sig_rx_channel_reset_reg,
      I3 => ram_empty_fb_i_i_3_n_0,
      I4 => E(0),
      I5 => \grxd.rx_len_wr_en_reg\(0),
      O => ram_empty_i_reg
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFFEFFE"
    )
        port map (
      I0 => ram_empty_fb_i_i_4_n_0,
      I1 => ram_empty_fb_i_i_5_n_0,
      I2 => \^q\(6),
      I3 => \gc1.count_d2_reg[6]\(6),
      I4 => \^q\(5),
      I5 => \gc1.count_d2_reg[6]\(5),
      O => \^ram_empty_i_reg_0\
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002000000002002"
    )
        port map (
      I0 => ram_empty_fb_i_i_6_n_0,
      I1 => \gc1.count_d1_reg[1]\,
      I2 => \gc1.count_d1_reg[6]\(1),
      I3 => \^q\(3),
      I4 => \gc1.count_d1_reg[6]\(0),
      I5 => \^q\(2),
      O => ram_empty_fb_i_i_3_n_0
    );
ram_empty_fb_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gc1.count_d2_reg[6]\(2),
      I2 => \gc1.count_d2_reg[6]\(1),
      I3 => \^q\(1),
      I4 => \gc1.count_d2_reg[6]\(0),
      I5 => \^q\(0),
      O => ram_empty_fb_i_i_4_n_0
    );
ram_empty_fb_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gc1.count_d2_reg[6]\(3),
      I2 => \^q\(4),
      I3 => \gc1.count_d2_reg[6]\(4),
      O => ram_empty_fb_i_i_5_n_0
    );
ram_empty_fb_i_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gc1.count_d1_reg[6]\(3),
      I2 => \^q\(4),
      I3 => \gc1.count_d1_reg[6]\(2),
      I4 => \gc1.count_d1_reg[6]\(4),
      I5 => \^q\(6),
      O => ram_empty_fb_i_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_wr_pf_ss is
  port (
    p_9_out : out STD_LOGIC;
    \gpfs.prog_full_i_reg_0\ : out STD_LOGIC;
    p_3_out : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_wr_pf_ss;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_wr_pf_ss is
  signal \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[1]\ : STD_LOGIC;
  signal \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[2]\ : STD_LOGIC;
  signal \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[3]\ : STD_LOGIC;
  signal \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[4]\ : STD_LOGIC;
  signal \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[5]\ : STD_LOGIC;
  signal \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[6]\ : STD_LOGIC;
  signal \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[7]\ : STD_LOGIC;
  signal \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[8]\ : STD_LOGIC;
  signal \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[9]\ : STD_LOGIC;
  signal \gpfs.prog_full_i_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_carry__1_n_7\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of plusOp_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
\gdiff.gcry_1_sym.diff_pntr_pad_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp_carry_n_7,
      Q => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[1]\,
      R => SR(0)
    );
\gdiff.gcry_1_sym.diff_pntr_pad_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp_carry_n_6,
      Q => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[2]\,
      R => SR(0)
    );
\gdiff.gcry_1_sym.diff_pntr_pad_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp_carry_n_5,
      Q => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[3]\,
      R => SR(0)
    );
\gdiff.gcry_1_sym.diff_pntr_pad_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp_carry_n_4,
      Q => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[4]\,
      R => SR(0)
    );
\gdiff.gcry_1_sym.diff_pntr_pad_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \plusOp_carry__0_n_7\,
      Q => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[5]\,
      R => SR(0)
    );
\gdiff.gcry_1_sym.diff_pntr_pad_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \plusOp_carry__0_n_6\,
      Q => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[6]\,
      R => SR(0)
    );
\gdiff.gcry_1_sym.diff_pntr_pad_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \plusOp_carry__0_n_5\,
      Q => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[7]\,
      R => SR(0)
    );
\gdiff.gcry_1_sym.diff_pntr_pad_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \plusOp_carry__0_n_4\,
      Q => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[8]\,
      R => SR(0)
    );
\gdiff.gcry_1_sym.diff_pntr_pad_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \plusOp_carry__1_n_7\,
      Q => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[9]\,
      R => SR(0)
    );
\gpfs.prog_full_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[6]\,
      I1 => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[1]\,
      I2 => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[4]\,
      I3 => \gpfs.prog_full_i_i_3_n_0\,
      O => \gpfs.prog_full_i_reg_0\
    );
\gpfs.prog_full_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[7]\,
      I1 => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[3]\,
      I2 => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[5]\,
      I3 => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[9]\,
      I4 => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[2]\,
      I5 => \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[8]\,
      O => \gpfs.prog_full_i_i_3_n_0\
    );
\gpfs.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_reg\,
      Q => p_9_out,
      S => SR(0)
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => p_3_out,
      DI(3 downto 0) => Q(3 downto 0),
      O(3) => plusOp_carry_n_4,
      O(2) => plusOp_carry_n_5,
      O(1) => plusOp_carry_n_6,
      O(0) => plusOp_carry_n_7,
      S(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3) => \plusOp_carry__0_n_4\,
      O(2) => \plusOp_carry__0_n_5\,
      O(1) => \plusOp_carry__0_n_6\,
      O(0) => \plusOp_carry__0_n_7\,
      S(3 downto 0) => \gc0.count_d1_reg[7]\(3 downto 0)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3 downto 0) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_plusOp_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \plusOp_carry__1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_wr_status_flags_ss__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[0]\ : out STD_LOGIC;
    \gpr1.dout_i_reg[22]\ : out STD_LOGIC;
    \grxd.rx_len_wr_en_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_wr_status_flags_ss__parameterized0\ : entity is "wr_status_flags_ss";
end \brd_axi_fifo_mm_s_0_1_wr_status_flags_ss__parameterized0\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_wr_status_flags_ss__parameterized0\ is
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \out\ <= ram_full_fb_i;
RAM_reg_0_63_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => rx_len_wr_en,
      I2 => Q(0),
      O => \gpr1.dout_i_reg[0]\
    );
RAM_reg_64_127_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => rx_len_wr_en,
      I2 => Q(0),
      O => \gpr1.dout_i_reg[22]\
    );
\gcc0.gc0.count_d1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_len_wr_en,
      I1 => ram_full_fb_i,
      O => E(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ram_afull_fb
    );
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grxd.rx_len_wr_en_reg\,
      Q => ram_full_fb_i,
      R => '0'
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grxd.rx_len_wr_en_reg\,
      Q => ram_full_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_address_decoder is
  port (
    \sig_register_array_reg[0][7]\ : out STD_LOGIC;
    IPIC_STATE_reg : out STD_LOGIC;
    sig_str_rst_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 22 downto 0 );
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    \sig_register_array[0]1_out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_register_array_reg[0][5]\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]\ : out STD_LOGIC;
    \sig_register_array_reg[0][8]\ : out STD_LOGIC;
    \sig_register_array_reg[0][12]\ : out STD_LOGIC;
    \sig_register_array_reg[0][11]\ : out STD_LOGIC;
    \sig_register_array_reg[0][8]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_register_array_reg[1][0]\ : out STD_LOGIC;
    \sig_register_array_reg[1][0]_0\ : out STD_LOGIC;
    IP2Bus_RdAck_reg : out STD_LOGIC;
    \sig_register_array_reg[0][7]_0\ : out STD_LOGIC;
    \sig_register_array_reg[1][0]_1\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \sig_ip2bus_data_reg[21]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[0]\ : out STD_LOGIC;
    sig_rx_channel_reset_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_str_rst_reg_0 : out STD_LOGIC;
    cs_ce_clr : in STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    IP2Bus_RdAck_reg_0 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    IP2Bus_WrAck_reg : in STD_LOGIC;
    \goreg_dm.dout_i_reg[5]\ : in STD_LOGIC;
    \count_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \goreg_dm.dout_i_reg[4]\ : in STD_LOGIC;
    \goreg_dm.dout_i_reg[6]\ : in STD_LOGIC;
    \goreg_dm.dout_i_reg[9]\ : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    \goreg_dm.dout_i_reg[22]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_reg[8]\ : in STD_LOGIC;
    \sig_register_array_reg[1][0]_2\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \goreg_dm.dout_i_reg[7]\ : in STD_LOGIC;
    s_axi_wdata_6_sp_1 : in STD_LOGIC;
    s2mm_prmry_reset_out_n : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_wdata_3_sp_1 : in STD_LOGIC;
    IPIC_STATE : in STD_LOGIC;
    IPIC_STATE_reg_0 : in STD_LOGIC;
    sig_Bus2IP_RNW : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[1]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \sig_register_array_reg[0][12]_0\ : in STD_LOGIC;
    \sig_register_array_reg[0][11]_0\ : in STD_LOGIC;
    \sig_register_array_reg[0][8]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][7]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][5]_0\ : in STD_LOGIC;
    \sig_register_array_reg[0][2]_0\ : in STD_LOGIC;
    sig_rx_channel_reset_reg_1 : in STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end brd_axi_fifo_mm_s_0_1_address_decoder;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\ : STD_LOGIC;
  signal \^ipic_state_reg\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_10 : STD_LOGIC;
  signal ce_expnd_i_11 : STD_LOGIC;
  signal ce_expnd_i_12 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_4 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_6 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal ce_expnd_i_8 : STD_LOGIC;
  signal ce_expnd_i_9 : STD_LOGIC;
  signal s_axi_wdata_3_sn_1 : STD_LOGIC;
  signal s_axi_wdata_6_sn_1 : STD_LOGIC;
  signal \sig_ip2bus_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[12]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[20]_i_4_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[22]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[22]_i_5_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[30]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[30]_i_3_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[8]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[9]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[9]_i_3_n_0\ : STD_LOGIC;
  signal \^sig_ip2bus_data_reg[0]\ : STD_LOGIC;
  signal \^sig_ip2bus_data_reg[26]\ : STD_LOGIC;
  signal \sig_register_array[0][2]_i_10_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][2]_i_5_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][2]_i_9_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][7]_i_5_n_0\ : STD_LOGIC;
  signal \sig_register_array[1][0]_i_3_n_0\ : STD_LOGIC;
  signal \sig_register_array[1][0]_i_5_n_0\ : STD_LOGIC;
  signal \sig_register_array[1][0]_i_6_n_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][7]\ : STD_LOGIC;
  signal \^sig_register_array_reg[1][0]\ : STD_LOGIC;
  signal \^sig_register_array_reg[1][0]_0\ : STD_LOGIC;
  signal sig_rx_channel_reset_i_2_n_0 : STD_LOGIC;
  signal sig_rx_channel_reset_i_3_n_0 : STD_LOGIC;
  signal sig_rx_channel_reset_i_4_n_0 : STD_LOGIC;
  signal sig_rx_channel_reset_i_5_n_0 : STD_LOGIC;
  signal sig_str_rst_i_2_n_0 : STD_LOGIC;
  signal sig_str_rst_i_3_n_0 : STD_LOGIC;
  signal sig_str_rst_i_4_n_0 : STD_LOGIC;
  signal \^sig_str_rst_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of IP2Bus_RdAck_i_2 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of IP2Bus_WrAck_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[0]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[0]_i_4\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[0]_i_6\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[22]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[22]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[22]_i_5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[30]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[30]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[5]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[7]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[8]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[9]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sig_register_array[0][12]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sig_register_array[0][2]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sig_register_array[0][2]_i_9\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sig_register_array[0][5]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \sig_register_array[0][7]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sig_register_array[0][7]_i_5\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sig_register_array[0][8]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \sig_register_array[0][8]_i_5\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sig_register_array[1][0]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \sig_register_array[1][0]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sig_register_array[1][0]_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sig_register_array[1][0]_i_6\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \sig_register_array[1][10]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \sig_register_array[1][11]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \sig_register_array[1][12]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \sig_register_array[1][1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \sig_register_array[1][3]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \sig_register_array[1][4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \sig_register_array[1][5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \sig_register_array[1][6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \sig_register_array[1][7]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \sig_register_array[1][8]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \sig_register_array[1][9]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of sig_str_rst_i_4 : label is "soft_lutpair39";
begin
  IPIC_STATE_reg <= \^ipic_state_reg\;
  s_axi_wdata_3_sn_1 <= s_axi_wdata_3_sp_1;
  s_axi_wdata_6_sn_1 <= s_axi_wdata_6_sp_1;
  \sig_ip2bus_data_reg[0]\ <= \^sig_ip2bus_data_reg[0]\;
  \sig_ip2bus_data_reg[26]\ <= \^sig_ip2bus_data_reg[26]\;
  \sig_register_array_reg[0][7]\ <= \^sig_register_array_reg[0][7]\;
  \sig_register_array_reg[1][0]\ <= \^sig_register_array_reg[1][0]\;
  \sig_register_array_reg[1][0]_0\ <= \^sig_register_array_reg[1][0]_0\;
  sig_str_rst_reg <= \^sig_str_rst_reg\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_Bus2IP_RNW,
      I1 => Q,
      I2 => \^sig_str_rst_reg\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^sig_str_rst_reg\,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_12,
      Q => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => \^sig_register_array_reg[0][7]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_11,
      Q => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_10,
      Q => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\(3),
      I1 => \bus2ip_addr_i_reg[5]\(2),
      I2 => \bus2ip_addr_i_reg[5]\(0),
      I3 => \bus2ip_addr_i_reg[5]\(1),
      O => ce_expnd_i_9
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_9,
      Q => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_8,
      Q => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_7,
      Q => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_6,
      Q => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_5,
      Q => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_4,
      Q => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      R => cs_ce_clr
    );
IP2Bus_RdAck_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sig_Bus2IP_RNW,
      I1 => \^ipic_state_reg\,
      I2 => IPIC_STATE,
      O => IP2Bus_RdAck_reg
    );
IP2Bus_WrAck_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^ipic_state_reg\,
      I1 => IPIC_STATE,
      I2 => s_axi_aresetn,
      O => SR(0)
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.brd_axi_fifo_mm_s_0_1_pselect_f
     port map (
      \bus2ip_addr_i_reg[5]\(3 downto 0) => \bus2ip_addr_i_reg[5]\(3 downto 0),
      ce_expnd_i_12 => ce_expnd_i_12
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\brd_axi_fifo_mm_s_0_1_pselect_f__parameterized9\
     port map (
      \bus2ip_addr_i_reg[5]\(3 downto 0) => \bus2ip_addr_i_reg[5]\(3 downto 0),
      ce_expnd_i_2 => ce_expnd_i_2
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\brd_axi_fifo_mm_s_0_1_pselect_f__parameterized10\
     port map (
      \bus2ip_addr_i_reg[5]\(3 downto 0) => \bus2ip_addr_i_reg[5]\(3 downto 0),
      ce_expnd_i_1 => ce_expnd_i_1
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[12].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\brd_axi_fifo_mm_s_0_1_pselect_f__parameterized11\
     port map (
      \bus2ip_addr_i_reg[5]\(3 downto 0) => \bus2ip_addr_i_reg[5]\(3 downto 0),
      ce_expnd_i_0 => ce_expnd_i_0
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[1].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\brd_axi_fifo_mm_s_0_1_pselect_f__parameterized0\
     port map (
      \bus2ip_addr_i_reg[5]\(3 downto 0) => \bus2ip_addr_i_reg[5]\(3 downto 0),
      ce_expnd_i_11 => ce_expnd_i_11
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\brd_axi_fifo_mm_s_0_1_pselect_f__parameterized1\
     port map (
      \bus2ip_addr_i_reg[5]\(3 downto 0) => \bus2ip_addr_i_reg[5]\(3 downto 0),
      ce_expnd_i_10 => ce_expnd_i_10
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\brd_axi_fifo_mm_s_0_1_pselect_f__parameterized3\
     port map (
      \bus2ip_addr_i_reg[5]\(3 downto 0) => \bus2ip_addr_i_reg[5]\(3 downto 0),
      ce_expnd_i_8 => ce_expnd_i_8
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\brd_axi_fifo_mm_s_0_1_pselect_f__parameterized4\
     port map (
      \bus2ip_addr_i_reg[5]\(3 downto 0) => \bus2ip_addr_i_reg[5]\(3 downto 0),
      ce_expnd_i_7 => ce_expnd_i_7
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\brd_axi_fifo_mm_s_0_1_pselect_f__parameterized5\
     port map (
      \bus2ip_addr_i_reg[5]\(3 downto 0) => \bus2ip_addr_i_reg[5]\(3 downto 0),
      ce_expnd_i_6 => ce_expnd_i_6
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\brd_axi_fifo_mm_s_0_1_pselect_f__parameterized6\
     port map (
      \bus2ip_addr_i_reg[5]\(3 downto 0) => \bus2ip_addr_i_reg[5]\(3 downto 0),
      ce_expnd_i_5 => ce_expnd_i_5
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\brd_axi_fifo_mm_s_0_1_pselect_f__parameterized7\
     port map (
      \bus2ip_addr_i_reg[5]\(3 downto 0) => \bus2ip_addr_i_reg[5]\(3 downto 0),
      ce_expnd_i_4 => ce_expnd_i_4
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\brd_axi_fifo_mm_s_0_1_pselect_f__parameterized8\
     port map (
      \bus2ip_addr_i_reg[5]\(3 downto 0) => \bus2ip_addr_i_reg[5]\(3 downto 0),
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000E00"
    )
        port map (
      I0 => \^ipic_state_reg\,
      I1 => Q,
      I2 => IP2Bus_RdAck_reg_0,
      I3 => s_axi_aresetn,
      I4 => IP2Bus_WrAck_reg,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\,
      Q => \^ipic_state_reg\,
      R => '0'
    );
\sig_ip2bus_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAA00000000"
    )
        port map (
      I0 => \^sig_ip2bus_data_reg[0]\,
      I1 => \sig_register_array_reg[1][0]_2\(12),
      I2 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \sig_ip2bus_data[0]_i_3_n_0\,
      I5 => \sig_ip2bus_data[0]_i_4_n_0\,
      O => D(22)
    );
\sig_ip2bus_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \out\,
      I2 => sig_rx_channel_reset_reg_1,
      I3 => \^sig_str_rst_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \^sig_ip2bus_data_reg[0]\
    );
\sig_ip2bus_data[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sig_str_rst_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_ip2bus_data[0]_i_3_n_0\
    );
\sig_ip2bus_data[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_5_n_0\,
      I1 => \sig_ip2bus_data[0]_i_6_n_0\,
      I2 => \^sig_str_rst_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      O => \sig_ip2bus_data[0]_i_4_n_0\
    );
\sig_ip2bus_data[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \^sig_register_array_reg[0][7]\,
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I5 => \^sig_str_rst_reg\,
      O => \sig_ip2bus_data[0]_i_5_n_0\
    );
\sig_ip2bus_data[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I4 => \^sig_str_rst_reg\,
      O => \sig_ip2bus_data[0]_i_6_n_0\
    );
\sig_ip2bus_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA2020AAAAAAAA"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => \sig_ip2bus_data[9]_i_2_n_0\,
      I2 => \sig_register_array_reg[1][0]_2\(2),
      I3 => \sig_ip2bus_data[9]_i_3_n_0\,
      I4 => \goreg_dm.dout_i_reg[22]\(4),
      I5 => \count_reg[8]\,
      O => D(12)
    );
\sig_ip2bus_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A88AAAA"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => \sig_ip2bus_data[11]_i_2_n_0\,
      I2 => \sig_ip2bus_data[9]_i_3_n_0\,
      I3 => \goreg_dm.dout_i_reg[22]\(3),
      I4 => \count_reg[8]\,
      O => D(11)
    );
\sig_ip2bus_data[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400500004000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \sig_register_array_reg[0][11]_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \^sig_str_rst_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I5 => \sig_register_array_reg[1][0]_2\(1),
      O => \sig_ip2bus_data[11]_i_2_n_0\
    );
\sig_ip2bus_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A88AAAA"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => \sig_ip2bus_data[12]_i_2_n_0\,
      I2 => \sig_ip2bus_data[9]_i_3_n_0\,
      I3 => \goreg_dm.dout_i_reg[22]\(2),
      I4 => \count_reg[8]\,
      O => D(10)
    );
\sig_ip2bus_data[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400500004000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \sig_register_array_reg[0][12]_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \^sig_str_rst_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I5 => \sig_register_array_reg[1][0]_2\(0),
      O => \sig_ip2bus_data[12]_i_2_n_0\
    );
\sig_ip2bus_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080000AAAAAAAA"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => \sig_register_array_reg[1][0]_2\(11),
      I2 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \sig_ip2bus_data[0]_i_3_n_0\,
      I5 => \count_reg[8]\,
      O => D(21)
    );
\sig_ip2bus_data[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAFFFFFFFFFFFF"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_6_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I3 => \^sig_str_rst_reg\,
      I4 => \^sig_ip2bus_data_reg[26]\,
      I5 => \sig_ip2bus_data[20]_i_4_n_0\,
      O => \sig_ip2bus_data_reg[21]\
    );
\sig_ip2bus_data[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I4 => \^sig_register_array_reg[0][7]\,
      O => \sig_ip2bus_data[20]_i_4_n_0\
    );
\sig_ip2bus_data[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22F20000"
    )
        port map (
      I0 => \count_reg[9]\(9),
      I1 => \sig_ip2bus_data[22]_i_2_n_0\,
      I2 => \^sig_ip2bus_data_reg[26]\,
      I3 => \goreg_dm.dout_i_reg[9]\,
      I4 => \sig_ip2bus_data[22]_i_5_n_0\,
      O => D(9)
    );
\sig_ip2bus_data[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I3 => \out\,
      O => \sig_ip2bus_data[22]_i_2_n_0\
    );
\sig_ip2bus_data[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I2 => \^sig_str_rst_reg\,
      O => \^sig_ip2bus_data_reg[26]\
    );
\sig_ip2bus_data[22]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00022222"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_5_n_0\,
      I1 => \sig_ip2bus_data[0]_i_6_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^sig_str_rst_reg\,
      O => \sig_ip2bus_data[22]_i_5_n_0\
    );
\sig_ip2bus_data[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => \sig_ip2bus_data[22]_i_5_n_0\,
      I1 => sig_rx_channel_reset_reg_0,
      I2 => \sig_ip2bus_data[22]_i_2_n_0\,
      I3 => \count_reg[9]\(8),
      O => D(8)
    );
\sig_ip2bus_data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0808"
    )
        port map (
      I0 => \sig_ip2bus_data[22]_i_5_n_0\,
      I1 => \^sig_ip2bus_data_reg[26]\,
      I2 => \goreg_dm.dout_i_reg[7]\,
      I3 => \sig_ip2bus_data[22]_i_2_n_0\,
      I4 => \count_reg[9]\(7),
      O => D(7)
    );
\sig_ip2bus_data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0808"
    )
        port map (
      I0 => \sig_ip2bus_data[22]_i_5_n_0\,
      I1 => \^sig_ip2bus_data_reg[26]\,
      I2 => \goreg_dm.dout_i_reg[6]\,
      I3 => \sig_ip2bus_data[22]_i_2_n_0\,
      I4 => \count_reg[9]\(6),
      O => D(6)
    );
\sig_ip2bus_data[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0808"
    )
        port map (
      I0 => \sig_ip2bus_data[22]_i_5_n_0\,
      I1 => \^sig_ip2bus_data_reg[26]\,
      I2 => \goreg_dm.dout_i_reg[5]\,
      I3 => \sig_ip2bus_data[22]_i_2_n_0\,
      I4 => \count_reg[9]\(5),
      O => D(5)
    );
\sig_ip2bus_data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0808"
    )
        port map (
      I0 => \sig_ip2bus_data[22]_i_5_n_0\,
      I1 => \^sig_ip2bus_data_reg[26]\,
      I2 => \goreg_dm.dout_i_reg[4]\,
      I3 => \sig_ip2bus_data[22]_i_2_n_0\,
      I4 => \count_reg[9]\(4),
      O => D(4)
    );
\sig_ip2bus_data[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => \sig_ip2bus_data[22]_i_5_n_0\,
      I1 => \count_reg[1]\,
      I2 => \sig_ip2bus_data[22]_i_2_n_0\,
      I3 => \count_reg[9]\(3),
      O => D(3)
    );
\sig_ip2bus_data[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => \sig_ip2bus_data[22]_i_5_n_0\,
      I1 => \count_reg[0]\,
      I2 => \sig_ip2bus_data[22]_i_2_n_0\,
      I3 => \count_reg[9]\(2),
      O => D(2)
    );
\sig_ip2bus_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => \sig_ip2bus_data[2]_i_2_n_0\,
      I2 => \count_reg[8]\,
      O => D(20)
    );
\sig_ip2bus_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400040050000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \sig_register_array_reg[0][2]_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \^sig_str_rst_reg\,
      I4 => \sig_register_array_reg[1][0]_2\(10),
      I5 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      O => \sig_ip2bus_data[2]_i_2_n_0\
    );
\sig_ip2bus_data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080AAAA00800080"
    )
        port map (
      I0 => \sig_ip2bus_data[22]_i_5_n_0\,
      I1 => \sig_ip2bus_data[30]_i_2_n_0\,
      I2 => \goreg_dm.dout_i_reg[22]\(1),
      I3 => \sig_ip2bus_data[30]_i_3_n_0\,
      I4 => \sig_ip2bus_data[22]_i_2_n_0\,
      I5 => \count_reg[9]\(1),
      O => D(1)
    );
\sig_ip2bus_data[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \^sig_str_rst_reg\,
      I2 => \out\,
      I3 => sig_rx_channel_reset_reg_1,
      O => \sig_ip2bus_data[30]_i_2_n_0\
    );
\sig_ip2bus_data[30]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sig_str_rst_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      O => \sig_ip2bus_data[30]_i_3_n_0\
    );
\sig_ip2bus_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080AAAA00800080"
    )
        port map (
      I0 => \sig_ip2bus_data[22]_i_5_n_0\,
      I1 => \sig_ip2bus_data[30]_i_2_n_0\,
      I2 => \goreg_dm.dout_i_reg[22]\(0),
      I3 => \sig_ip2bus_data[30]_i_3_n_0\,
      I4 => \sig_ip2bus_data[22]_i_2_n_0\,
      I5 => \count_reg[9]\(0),
      O => D(0)
    );
\sig_ip2bus_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080000AAAAAAAA"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => \sig_register_array_reg[1][0]_2\(9),
      I2 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \sig_ip2bus_data[0]_i_3_n_0\,
      I5 => \count_reg[8]\,
      O => D(19)
    );
\sig_ip2bus_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080000AAAAAAAA"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => \sig_register_array_reg[1][0]_2\(8),
      I2 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \sig_ip2bus_data[0]_i_3_n_0\,
      I5 => \count_reg[8]\,
      O => D(18)
    );
\sig_ip2bus_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => \sig_ip2bus_data[5]_i_2_n_0\,
      I2 => \count_reg[8]\,
      O => D(17)
    );
\sig_ip2bus_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400500004000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \sig_register_array_reg[0][5]_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \^sig_str_rst_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I5 => \sig_register_array_reg[1][0]_2\(7),
      O => \sig_ip2bus_data[5]_i_2_n_0\
    );
\sig_ip2bus_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080000AAAAAAAA"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => \sig_register_array_reg[1][0]_2\(6),
      I2 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \sig_ip2bus_data[0]_i_3_n_0\,
      I5 => \count_reg[8]\,
      O => D(16)
    );
\sig_ip2bus_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => \sig_ip2bus_data[7]_i_2_n_0\,
      I2 => \count_reg[8]\,
      O => D(15)
    );
\sig_ip2bus_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400500004000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \sig_register_array_reg[0][7]_1\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \^sig_str_rst_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I5 => \sig_register_array_reg[1][0]_2\(5),
      O => \sig_ip2bus_data[7]_i_2_n_0\
    );
\sig_ip2bus_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => \sig_ip2bus_data[8]_i_2_n_0\,
      I2 => \count_reg[8]\,
      O => D(14)
    );
\sig_ip2bus_data[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400500004000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \sig_register_array_reg[0][8]_1\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \^sig_str_rst_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I5 => \sig_register_array_reg[1][0]_2\(4),
      O => \sig_ip2bus_data[8]_i_2_n_0\
    );
\sig_ip2bus_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA2020AAAAAAAA"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => \sig_ip2bus_data[9]_i_2_n_0\,
      I2 => \sig_register_array_reg[1][0]_2\(3),
      I3 => \sig_ip2bus_data[9]_i_3_n_0\,
      I4 => \goreg_dm.dout_i_reg[22]\(5),
      I5 => \count_reg[8]\,
      O => D(13)
    );
\sig_ip2bus_data[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      O => \sig_ip2bus_data[9]_i_2_n_0\
    );
\sig_ip2bus_data[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => sig_rx_channel_reset_reg_1,
      I3 => \out\,
      I4 => \^sig_str_rst_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      O => \sig_ip2bus_data[9]_i_3_n_0\
    );
\sig_register_array[0][11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"880888A8"
    )
        port map (
      I0 => \sig_register_array[0][2]_i_5_n_0\,
      I1 => s_axi_wdata(1),
      I2 => \^sig_register_array_reg[0][7]\,
      I3 => \^sig_str_rst_reg\,
      I4 => s_axi_wdata_3_sn_1,
      O => \sig_register_array_reg[0][11]\
    );
\sig_register_array[0][12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"880888A8"
    )
        port map (
      I0 => \sig_register_array[0][2]_i_5_n_0\,
      I1 => s_axi_wdata(0),
      I2 => \^sig_register_array_reg[0][7]\,
      I3 => \^sig_str_rst_reg\,
      I4 => s_axi_wdata_3_sn_1,
      O => \sig_register_array_reg[0][12]\
    );
\sig_register_array[0][2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0EFFFF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I2 => \^sig_str_rst_reg\,
      I3 => IPIC_STATE,
      I4 => \^ipic_state_reg\,
      O => \sig_register_array[0][2]_i_10_n_0\
    );
\sig_register_array[0][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC5C0000"
    )
        port map (
      I0 => s_axi_wdata_3_sn_1,
      I1 => s_axi_wdata(10),
      I2 => \^sig_register_array_reg[0][7]\,
      I3 => \^sig_str_rst_reg\,
      I4 => \sig_register_array[0][2]_i_5_n_0\,
      O => \sig_register_array_reg[0][2]\
    );
\sig_register_array[0][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010010"
    )
        port map (
      I0 => sig_str_rst_i_3_n_0,
      I1 => \sig_register_array[0][2]_i_9_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I3 => \^sig_str_rst_reg\,
      I4 => \^sig_register_array_reg[0][7]\,
      I5 => \sig_register_array[0][2]_i_10_n_0\,
      O => \sig_register_array[0][2]_i_5_n_0\
    );
\sig_register_array[0][2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I3 => \^sig_str_rst_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      O => \sig_register_array[0][2]_i_9_n_0\
    );
\sig_register_array[0][5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC5C0000"
    )
        port map (
      I0 => s_axi_wdata_3_sn_1,
      I1 => s_axi_wdata(7),
      I2 => \^sig_register_array_reg[0][7]\,
      I3 => \^sig_str_rst_reg\,
      I4 => \sig_register_array[0][2]_i_5_n_0\,
      O => \sig_register_array_reg[0][5]\
    );
\sig_register_array[0][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11001101"
    )
        port map (
      I0 => sig_rx_channel_reset_i_3_n_0,
      I1 => \sig_register_array[0][7]_i_4_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I3 => \^sig_str_rst_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      O => \^sig_register_array_reg[1][0]_0\
    );
\sig_register_array[0][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBAFFFFFFBFF"
    )
        port map (
      I0 => \sig_register_array[0][7]_i_5_n_0\,
      I1 => s_axi_wdata_6_sn_1,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I3 => \^sig_register_array_reg[0][7]\,
      I4 => \^sig_str_rst_reg\,
      I5 => s_axi_wdata(5),
      O => \sig_register_array_reg[0][7]_0\
    );
\sig_register_array[0][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I3 => \^sig_str_rst_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      O => \sig_register_array[0][7]_i_4_n_0\
    );
\sig_register_array[0][7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \sig_register_array[0][7]_i_5_n_0\
    );
\sig_register_array[0][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03330333B3B30333"
    )
        port map (
      I0 => s_axi_wdata_6_sn_1,
      I1 => s2mm_prmry_reset_out_n,
      I2 => \sig_register_array[0][2]_i_5_n_0\,
      I3 => s_axi_wdata(4),
      I4 => \^sig_register_array_reg[0][7]\,
      I5 => \^sig_str_rst_reg\,
      O => \sig_register_array[0]1_out\(0)
    );
\sig_register_array[0][8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^sig_str_rst_reg\,
      I1 => \^sig_register_array_reg[0][7]\,
      O => \^sig_register_array_reg[1][0]\
    );
\sig_register_array[0][8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \sig_register_array[0][2]_i_5_n_0\,
      O => \sig_register_array_reg[0][8]_0\
    );
\sig_register_array[0][8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => s_axi_wdata_3_sn_1,
      I1 => \sig_register_array[0][2]_i_5_n_0\,
      I2 => \^sig_str_rst_reg\,
      I3 => \^sig_register_array_reg[0][7]\,
      O => \sig_register_array_reg[0][8]\
    );
\sig_register_array[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A400"
    )
        port map (
      I0 => \sig_register_array[1][0]_i_3_n_0\,
      I1 => s_axi_wdata_6_sn_1,
      I2 => \^sig_register_array_reg[1][0]\,
      I3 => \^sig_register_array_reg[1][0]_0\,
      I4 => \sig_register_array[1][0]_i_5_n_0\,
      I5 => \sig_register_array[1][0]_i_6_n_0\,
      O => E(0)
    );
\sig_register_array[1][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array_reg[1][0]_1\(12)
    );
\sig_register_array[1][0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I1 => \^sig_str_rst_reg\,
      O => \sig_register_array[1][0]_i_3_n_0\
    );
\sig_register_array[1][0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^sig_str_rst_reg\,
      O => \sig_register_array[1][0]_i_5_n_0\
    );
\sig_register_array[1][0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \^sig_str_rst_reg\,
      O => \sig_register_array[1][0]_i_6_n_0\
    );
\sig_register_array[1][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array_reg[1][0]_1\(2)
    );
\sig_register_array[1][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array_reg[1][0]_1\(1)
    );
\sig_register_array[1][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array_reg[1][0]_1\(0)
    );
\sig_register_array[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array_reg[1][0]_1\(11)
    );
\sig_register_array[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array_reg[1][0]_1\(10)
    );
\sig_register_array[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array_reg[1][0]_1\(9)
    );
\sig_register_array[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array_reg[1][0]_1\(8)
    );
\sig_register_array[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array_reg[1][0]_1\(7)
    );
\sig_register_array[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array_reg[1][0]_1\(6)
    );
\sig_register_array[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array_reg[1][0]_1\(5)
    );
\sig_register_array[1][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array_reg[1][0]_1\(4)
    );
\sig_register_array[1][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \^sig_str_rst_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array_reg[1][0]_1\(3)
    );
sig_rx_channel_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF505010005050"
    )
        port map (
      I0 => sig_rx_channel_reset_i_2_n_0,
      I1 => sig_rx_channel_reset_i_3_n_0,
      I2 => sig_rx_channel_reset_i_4_n_0,
      I3 => sig_rx_channel_reset_i_5_n_0,
      I4 => s2mm_prmry_reset_out_n,
      I5 => sig_rx_channel_reset_reg_1,
      O => sig_rx_channel_reset_reg
    );
sig_rx_channel_reset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFE"
    )
        port map (
      I0 => sig_str_rst_i_2_n_0,
      I1 => IPIC_STATE_reg_0,
      I2 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I3 => \^sig_str_rst_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      I5 => s_axi_wdata_3_sn_1,
      O => sig_rx_channel_reset_i_2_n_0
    );
sig_rx_channel_reset_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFF3FFF3FFF3FB"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I1 => \^ipic_state_reg\,
      I2 => IPIC_STATE,
      I3 => \^sig_str_rst_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      O => sig_rx_channel_reset_i_3_n_0
    );
sig_rx_channel_reset_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I2 => \^sig_register_array_reg[0][7]\,
      I3 => \^sig_str_rst_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      O => sig_rx_channel_reset_i_4_n_0
    );
sig_rx_channel_reset_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011001101"
    )
        port map (
      I0 => s_axi_wdata_3_sn_1,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I3 => \^sig_str_rst_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I5 => \sig_register_array[0][7]_i_5_n_0\,
      O => sig_rx_channel_reset_i_5_n_0
    );
sig_str_rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001011"
    )
        port map (
      I0 => sig_str_rst_i_2_n_0,
      I1 => sig_str_rst_i_3_n_0,
      I2 => \^sig_str_rst_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      I4 => sig_str_rst_i_4_n_0,
      I5 => IPIC_STATE_reg_0,
      O => sig_str_rst_reg_0
    );
sig_str_rst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FFFFF0F0FFFE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \sig_register_array[0][7]_i_5_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^sig_str_rst_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      O => sig_str_rst_i_2_n_0
    );
sig_str_rst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0F0F0F0E"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I2 => \^sig_str_rst_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      O => sig_str_rst_i_3_n_0
    );
sig_str_rst_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^sig_register_array_reg[0][7]\,
      I1 => \^sig_str_rst_reg\,
      I2 => s_axi_wdata_3_sn_1,
      O => sig_str_rst_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_axi_read_wrapper is
  port (
    s_axi4_arready : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_rready : in STD_LOGIC;
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end brd_axi_fifo_mm_s_0_1_axi_read_wrapper;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_axi_read_wrapper is
  signal arlen_cntr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_read_fsm_n_10 : STD_LOGIC;
  signal axi_read_fsm_n_11 : STD_LOGIC;
  signal axi_read_fsm_n_12 : STD_LOGIC;
  signal axi_read_fsm_n_13 : STD_LOGIC;
  signal axi_read_fsm_n_14 : STD_LOGIC;
  signal axi_read_fsm_n_4 : STD_LOGIC;
  signal axi_read_fsm_n_5 : STD_LOGIC;
  signal axi_read_fsm_n_6 : STD_LOGIC;
  signal axi_read_fsm_n_7 : STD_LOGIC;
  signal axi_read_fsm_n_8 : STD_LOGIC;
  signal axi_read_fsm_n_9 : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[3]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[3]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[5]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[5]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[6]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[7]_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[7]_i_7_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[7]_i_8_n_0\ : STD_LOGIC;
  signal \^s_axi4_rid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[3]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[3]_i_3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[5]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[5]_i_3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[7]_i_5\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[7]_i_7\ : label is "soft_lutpair59";
begin
  s_axi4_rid(0) <= \^s_axi4_rid\(0);
axi_read_fsm: entity work.brd_axi_fifo_mm_s_0_1_axi_read_fsm
     port map (
      D(7) => axi_read_fsm_n_4,
      D(6) => axi_read_fsm_n_5,
      D(5) => axi_read_fsm_n_6,
      D(4) => axi_read_fsm_n_7,
      D(3) => axi_read_fsm_n_8,
      D(2) => axi_read_fsm_n_9,
      D(1) => axi_read_fsm_n_10,
      D(0) => axi_read_fsm_n_11,
      E(0) => axi_read_fsm_n_13,
      Q(7 downto 0) => arlen_cntr(7 downto 0),
      SR(0) => SR(0),
      \gaxi_full_sm.arlen_cntr_reg[2]\ => \gaxi_full_sm.arlen_cntr[3]_i_3_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[3]\ => \gaxi_full_sm.arlen_cntr[6]_i_2_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[4]\ => axi_read_fsm_n_12,
      \gaxi_full_sm.arlen_cntr_reg[4]_0\ => \gaxi_full_sm.arlen_cntr[5]_i_3_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[5]\ => \gaxi_full_sm.arlen_cntr[7]_i_5_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[7]\ => \gaxi_full_sm.arlen_cntr[7]_i_7_n_0\,
      \grid.S_AXI_RID_reg[0]\ => axi_read_fsm_n_14,
      \out\ => \out\,
      s_axi4_araddr(31 downto 0) => s_axi4_araddr(31 downto 0),
      s_axi4_arid(0) => s_axi4_arid(0),
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arlen_0_sp_1 => \gaxi_full_sm.arlen_cntr[3]_i_2_n_0\,
      s_axi4_arlen_3_sp_1 => \gaxi_full_sm.arlen_cntr[5]_i_2_n_0\,
      s_axi4_arlen_4_sp_1 => \gaxi_full_sm.arlen_cntr[7]_i_8_n_0\,
      s_axi4_arready => s_axi4_arready,
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_rid(0) => \^s_axi4_rid\(0),
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rvalid => s_axi4_rvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
\gaxi_full_sm.arlen_cntr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axi4_arlen(2),
      I1 => s_axi4_arlen(1),
      I2 => s_axi4_arlen(0),
      O => \gaxi_full_sm.arlen_cntr[3]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => arlen_cntr(2),
      I1 => arlen_cntr(1),
      I2 => arlen_cntr(0),
      O => \gaxi_full_sm.arlen_cntr[3]_i_3_n_0\
    );
\gaxi_full_sm.arlen_cntr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi4_arlen(4),
      I1 => s_axi4_arlen(2),
      I2 => s_axi4_arlen(1),
      I3 => s_axi4_arlen(0),
      I4 => s_axi4_arlen(3),
      O => \gaxi_full_sm.arlen_cntr[5]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => arlen_cntr(4),
      I1 => arlen_cntr(2),
      I2 => arlen_cntr(1),
      I3 => arlen_cntr(0),
      I4 => arlen_cntr(3),
      O => \gaxi_full_sm.arlen_cntr[5]_i_3_n_0\
    );
\gaxi_full_sm.arlen_cntr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => arlen_cntr(3),
      I1 => arlen_cntr(0),
      I2 => arlen_cntr(1),
      I3 => arlen_cntr(2),
      I4 => arlen_cntr(4),
      I5 => arlen_cntr(5),
      O => \gaxi_full_sm.arlen_cntr[6]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => arlen_cntr(5),
      I1 => arlen_cntr(4),
      I2 => axi_read_fsm_n_12,
      I3 => arlen_cntr(6),
      O => \gaxi_full_sm.arlen_cntr[7]_i_5_n_0\
    );
\gaxi_full_sm.arlen_cntr[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => arlen_cntr(7),
      I1 => arlen_cntr(6),
      I2 => axi_read_fsm_n_12,
      I3 => arlen_cntr(4),
      I4 => arlen_cntr(5),
      O => \gaxi_full_sm.arlen_cntr[7]_i_7_n_0\
    );
\gaxi_full_sm.arlen_cntr[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axi4_arlen(5),
      I1 => s_axi4_arlen(3),
      I2 => s_axi4_arlen(0),
      I3 => s_axi4_arlen(1),
      I4 => s_axi4_arlen(2),
      I5 => s_axi4_arlen(4),
      O => \gaxi_full_sm.arlen_cntr[7]_i_8_n_0\
    );
\gaxi_full_sm.arlen_cntr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_read_fsm_n_13,
      D => axi_read_fsm_n_11,
      Q => arlen_cntr(0),
      S => SR(0)
    );
\gaxi_full_sm.arlen_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_read_fsm_n_13,
      D => axi_read_fsm_n_10,
      Q => arlen_cntr(1),
      R => SR(0)
    );
\gaxi_full_sm.arlen_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_read_fsm_n_13,
      D => axi_read_fsm_n_9,
      Q => arlen_cntr(2),
      R => SR(0)
    );
\gaxi_full_sm.arlen_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_read_fsm_n_13,
      D => axi_read_fsm_n_8,
      Q => arlen_cntr(3),
      R => SR(0)
    );
\gaxi_full_sm.arlen_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_read_fsm_n_13,
      D => axi_read_fsm_n_7,
      Q => arlen_cntr(4),
      R => SR(0)
    );
\gaxi_full_sm.arlen_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_read_fsm_n_13,
      D => axi_read_fsm_n_6,
      Q => arlen_cntr(5),
      R => SR(0)
    );
\gaxi_full_sm.arlen_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_read_fsm_n_13,
      D => axi_read_fsm_n_5,
      Q => arlen_cntr(6),
      R => SR(0)
    );
\gaxi_full_sm.arlen_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_read_fsm_n_13,
      D => axi_read_fsm_n_4,
      Q => arlen_cntr(7),
      R => SR(0)
    );
\grid.S_AXI_RID_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_read_fsm_n_14,
      Q => \^s_axi4_rid\(0),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_axi_write_wrapper is
  port (
    \FSM_sequential_gaxi_full_sm.present_state_reg[1]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_wready : out STD_LOGIC;
    \gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]_0\ : out STD_LOGIC;
    s_axi4_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_awvalid : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_axi_write_wrapper;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_axi_write_wrapper is
  signal CONV_INTEGER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_wr_fsm_n_11 : STD_LOGIC;
  signal axi_wr_fsm_n_13 : STD_LOGIC;
  signal axi_wr_fsm_n_14 : STD_LOGIC;
  signal axi_wr_fsm_n_15 : STD_LOGIC;
  signal axi_wr_fsm_n_16 : STD_LOGIC;
  signal bvalid_c : STD_LOGIC;
  signal \bvalid_count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_count_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \bvalid_count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \bvalid_count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal bvalid_d1_c : STD_LOGIC;
  signal bvalid_rd_cnt_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal bvalid_wr_cnt_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_n_0\ : STD_LOGIC;
  signal \^gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]_0\ : STD_LOGIC;
  signal \gaxi_bvalid_id_r.bvalid_r_i_1_n_0\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r[2]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r[7]_i_4_n_0\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gaxi_bid_gen.axi_bid_array_reg_0_3_0_0\ : label is "RAM16X1D";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[2]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[3]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[4]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[5]_i_2\ : label is "soft_lutpair67";
begin
  SR(0) <= \^sr\(0);
  \gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]_0\ <= \^gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]_0\;
axi_wr_fsm: entity work.brd_axi_fifo_mm_s_0_1_axi_write_fsm
     port map (
      D(7 downto 0) => p_0_in(7 downto 0),
      E(0) => axi_wr_fsm_n_14,
      \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0\ => \FSM_sequential_gaxi_full_sm.present_state_reg[1]\,
      I53 => axi_wr_fsm_n_13,
      Q(7 downto 0) => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(7 downto 0),
      SS(0) => \^sr\(0),
      bvalid_c => bvalid_c,
      \bvalid_count_r_reg[0]\ => \bvalid_count_r_reg_n_0_[0]\,
      \bvalid_count_r_reg[1]\ => \bvalid_count_r_reg_n_0_[1]\,
      \bvalid_count_r_reg[2]\ => \bvalid_count_r_reg_n_0_[2]\,
      \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\ => axi_wr_fsm_n_16,
      \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\ => axi_wr_fsm_n_15,
      \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]_0\(1 downto 0) => bvalid_wr_cnt_r(1 downto 0),
      \gaxif_wlast_gen.awlen_cntr_r_reg[0]\ => \gaxif_wlast_gen.awlen_cntr_r[2]_i_2_n_0\,
      \gaxif_wlast_gen.awlen_cntr_r_reg[2]\ => \gaxif_wlast_gen.awlen_cntr_r[3]_i_2_n_0\,
      \gaxif_wlast_gen.awlen_cntr_r_reg[3]\ => \gaxif_wlast_gen.awlen_cntr_r[4]_i_2_n_0\,
      \gaxif_wlast_gen.awlen_cntr_r_reg[4]\ => \gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0\,
      \gaxif_wlast_gen.awlen_cntr_r_reg[6]\ => axi_wr_fsm_n_11,
      \gaxif_wlast_gen.awlen_cntr_r_reg[6]_0\ => \gaxif_wlast_gen.awlen_cntr_r[7]_i_4_n_0\,
      s_axi4_awaddr(31 downto 0) => s_axi4_awaddr(31 downto 0),
      s_axi4_awlen(7 downto 0) => s_axi4_awlen(7 downto 0),
      s_axi4_awvalid => s_axi4_awvalid,
      s_axi4_bready => s_axi4_bready,
      s_axi4_wready => s_axi4_wready,
      s_axi4_wvalid => s_axi4_wvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
\bvalid_count_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0000FFF0FFFE000"
    )
        port map (
      I0 => \bvalid_count_r_reg_n_0_[1]\,
      I1 => \bvalid_count_r_reg_n_0_[2]\,
      I2 => s_axi4_bready,
      I3 => \^gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]_0\,
      I4 => bvalid_c,
      I5 => \bvalid_count_r_reg_n_0_[0]\,
      O => \bvalid_count_r[0]_i_1_n_0\
    );
\bvalid_count_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D52A2ABFBF4000"
    )
        port map (
      I0 => bvalid_c,
      I1 => \^gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]_0\,
      I2 => s_axi4_bready,
      I3 => \bvalid_count_r_reg_n_0_[2]\,
      I4 => \bvalid_count_r_reg_n_0_[1]\,
      I5 => \bvalid_count_r_reg_n_0_[0]\,
      O => \bvalid_count_r[1]_i_1_n_0\
    );
\bvalid_count_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D52AFF00FF00BF00"
    )
        port map (
      I0 => bvalid_c,
      I1 => \^gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]_0\,
      I2 => s_axi4_bready,
      I3 => \bvalid_count_r_reg_n_0_[2]\,
      I4 => \bvalid_count_r_reg_n_0_[1]\,
      I5 => \bvalid_count_r_reg_n_0_[0]\,
      O => \bvalid_count_r[2]_i_1_n_0\
    );
\bvalid_count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_count_r[0]_i_1_n_0\,
      Q => \bvalid_count_r_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\bvalid_count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_count_r[1]_i_1_n_0\,
      Q => \bvalid_count_r_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\bvalid_count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_count_r[2]_i_1_n_0\,
      Q => \bvalid_count_r_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\gaxi_bid_gen.S_AXI_BID_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_n_0\,
      Q => s_axi4_bid(0),
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg_0_3_0_0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => bvalid_wr_cnt_r(0),
      A1 => bvalid_wr_cnt_r(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => '0',
      DPO => \gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_n_0\,
      DPRA0 => CONV_INTEGER(0),
      DPRA1 => CONV_INTEGER(1),
      DPRA2 => '0',
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => \NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_SPO_UNCONNECTED\,
      WCLK => s_axi_aclk,
      WE => axi_wr_fsm_n_13
    );
\gaxi_bid_gen.bvalid_rd_cnt_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bvalid_rd_cnt_r(0),
      I1 => \^gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]_0\,
      I2 => s_axi4_bready,
      O => CONV_INTEGER(0)
    );
\gaxi_bid_gen.bvalid_rd_cnt_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => bvalid_rd_cnt_r(1),
      I1 => s_axi4_bready,
      I2 => \^gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]_0\,
      I3 => bvalid_rd_cnt_r(0),
      O => CONV_INTEGER(1)
    );
\gaxi_bid_gen.bvalid_rd_cnt_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => CONV_INTEGER(0),
      Q => bvalid_rd_cnt_r(0),
      R => \^sr\(0)
    );
\gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => CONV_INTEGER(1),
      Q => bvalid_rd_cnt_r(1),
      R => \^sr\(0)
    );
\gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wr_fsm_n_16,
      Q => bvalid_wr_cnt_r(0),
      R => \^sr\(0)
    );
\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wr_fsm_n_15,
      Q => bvalid_wr_cnt_r(1),
      R => \^sr\(0)
    );
\gaxi_bvalid_id_r.bvalid_d1_c_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bvalid_c,
      Q => bvalid_d1_c,
      R => \^sr\(0)
    );
\gaxi_bvalid_id_r.bvalid_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFAAAA"
    )
        port map (
      I0 => bvalid_d1_c,
      I1 => \bvalid_count_r_reg_n_0_[2]\,
      I2 => \bvalid_count_r_reg_n_0_[1]\,
      I3 => s_axi4_bready,
      I4 => \^gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]_0\,
      O => \gaxi_bvalid_id_r.bvalid_r_i_1_n_0\
    );
\gaxi_bvalid_id_r.bvalid_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gaxi_bvalid_id_r.bvalid_r_i_1_n_0\,
      Q => \^gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]_0\,
      R => \^sr\(0)
    );
\gaxif_wlast_gen.awlen_cntr_r[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(0),
      I1 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(1),
      O => \gaxif_wlast_gen.awlen_cntr_r[2]_i_2_n_0\
    );
\gaxif_wlast_gen.awlen_cntr_r[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(2),
      I1 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(1),
      I2 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(0),
      O => \gaxif_wlast_gen.awlen_cntr_r[3]_i_2_n_0\
    );
\gaxif_wlast_gen.awlen_cntr_r[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(3),
      I1 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(0),
      I2 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(1),
      I3 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(2),
      O => \gaxif_wlast_gen.awlen_cntr_r[4]_i_2_n_0\
    );
\gaxif_wlast_gen.awlen_cntr_r[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(4),
      I1 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(2),
      I2 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(1),
      I3 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(0),
      I4 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(3),
      O => \gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0\
    );
\gaxif_wlast_gen.awlen_cntr_r[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_wr_fsm_n_11,
      I1 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(6),
      O => \gaxif_wlast_gen.awlen_cntr_r[7]_i_4_n_0\
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_wr_fsm_n_14,
      D => p_0_in(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(0),
      S => \^sr\(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_wr_fsm_n_14,
      D => p_0_in(1),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(1),
      S => \^sr\(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_wr_fsm_n_14,
      D => p_0_in(2),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(2),
      S => \^sr\(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_wr_fsm_n_14,
      D => p_0_in(3),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(3),
      S => \^sr\(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_wr_fsm_n_14,
      D => p_0_in(4),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(4),
      S => \^sr\(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_wr_fsm_n_14,
      D => p_0_in(5),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(5),
      S => \^sr\(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_wr_fsm_n_14,
      D => p_0_in(6),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(6),
      S => \^sr\(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_wr_fsm_n_14,
      D => p_0_in(7),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(7),
      S => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_blk_mem_gen_prim_width is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end brd_axi_fifo_mm_s_0_1_blk_mem_gen_prim_width;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_blk_mem_gen_prim_width is
  signal ENB_dly : STD_LOGIC;
  signal POR_B : STD_LOGIC;
  signal RSTB_SHFT_REG : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \SAFETY_CKT_GEN.POR_B_i_1_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "U0/\COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg ";
  attribute srl_name : string;
  attribute srl_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "U0/\COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 ";
begin
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ENB_dly,
      Q => ENB_dly_D,
      R => '0'
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => POR_B,
      Q => ENB_dly,
      R => '0'
    );
\SAFETY_CKT_GEN.POR_B_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RSTB_SHFT_REG(0),
      I1 => RSTB_SHFT_REG(4),
      O => \SAFETY_CKT_GEN.POR_B_i_1_n_0\
    );
\SAFETY_CKT_GEN.POR_B_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SAFETY_CKT_GEN.POR_B_i_1_n_0\,
      Q => POR_B,
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '1',
      Q => RSTB_SHFT_REG(0),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => s_axi_aclk,
      D => RSTB_SHFT_REG(0),
      Q => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\,
      Q => RSTB_SHFT_REG(4),
      R => '0'
    );
\prim_noinit.ram\: entity work.brd_axi_fifo_mm_s_0_1_blk_mem_gen_prim_wrapper
     port map (
      D(31 downto 0) => D(31 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      \gc0.count_d1_reg[8]\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0),
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_dc_ss_fwft is
  port (
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \sig_ip2bus_data_reg[25]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[22]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[20]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[19]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[12]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[24]\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \goreg_dm.dout_i_reg[18]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \grxd.rx_partial_pkt_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC;
    rx_complete : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_sm.r_valid_r1_reg\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_dc_ss_fwft;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_dc_ss_fwft is
begin
dc: entity work.brd_axi_fifo_mm_s_0_1_updn_cntr
     port map (
      D(6 downto 0) => D(6 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\,
      Q(9 downto 0) => Q(9 downto 0),
      S(0) => S(0),
      SR(0) => SR(0),
      \gaxi_full_sm.r_valid_r1_reg\ => \gaxi_full_sm.r_valid_r1_reg\,
      \goreg_dm.dout_i_reg[18]\(10 downto 0) => \goreg_dm.dout_i_reg[18]\(10 downto 0),
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => \out\,
      rx_complete => rx_complete,
      s_axi4_rready => s_axi4_rready,
      s_axi_aclk => s_axi_aclk,
      \sig_ip2bus_data_reg[12]\ => \sig_ip2bus_data_reg[12]\,
      \sig_ip2bus_data_reg[19]\ => \sig_ip2bus_data_reg[19]\,
      \sig_ip2bus_data_reg[20]\ => \sig_ip2bus_data_reg[20]\,
      \sig_ip2bus_data_reg[22]\ => \sig_ip2bus_data_reg[22]\,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[24]\ => \sig_ip2bus_data_reg[24]\,
      \sig_ip2bus_data_reg[25]\ => \sig_ip2bus_data_reg[25]\,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]\,
      \sig_register_array_reg[0][2]\ => \sig_register_array_reg[0][2]\,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_memory__parameterized0\ is
  port (
    \sig_ip2bus_data_reg[27]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[9]\ : out STD_LOGIC_VECTOR ( 21 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    fg_rxd_wr_length : in STD_LOGIC_VECTOR ( 21 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    \gc1.count_d2_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_full_fb_i_reg_0 : in STD_LOGIC;
    \count_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_complete : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_memory__parameterized0\ : entity is "memory";
end \brd_axi_fifo_mm_s_0_1_memory__parameterized0\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_memory__parameterized0\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dout_i : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \goreg_dm.dout_i_reg_n_0_[4]\ : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
\gdm.dm_gen.dm\: entity work.brd_axi_fifo_mm_s_0_1_dmem
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      SR(0) => \^sr\(0),
      fg_rxd_wr_length(21 downto 0) => fg_rxd_wr_length(21 downto 0),
      \gc1.count_d2_reg[6]\(6 downto 0) => \gc1.count_d2_reg[6]\(6 downto 0),
      \goreg_dm.dout_i_reg[22]\(22 downto 0) => dout_i(22 downto 0),
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      ram_full_fb_i_reg_0 => ram_full_fb_i_reg_0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(0),
      Q => \sig_ip2bus_data_reg[9]\(0),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(10),
      Q => \sig_ip2bus_data_reg[9]\(9),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(11),
      Q => \sig_ip2bus_data_reg[9]\(10),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(12),
      Q => \sig_ip2bus_data_reg[9]\(11),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(13),
      Q => \sig_ip2bus_data_reg[9]\(12),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(14),
      Q => \sig_ip2bus_data_reg[9]\(13),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(15),
      Q => \sig_ip2bus_data_reg[9]\(14),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(16),
      Q => \sig_ip2bus_data_reg[9]\(15),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(17),
      Q => \sig_ip2bus_data_reg[9]\(16),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(18),
      Q => \sig_ip2bus_data_reg[9]\(17),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(19),
      Q => \sig_ip2bus_data_reg[9]\(18),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(1),
      Q => \sig_ip2bus_data_reg[9]\(1),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(20),
      Q => \sig_ip2bus_data_reg[9]\(19),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(21),
      Q => \sig_ip2bus_data_reg[9]\(20),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(22),
      Q => \sig_ip2bus_data_reg[9]\(21),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(2),
      Q => \sig_ip2bus_data_reg[9]\(2),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(3),
      Q => \sig_ip2bus_data_reg[9]\(3),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(4),
      Q => \goreg_dm.dout_i_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(5),
      Q => \sig_ip2bus_data_reg[9]\(4),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(6),
      Q => \sig_ip2bus_data_reg[9]\(5),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(7),
      Q => \sig_ip2bus_data_reg[9]\(6),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(8),
      Q => \sig_ip2bus_data_reg[9]\(7),
      R => \^sr\(0)
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(9),
      Q => \sig_ip2bus_data_reg[9]\(8),
      R => \^sr\(0)
    );
\sig_ip2bus_data[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC3CC5555"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg_n_0_[4]\,
      I1 => \count_reg[2]\(0),
      I2 => rx_complete,
      I3 => \grxd.rx_partial_pkt_reg\,
      I4 => \out\,
      I5 => sig_rx_channel_reset_reg,
      O => \sig_ip2bus_data_reg[27]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_rd_logic__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    \grxd.rx_fg_len_empty_d1_reg\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_full_i_reg : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC;
    \gc1.count_d2_reg[6]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpr1.dout_i_reg[22]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sig_rd_rlen : out STD_LOGIC;
    \sig_ip2bus_data_reg[29]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[28]\ : out STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \count_reg[5]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \goreg_dm.dout_i_reg[11]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg[8]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[6]\ : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gcc0.gc0.count_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_rd_logic__parameterized0\ : entity is "rd_logic";
end \brd_axi_fifo_mm_s_0_1_rd_logic__parameterized0\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_rd_logic__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^out\ : STD_LOGIC;
  signal rpntr_n_1 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  \out\ <= \^out\;
\gr1.gr1_int.rfwft\: entity work.brd_axi_fifo_mm_s_0_1_rd_fwft
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      D(1 downto 0) => D(1 downto 0),
      E(0) => \^e\(0),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      Q(3 downto 0) => Q(3 downto 0),
      SS(0) => SS(0),
      \count_reg[5]\ => \count_reg[5]\,
      \count_reg[8]\ => \count_reg[8]\,
      \gc1.count_d2_reg[2]\ => rpntr_n_1,
      \gcc0.gc0.count_d1_reg[6]\ => \gcc0.gc0.count_d1_reg[6]\,
      \goreg_dm.dout_i_reg[11]\(4 downto 0) => \goreg_dm.dout_i_reg[11]\(4 downto 0),
      \goreg_dm.dout_i_reg[22]\(0) => \goreg_dm.dout_i_reg[22]\(0),
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \out\ => \grxd.rx_fg_len_empty_d1_reg\,
      ram_empty_fb_i_reg => \^out\,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      ram_full_i_reg => ram_full_i_reg,
      rx_len_wr_en => rx_len_wr_en,
      s2mm_prmry_reset_out_n => s2mm_prmry_reset_out_n,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[28]\ => \sig_ip2bus_data_reg[28]\,
      \sig_ip2bus_data_reg[29]\ => \sig_ip2bus_data_reg[29]\,
      sig_rd_rlen => sig_rd_rlen,
      sig_rd_rlen_reg => sig_rd_rlen_reg,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0
    );
\grss.rsts\: entity work.\brd_axi_fifo_mm_s_0_1_rd_status_flags_ss__parameterized0\
     port map (
      \out\ => \^out\,
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg,
      s_axi_aclk => s_axi_aclk
    );
rpntr: entity work.\brd_axi_fifo_mm_s_0_1_rd_bin_cntr__parameterized0\
     port map (
      E(0) => \^e\(0),
      SS(0) => SS(0),
      \gc1.count_d2_reg[6]_0\(4 downto 0) => \gc1.count_d2_reg[6]\(4 downto 0),
      \gcc0.gc0.count_d1_reg[1]\(1 downto 0) => \gcc0.gc0.count_d1_reg[1]\(1 downto 0),
      \gcc0.gc0.count_reg[6]\(6 downto 0) => \gcc0.gc0.count_reg[6]\(6 downto 0),
      \gpr1.dout_i_reg[22]\(6 downto 0) => \gpr1.dout_i_reg[22]\(6 downto 0),
      ram_empty_i_reg => ram_empty_i_reg,
      ram_full_i_reg => rpntr_n_1,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_rd_status_flags_ss is
  port (
    \out\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[0]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[6]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_reg[8]\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\ : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end brd_axi_fifo_mm_s_0_1_rd_status_flags_ss;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_rd_status_flags_ss is
  signal c2_n_0 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
c1: entity work.brd_axi_fifo_mm_s_0_1_compare_2
     port map (
      comp0 => comp0,
      \gcc0.gc0.count_d1_reg[0]\ => \gcc0.gc0.count_d1_reg[0]\,
      \gcc0.gc0.count_d1_reg[2]\ => \gcc0.gc0.count_d1_reg[2]\,
      \gcc0.gc0.count_d1_reg[4]\ => \gcc0.gc0.count_d1_reg[4]\,
      \gcc0.gc0.count_d1_reg[6]\ => \gcc0.gc0.count_d1_reg[6]\,
      \gcc0.gc0.count_d1_reg[8]\ => \gcc0.gc0.count_d1_reg[8]\
    );
c2: entity work.brd_axi_fifo_mm_s_0_1_compare_3
     port map (
      E(0) => E(0),
      comp0 => comp0,
      \gc0.count_reg[8]\ => \gc0.count_reg[8]\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\,
      \out\ => ram_empty_fb_i,
      ram_empty_i_reg => c2_n_0,
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0),
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => c2_n_0,
      Q => ram_empty_fb_i,
      R => '0'
    );
ram_empty_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => c2_n_0,
      Q => ram_empty_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_reset_blk_ramfifo is
  port (
    \out\ : out STD_LOGIC;
    ENB_I : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC;
    ram_full_i_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    sync_areset_n : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    comp0 : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_reset_blk_ramfifo;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_reset_blk_ramfifo is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dest_rst : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\ : STD_LOGIC;
  signal inverted_reset : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal sckt_wr_rst_cc : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal wr_rst_busy_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \goreg_bm.dout_i[40]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \greg.ram_rd_en_i_i_1\ : label is "soft_lutpair8";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT : string;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \out\ <= rst_d3;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => ENB_dly_D,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => ram_empty_fb_i_reg,
      O => ENB_I
    );
\goreg_bm.dout_i[40]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => ram_empty_i_reg
    );
\greg.ram_rd_en_i_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => SR(0)
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wr_rst_busy_i,
      Q => rst_d1,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_d1,
      Q => rst_d2,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rst_d2,
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\,
      Q => rst_d3,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => dest_rst,
      Q => \^q\(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(0),
      Q => \^q\(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(1),
      Q => sckt_wr_rst_cc(2),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sckt_wr_rst_cc(2),
      Q => sckt_wr_rst_cc(3),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\: entity work.brd_axi_fifo_mm_s_0_1_xpm_cdc_sync_rst
     port map (
      dest_clk => s_axi_aclk,
      dest_rst => dest_rst,
      src_rst => inverted_reset
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync_areset_n,
      O => inverted_reset
    );
\ram_full_fb_i_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0444"
    )
        port map (
      I0 => rst_d3,
      I1 => ram_full_fb_i_reg,
      I2 => comp0,
      I3 => ram_empty_fb_i_reg,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => ram_full_i_reg
    );
wr_rst_busy_i_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => sckt_wr_rst_cc(2),
      I3 => sckt_wr_rst_cc(3),
      O => wr_rst_busy_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_wr_logic__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_i_reg : out STD_LOGIC;
    ram_empty_i_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gcc0.gc0.count_d1_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \gpr1.dout_i_reg[0]\ : out STD_LOGIC;
    \gpr1.dout_i_reg[22]\ : out STD_LOGIC;
    \grxd.rx_len_wr_en_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_len_wr_en : in STD_LOGIC;
    \gc1.count_d1_reg[1]\ : in STD_LOGIC;
    \gc1.count_d1_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gc1.count_d2_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_wr_logic__parameterized0\ : entity is "wr_logic";
end \brd_axi_fifo_mm_s_0_1_wr_logic__parameterized0\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_wr_logic__parameterized0\ is
  signal p_11_out : STD_LOGIC_VECTOR ( 6 to 6 );
  signal p_17_out : STD_LOGIC;
begin
\gwss.wsts\: entity work.\brd_axi_fifo_mm_s_0_1_wr_status_flags_ss__parameterized0\
     port map (
      E(0) => p_17_out,
      Q(0) => p_11_out(6),
      \gpr1.dout_i_reg[0]\ => \gpr1.dout_i_reg[0]\,
      \gpr1.dout_i_reg[22]\ => \gpr1.dout_i_reg[22]\,
      \grxd.rx_len_wr_en_reg\ => \grxd.rx_len_wr_en_reg\,
      \out\ => \out\,
      rx_len_wr_en => rx_len_wr_en,
      s_axi_aclk => s_axi_aclk
    );
wpntr: entity work.\brd_axi_fifo_mm_s_0_1_wr_bin_cntr__parameterized0\
     port map (
      E(0) => E(0),
      Q(6) => p_11_out(6),
      Q(5 downto 0) => Q(5 downto 0),
      SR(0) => SR(0),
      \gc1.count_d1_reg[1]\ => \gc1.count_d1_reg[1]\,
      \gc1.count_d1_reg[6]\(4 downto 0) => \gc1.count_d1_reg[6]\(4 downto 0),
      \gc1.count_d2_reg[6]\(6 downto 0) => \gc1.count_d2_reg[6]\(6 downto 0),
      \gcc0.gc0.count_d1_reg[6]_0\(6 downto 0) => \gcc0.gc0.count_d1_reg[6]\(6 downto 0),
      \grxd.rx_len_wr_en_reg\(0) => p_17_out,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg,
      ram_empty_i_reg => ram_empty_i_reg,
      ram_empty_i_reg_0 => ram_empty_i_reg_0,
      s_axi_aclk => s_axi_aclk,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_wr_status_flags_ss is
  port (
    comp0 : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \grxd.fg_rxd_wr_length_reg[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    rx_complete : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENA_I : out STD_LOGIC;
    rd_pntr_inv_pad : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_3_out : out STD_LOGIC;
    \gcc0.gc0.count_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grxd.fg_rxd_wr_length_reg[2]\ : out STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : out STD_LOGIC;
    \grxd.rx_len_wr_en_reg\ : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gcc0.gc0.count_reg[8]\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    axi_str_rxd_tlast : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_wr_status_flags_ss;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_wr_status_flags_ss is
  signal c1_n_0 : STD_LOGIC;
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \out\ <= ram_full_fb_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => ENB_dly_D,
      I1 => ram_full_i,
      I2 => axi_str_rxd_tvalid,
      I3 => ram_full_fb_i,
      O => ENA_I
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => axi_str_rxd_tvalid,
      I2 => ram_full_i,
      O => \gcc0.gc0.count_reg[0]\(0)
    );
axi_str_rxd_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => axi_str_rxd_tready
    );
c0: entity work.brd_axi_fifo_mm_s_0_1_compare
     port map (
      comp0 => comp0,
      \gcc0.gc0.count_d1_reg[8]\ => \gcc0.gc0.count_d1_reg[8]\,
      v1_reg(3 downto 0) => v1_reg(3 downto 0)
    );
c1: entity work.brd_axi_fifo_mm_s_0_1_compare_0
     port map (
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      \gcc0.gc0.count_reg[8]\ => \gcc0.gc0.count_reg[8]\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      \out\ => ram_full_i,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg,
      ram_full_fb_i_reg => ram_full_fb_i,
      ram_full_i_reg => c1_n_0,
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0)
    );
\grxd.fg_rxd_wr_length[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFDDDDDDDD"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => Axi_Str_TxD_AReset,
      I2 => axi_str_rxd_tlast,
      I3 => axi_str_rxd_tvalid,
      I4 => ram_full_i,
      I5 => rx_len_wr_en,
      O => \grxd.fg_rxd_wr_length_reg[22]\(0)
    );
\grxd.fg_rxd_wr_length[22]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_str_rxd_tvalid,
      I1 => ram_full_i,
      O => E(0)
    );
\grxd.fg_rxd_wr_length[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_full_i,
      I1 => axi_str_rxd_tvalid,
      O => \grxd.fg_rxd_wr_length_reg[2]\
    );
\grxd.rx_len_wr_en_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => ram_full_i,
      I1 => axi_str_rxd_tvalid,
      I2 => axi_str_rxd_tlast,
      I3 => s_axi_aresetn,
      I4 => Axi_Str_TxD_AReset,
      O => \grxd.rx_len_wr_en_reg\
    );
\grxd.rx_partial_pkt_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFF8AAA"
    )
        port map (
      I0 => sig_rd_rlen_reg,
      I1 => ram_full_i,
      I2 => axi_str_rxd_tvalid,
      I3 => axi_str_rxd_tlast,
      I4 => \grxd.rx_partial_pkt_reg_0\,
      O => \grxd.rx_partial_pkt_reg\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_fb
    );
plusOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => ram_full_i,
      I1 => axi_str_rxd_tvalid,
      I2 => ram_full_fb_i,
      I3 => ram_empty_fb_i_reg,
      O => rd_pntr_inv_pad(0)
    );
\plusOp_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => axi_str_rxd_tvalid,
      I2 => ram_full_i,
      I3 => ram_empty_fb_i_reg,
      O => p_3_out
    );
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_full_fb_i,
      R => '0'
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_full_i,
      R => '0'
    );
\sig_ip2bus_data[22]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => \grxd.rx_partial_pkt_reg_0\,
      I1 => ram_full_i,
      I2 => axi_str_rxd_tvalid,
      I3 => axi_str_rxd_tlast,
      O => \sig_ip2bus_data_reg[26]\
    );
\sig_register_array[0][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => axi_str_rxd_tlast,
      I1 => axi_str_rxd_tvalid,
      I2 => ram_full_i,
      O => rx_complete
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_axi_wrapper is
  port (
    s_axi4_arready : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \FSM_sequential_gaxi_full_sm.present_state_reg[1]\ : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_wready : out STD_LOGIC;
    \gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]\ : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_rready : in STD_LOGIC;
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end brd_axi_fifo_mm_s_0_1_axi_wrapper;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_axi_wrapper is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  SS(0) <= \^ss\(0);
axi_rd_sm: entity work.brd_axi_fifo_mm_s_0_1_axi_read_wrapper
     port map (
      SR(0) => \^ss\(0),
      \out\ => \out\,
      s_axi4_araddr(31 downto 0) => s_axi4_araddr(31 downto 0),
      s_axi4_arid(0) => s_axi4_arid(0),
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arready => s_axi4_arready,
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_rid(0) => s_axi4_rid(0),
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rvalid => s_axi4_rvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
axi_wr_fsm: entity work.brd_axi_fifo_mm_s_0_1_axi_write_wrapper
     port map (
      \FSM_sequential_gaxi_full_sm.present_state_reg[1]\ => \FSM_sequential_gaxi_full_sm.present_state_reg[1]\,
      SR(0) => \^ss\(0),
      \gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]_0\ => \gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]\,
      s_axi4_awaddr(31 downto 0) => s_axi4_awaddr(31 downto 0),
      s_axi4_awlen(7 downto 0) => s_axi4_awlen(7 downto 0),
      s_axi4_awvalid => s_axi4_awvalid,
      s_axi4_bid(0) => s_axi4_bid(0),
      s_axi4_bready => s_axi4_bready,
      s_axi4_wready => s_axi4_wready,
      s_axi4_wvalid => s_axi4_wvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_slave_attachment is
  port (
    \sig_register_array_reg[0][7]\ : out STD_LOGIC;
    IPIC_STATE_reg : out STD_LOGIC;
    sig_str_rst_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 22 downto 0 );
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    \sig_register_array[0]1_out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_register_array_reg[0][5]\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]\ : out STD_LOGIC;
    \sig_register_array_reg[0][8]\ : out STD_LOGIC;
    \sig_register_array_reg[0][12]\ : out STD_LOGIC;
    \sig_register_array_reg[0][11]\ : out STD_LOGIC;
    \sig_register_array_reg[0][8]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_register_array_reg[1][0]\ : out STD_LOGIC;
    \sig_register_array_reg[1][0]_0\ : out STD_LOGIC;
    IP2Bus_RdAck_reg : out STD_LOGIC;
    IP2Bus_WrAck_reg : out STD_LOGIC;
    \sig_register_array_reg[0][7]_0\ : out STD_LOGIC;
    \sig_register_array_reg[1][0]_1\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \sig_ip2bus_data_reg[21]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[0]\ : out STD_LOGIC;
    sig_rx_channel_reset_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_str_rst_reg_0 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    cs_ce_clr : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    IP2Bus_RdAck_reg_0 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    IP2Bus_WrAck_reg_0 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \goreg_dm.dout_i_reg[5]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \goreg_dm.dout_i_reg[4]\ : in STD_LOGIC;
    \goreg_dm.dout_i_reg[6]\ : in STD_LOGIC;
    \goreg_dm.dout_i_reg[9]\ : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    \goreg_dm.dout_i_reg[22]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_reg[8]\ : in STD_LOGIC;
    \sig_register_array_reg[1][0]_2\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \goreg_dm.dout_i_reg[7]\ : in STD_LOGIC;
    s_axi_wdata_6_sp_1 : in STD_LOGIC;
    s2mm_prmry_reset_out_n : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_wdata_3_sp_1 : in STD_LOGIC;
    IPIC_STATE : in STD_LOGIC;
    IPIC_STATE_reg_0 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[1]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \sig_register_array_reg[0][12]_0\ : in STD_LOGIC;
    \sig_register_array_reg[0][11]_0\ : in STD_LOGIC;
    \sig_register_array_reg[0][8]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][7]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][5]_0\ : in STD_LOGIC;
    \sig_register_array_reg[0][2]_0\ : in STD_LOGIC;
    sig_rx_channel_reset_reg_1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_ip2bus_data_reg[0]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end brd_axi_fifo_mm_s_0_1_slave_attachment;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[1]\ : signal is "yes";
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[5]\ : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal s_axi_bresp_i : STD_LOGIC;
  attribute RTL_KEEP of s_axi_bresp_i : signal is "yes";
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  attribute RTL_KEEP of s_axi_rresp_i : signal is "yes";
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_wdata_3_sn_1 : STD_LOGIC;
  signal s_axi_wdata_6_sn_1 : STD_LOGIC;
  signal sig_Bus2IP_RNW : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_2\ : label is "soft_lutpair55";
begin
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wdata_3_sn_1 <= s_axi_wdata_3_sp_1;
  s_axi_wdata_6_sn_1 <= s_axi_wdata_6_sp_1;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => IP2Bus_WrAck_reg_0,
      I3 => s_axi_bresp_i,
      I4 => IP2Bus_RdAck_reg_0,
      I5 => s_axi_rresp_i,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F444F444F44"
    )
        port map (
      I0 => \FSM_onehot_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => s_axi_wvalid,
      I5 => s_axi_awvalid,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_bready,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F44444444444444"
    )
        port map (
      I0 => IP2Bus_WrAck_reg_0,
      I1 => s_axi_bresp_i,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => s_axi_awvalid,
      I5 => s_axi_wvalid,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_arvalid,
      I2 => IP2Bus_RdAck_reg_0,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      S => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => rst
    );
IP2Bus_WrAck_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_Bus2IP_RNW,
      O => IP2Bus_WrAck_reg
    );
I_DECODER: entity work.brd_axi_fifo_mm_s_0_1_address_decoder
     port map (
      D(22 downto 0) => D(22 downto 0),
      E(0) => E(0),
      IP2Bus_RdAck_reg => IP2Bus_RdAck_reg,
      IP2Bus_RdAck_reg_0 => IP2Bus_RdAck_reg_0,
      IP2Bus_WrAck_reg => IP2Bus_WrAck_reg_0,
      IPIC_STATE => IPIC_STATE,
      IPIC_STATE_reg => IPIC_STATE_reg,
      IPIC_STATE_reg_0 => IPIC_STATE_reg_0,
      Q => start2,
      SR(0) => SR(0),
      \bus2ip_addr_i_reg[5]\(3) => \bus2ip_addr_i_reg_n_0_[5]\,
      \bus2ip_addr_i_reg[5]\(2) => \bus2ip_addr_i_reg_n_0_[4]\,
      \bus2ip_addr_i_reg[5]\(1) => \bus2ip_addr_i_reg_n_0_[3]\,
      \bus2ip_addr_i_reg[5]\(0) => \bus2ip_addr_i_reg_n_0_[2]\,
      \count_reg[0]\ => \count_reg[0]\,
      \count_reg[1]\ => \count_reg[1]\,
      \count_reg[8]\ => \count_reg[8]\,
      \count_reg[9]\(9 downto 0) => Q(9 downto 0),
      cs_ce_clr => cs_ce_clr,
      \goreg_dm.dout_i_reg[22]\(5 downto 0) => \goreg_dm.dout_i_reg[22]\(5 downto 0),
      \goreg_dm.dout_i_reg[4]\ => \goreg_dm.dout_i_reg[4]\,
      \goreg_dm.dout_i_reg[5]\ => \goreg_dm.dout_i_reg[5]\,
      \goreg_dm.dout_i_reg[6]\ => \goreg_dm.dout_i_reg[6]\,
      \goreg_dm.dout_i_reg[7]\ => \goreg_dm.dout_i_reg[7]\,
      \goreg_dm.dout_i_reg[9]\ => \goreg_dm.dout_i_reg[9]\,
      \out\ => \out\,
      s2mm_prmry_reset_out_n => s2mm_prmry_reset_out_n,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(12 downto 0) => s_axi_wdata(12 downto 0),
      s_axi_wdata_3_sp_1 => s_axi_wdata_3_sn_1,
      s_axi_wdata_6_sp_1 => s_axi_wdata_6_sn_1,
      sig_Bus2IP_RNW => sig_Bus2IP_RNW,
      \sig_ip2bus_data_reg[0]\ => \sig_ip2bus_data_reg[0]\,
      \sig_ip2bus_data_reg[21]\ => \sig_ip2bus_data_reg[21]\,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]\,
      \sig_register_array[0]1_out\(0) => \sig_register_array[0]1_out\(0),
      \sig_register_array_reg[0][11]\ => \sig_register_array_reg[0][11]\,
      \sig_register_array_reg[0][11]_0\ => \sig_register_array_reg[0][11]_0\,
      \sig_register_array_reg[0][12]\ => \sig_register_array_reg[0][12]\,
      \sig_register_array_reg[0][12]_0\ => \sig_register_array_reg[0][12]_0\,
      \sig_register_array_reg[0][2]\ => \sig_register_array_reg[0][2]\,
      \sig_register_array_reg[0][2]_0\ => \sig_register_array_reg[0][2]_0\,
      \sig_register_array_reg[0][5]\ => \sig_register_array_reg[0][5]\,
      \sig_register_array_reg[0][5]_0\ => \sig_register_array_reg[0][5]_0\,
      \sig_register_array_reg[0][7]\ => \sig_register_array_reg[0][7]\,
      \sig_register_array_reg[0][7]_0\ => \sig_register_array_reg[0][7]_0\,
      \sig_register_array_reg[0][7]_1\ => \sig_register_array_reg[0][7]_1\,
      \sig_register_array_reg[0][8]\ => \sig_register_array_reg[0][8]\,
      \sig_register_array_reg[0][8]_0\ => \sig_register_array_reg[0][8]_0\,
      \sig_register_array_reg[0][8]_1\ => \sig_register_array_reg[0][8]_1\,
      \sig_register_array_reg[1][0]\ => \sig_register_array_reg[1][0]\,
      \sig_register_array_reg[1][0]_0\ => \sig_register_array_reg[1][0]_0\,
      \sig_register_array_reg[1][0]_1\(12 downto 0) => \sig_register_array_reg[1][0]_1\(12 downto 0),
      \sig_register_array_reg[1][0]_2\(12 downto 0) => \sig_register_array_reg[1][0]_2\(12 downto 0),
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0,
      sig_rx_channel_reset_reg_1 => sig_rx_channel_reset_reg_1,
      sig_str_rst_reg => sig_str_rst_reg,
      sig_str_rst_reg_0 => sig_str_rst_reg_0
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(0),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(1),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(2),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(3),
      O => \bus2ip_addr_i[5]_i_2_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[5]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[5]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[3]\,
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[5]_i_1_n_0\,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[4]\,
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[5]_i_1_n_0\,
      D => \bus2ip_addr_i[5]_i_2_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[5]\,
      R => rst
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[5]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => sig_Bus2IP_RNW,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => SS(0),
      Q => rst,
      R => '0'
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5C0"
    )
        port map (
      I0 => s_axi_bready,
      I1 => s_axi_bresp_i,
      I2 => IP2Bus_WrAck_reg_0,
      I3 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => rst
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(0),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(10),
      Q => s_axi_rdata(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(11),
      Q => s_axi_rdata(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(12),
      Q => s_axi_rdata(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(13),
      Q => s_axi_rdata(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(14),
      Q => s_axi_rdata(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(15),
      Q => s_axi_rdata(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(16),
      Q => s_axi_rdata(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(17),
      Q => s_axi_rdata(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(18),
      Q => s_axi_rdata(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(19),
      Q => s_axi_rdata(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(1),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(20),
      Q => s_axi_rdata(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(21),
      Q => s_axi_rdata(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(22),
      Q => s_axi_rdata(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(23),
      Q => s_axi_rdata(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(24),
      Q => s_axi_rdata(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(25),
      Q => s_axi_rdata(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(26),
      Q => s_axi_rdata(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(27),
      Q => s_axi_rdata(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(28),
      Q => s_axi_rdata(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(29),
      Q => s_axi_rdata(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(2),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(30),
      Q => s_axi_rdata(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(31),
      Q => s_axi_rdata(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(3),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(4),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(5),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(6),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(7),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(8),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \sig_ip2bus_data_reg[0]_0\(9),
      Q => s_axi_rdata(9),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5C0"
    )
        port map (
      I0 => s_axi_rready,
      I1 => s_axi_rresp_i,
      I2 => IP2Bus_RdAck_reg_0,
      I3 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => s_axi_arvalid,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_blk_mem_gen_generic_cstr is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end brd_axi_fifo_mm_s_0_1_blk_mem_gen_generic_cstr;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.brd_axi_fifo_mm_s_0_1_blk_mem_gen_prim_width
     port map (
      D(31 downto 0) => D(31 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      \gc0.count_d1_reg[8]\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0),
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_fifo_generator_ramfifo__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[27]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    sig_rd_rlen : out STD_LOGIC;
    \sig_ip2bus_data_reg[29]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[28]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[9]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rx_complete : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    \count_reg[5]\ : in STD_LOGIC;
    \count_reg[8]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    fg_rxd_wr_length : in STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_fifo_generator_ramfifo__parameterized0\ : entity is "fifo_generator_ramfifo";
end \brd_axi_fifo_mm_s_0_1_fifo_generator_ramfifo__parameterized0\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_fifo_generator_ramfifo__parameterized0\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gntv_or_sync_fifo.gl0.rd_n_5\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_7\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_9\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_16\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_17\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_2\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.mem_n_13\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.mem_n_14\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.mem_n_16\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.mem_n_20\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.mem_n_21\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_11_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_2_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal \^s2mm_prmry_reset_out_n\ : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
  \out\ <= \^out\;
  s2mm_prmry_reset_out_n <= \^s2mm_prmry_reset_out_n\;
\gntv_or_sync_fifo.gl0.rd\: entity work.\brd_axi_fifo_mm_s_0_1_rd_logic__parameterized0\
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      D(1 downto 0) => D(1 downto 0),
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_7\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      Q(3 downto 2) => Q(4 downto 3),
      Q(1 downto 0) => Q(1 downto 0),
      SS(0) => \^sr\(0),
      \count_reg[5]\ => \count_reg[5]\,
      \count_reg[8]\ => \count_reg[8]\,
      \gc1.count_d2_reg[6]\(4 downto 0) => rd_pntr_plus1(6 downto 2),
      \gcc0.gc0.count_d1_reg[1]\(1 downto 0) => p_11_out(1 downto 0),
      \gcc0.gc0.count_d1_reg[6]\ => \gntv_or_sync_fifo.gl0.wr_n_2\,
      \gcc0.gc0.count_reg[6]\(6 downto 0) => p_12_out(6 downto 0),
      \goreg_dm.dout_i_reg[11]\(4) => \gntv_or_sync_fifo.mem_n_13\,
      \goreg_dm.dout_i_reg[11]\(3) => \gntv_or_sync_fifo.mem_n_14\,
      \goreg_dm.dout_i_reg[11]\(2) => \gntv_or_sync_fifo.mem_n_16\,
      \goreg_dm.dout_i_reg[11]\(1) => \gntv_or_sync_fifo.mem_n_20\,
      \goreg_dm.dout_i_reg[11]\(0) => \gntv_or_sync_fifo.mem_n_21\,
      \goreg_dm.dout_i_reg[22]\(0) => p_5_out,
      \gpr1.dout_i_reg[22]\(6 downto 0) => p_0_out(6 downto 0),
      \grxd.rx_fg_len_empty_d1_reg\ => \^out\,
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => p_2_out,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_1\,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.rd_n_9\,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_0\,
      ram_full_i_reg => \gntv_or_sync_fifo.gl0.rd_n_5\,
      rx_len_wr_en => rx_len_wr_en,
      s2mm_prmry_reset_out_n => \^s2mm_prmry_reset_out_n\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[28]\ => \sig_ip2bus_data_reg[28]\,
      \sig_ip2bus_data_reg[29]\ => \sig_ip2bus_data_reg[29]\,
      sig_rd_rlen => sig_rd_rlen,
      sig_rd_rlen_reg => sig_rd_rlen_reg,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\brd_axi_fifo_mm_s_0_1_wr_logic__parameterized0\
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_7\,
      Q(5 downto 0) => p_11_out(5 downto 0),
      SR(0) => \^sr\(0),
      \gc1.count_d1_reg[1]\ => \gntv_or_sync_fifo.gl0.rd_n_9\,
      \gc1.count_d1_reg[6]\(4 downto 0) => rd_pntr_plus1(6 downto 2),
      \gc1.count_d2_reg[6]\(6 downto 0) => p_0_out(6 downto 0),
      \gcc0.gc0.count_d1_reg[6]\(6 downto 0) => p_12_out(6 downto 0),
      \gpr1.dout_i_reg[0]\ => \gntv_or_sync_fifo.gl0.wr_n_16\,
      \gpr1.dout_i_reg[22]\ => \gntv_or_sync_fifo.gl0.wr_n_17\,
      \grxd.rx_len_wr_en_reg\ => \gntv_or_sync_fifo.gl0.rd_n_5\,
      \out\ => \gntv_or_sync_fifo.gl0.wr_n_0\,
      ram_empty_fb_i_reg => p_2_out,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.wr_n_1\,
      ram_empty_i_reg_0 => \gntv_or_sync_fifo.gl0.wr_n_2\,
      rx_len_wr_en => rx_len_wr_en,
      s_axi_aclk => s_axi_aclk,
      sig_rx_channel_reset_reg => \^s2mm_prmry_reset_out_n\
    );
\gntv_or_sync_fifo.mem\: entity work.\brd_axi_fifo_mm_s_0_1_memory__parameterized0\
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_7\,
      Q(5 downto 0) => p_11_out(5 downto 0),
      SR(0) => \^sr\(0),
      \count_reg[2]\(0) => Q(2),
      fg_rxd_wr_length(21 downto 0) => fg_rxd_wr_length(21 downto 0),
      \gc1.count_d2_reg[6]\(6 downto 0) => p_0_out(6 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => p_5_out,
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \out\ => \^out\,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_16\,
      ram_full_fb_i_reg_0 => \gntv_or_sync_fifo.gl0.wr_n_17\,
      rx_complete => rx_complete,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[27]\ => \sig_ip2bus_data_reg[27]\,
      \sig_ip2bus_data_reg[9]\(21 downto 11) => \sig_ip2bus_data_reg[9]\(16 downto 6),
      \sig_ip2bus_data_reg[9]\(10) => \gntv_or_sync_fifo.mem_n_13\,
      \sig_ip2bus_data_reg[9]\(9) => \gntv_or_sync_fifo.mem_n_14\,
      \sig_ip2bus_data_reg[9]\(8) => \sig_ip2bus_data_reg[9]\(5),
      \sig_ip2bus_data_reg[9]\(7) => \gntv_or_sync_fifo.mem_n_16\,
      \sig_ip2bus_data_reg[9]\(6 downto 4) => \sig_ip2bus_data_reg[9]\(4 downto 2),
      \sig_ip2bus_data_reg[9]\(3) => \gntv_or_sync_fifo.mem_n_20\,
      \sig_ip2bus_data_reg[9]\(2) => \gntv_or_sync_fifo.mem_n_21\,
      \sig_ip2bus_data_reg[9]\(1 downto 0) => \sig_ip2bus_data_reg[9]\(1 downto 0),
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_rd_logic is
  port (
    \gc0.count_d1_reg[8]\ : out STD_LOGIC;
    p_10_out : out STD_LOGIC;
    \goreg_bm.dout_i_reg[40]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[13]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \sig_ip2bus_data_reg[25]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[22]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[20]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[19]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[12]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[24]\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]\ : out STD_LOGIC;
    \gc0.count_d1_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gpfs.prog_full_i_reg\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[8]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[4]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \gcc0.gc0.count_d1_reg[0]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[6]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_pntr_inv_pad : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gcc0.gc0.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gcc0.gc0.count_d1_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]_0\ : in STD_LOGIC;
    \gaxi_full_sm.r_valid_r1_reg\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    \goreg_dm.dout_i_reg[18]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \grxd.rx_partial_pkt_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC;
    rx_complete : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    \gcc0.gc0.count_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[6]\ : in STD_LOGIC;
    p_9_out : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_rd_logic;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_rd_logic is
  signal cntr_en : STD_LOGIC;
  signal \^gc0.count_d1_reg[8]\ : STD_LOGIC;
  signal \gr1.gr1_int.rfwft_n_2\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rpntr_n_29 : STD_LOGIC;
  signal \^sig_ip2bus_data_reg[13]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
  \gc0.count_d1_reg[8]\ <= \^gc0.count_d1_reg[8]\;
  \sig_ip2bus_data_reg[13]\(9 downto 0) <= \^sig_ip2bus_data_reg[13]\(9 downto 0);
\gr1.gdcf.dc\: entity work.brd_axi_fifo_mm_s_0_1_dc_ss_fwft
     port map (
      D(6 downto 0) => D(6 downto 0),
      E(0) => cntr_en,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\,
      Q(9 downto 0) => \^sig_ip2bus_data_reg[13]\(9 downto 0),
      S(0) => \gr1.gr1_int.rfwft_n_2\,
      SR(0) => SR(0),
      \gaxi_full_sm.r_valid_r1_reg\ => \gaxi_full_sm.r_valid_r1_reg\,
      \goreg_dm.dout_i_reg[18]\(10 downto 0) => \goreg_dm.dout_i_reg[18]\(10 downto 0),
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => \out\,
      rx_complete => rx_complete,
      s_axi4_rready => s_axi4_rready,
      s_axi_aclk => s_axi_aclk,
      \sig_ip2bus_data_reg[12]\ => \sig_ip2bus_data_reg[12]\,
      \sig_ip2bus_data_reg[19]\ => \sig_ip2bus_data_reg[19]\,
      \sig_ip2bus_data_reg[20]\ => \sig_ip2bus_data_reg[20]\,
      \sig_ip2bus_data_reg[22]\ => \sig_ip2bus_data_reg[22]\,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[24]\ => \sig_ip2bus_data_reg[24]\,
      \sig_ip2bus_data_reg[25]\ => \sig_ip2bus_data_reg[25]\,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]\,
      \sig_register_array_reg[0][2]\ => \sig_register_array_reg[0][2]\,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0
    );
\gr1.gr1_int.rfwft\: entity work.brd_axi_fifo_mm_s_0_1_rd_fwft_1
     port map (
      E(0) => cntr_en,
      S(0) => \gr1.gr1_int.rfwft_n_2\,
      SR(0) => SR(0),
      \count_reg[1]\(0) => \^sig_ip2bus_data_reg[13]\(1),
      \gaxi_full_sm.r_valid_r1_reg\ => \gaxi_full_sm.r_valid_r1_reg\,
      \gc0.count_d1_reg[8]\(0) => \^gc0.count_d1_reg[8]\,
      \goreg_bm.dout_i_reg[40]\(0) => \goreg_bm.dout_i_reg[40]\(0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\(1 downto 0) => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\(1 downto 0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]_0\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]_0\,
      \out\ => p_2_out,
      ram_full_fb_i_reg(0) => E(0),
      s_axi4_rready => s_axi4_rready,
      s_axi_aclk => s_axi_aclk
    );
\grss.gpe.rdpe\: entity work.brd_axi_fifo_mm_s_0_1_rd_pe_ss
     port map (
      E(0) => \^gc0.count_d1_reg[8]\,
      Q(7 downto 0) => Q(7 downto 0),
      S(3 downto 0) => S(3 downto 0),
      SR(0) => SR(0),
      \gcc0.gc0.count_d1_reg[7]\(3 downto 0) => \gcc0.gc0.count_d1_reg[7]\(3 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(0) => \gcc0.gc0.count_d1_reg[8]_0\(0),
      \gdiff.gcry_1_sym.diff_pntr_pad_reg[6]\ => \gdiff.gcry_1_sym.diff_pntr_pad_reg[6]\,
      \gpfs.prog_full_i_reg\ => \gpfs.prog_full_i_reg\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\(1 downto 0) => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\(1 downto 0),
      p_10_out => p_10_out,
      p_9_out => p_9_out,
      ram_full_fb_i_reg(0) => E(0),
      rd_pntr_inv_pad(0) => rd_pntr_inv_pad(0),
      s_axi_aclk => s_axi_aclk
    );
\grss.rsts\: entity work.brd_axi_fifo_mm_s_0_1_rd_status_flags_ss
     port map (
      E(0) => \^gc0.count_d1_reg[8]\,
      \gc0.count_reg[8]\ => rpntr_n_29,
      \gcc0.gc0.count_d1_reg[0]\ => \gcc0.gc0.count_d1_reg[0]\,
      \gcc0.gc0.count_d1_reg[2]\ => \gcc0.gc0.count_d1_reg[2]\,
      \gcc0.gc0.count_d1_reg[4]\ => \gcc0.gc0.count_d1_reg[4]\,
      \gcc0.gc0.count_d1_reg[6]\ => \gcc0.gc0.count_d1_reg[6]\,
      \gcc0.gc0.count_d1_reg[8]\ => \gcc0.gc0.count_d1_reg[8]\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]_0\,
      \out\ => p_2_out,
      ram_full_fb_i_reg(0) => E(0),
      s_axi_aclk => s_axi_aclk,
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0)
    );
rpntr: entity work.brd_axi_fifo_mm_s_0_1_rd_bin_cntr
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      E(0) => \^gc0.count_d1_reg[8]\,
      Q(7 downto 0) => \gc0.count_d1_reg[7]\(7 downto 0),
      SR(0) => SR(0),
      \gcc0.gc0.count_d1_reg[8]\(0) => Q(8),
      \gcc0.gc0.count_reg[7]\(7 downto 0) => \gcc0.gc0.count_reg[7]\(7 downto 0),
      \gdiff.gcry_1_sym.diff_pntr_pad_reg[4]\(3 downto 0) => \gdiff.gcry_1_sym.diff_pntr_pad_reg[4]\(3 downto 0),
      \gdiff.gcry_1_sym.diff_pntr_pad_reg[8]\(3 downto 0) => \gdiff.gcry_1_sym.diff_pntr_pad_reg[8]\(3 downto 0),
      ram_empty_i_reg => rpntr_n_29,
      s_axi_aclk => s_axi_aclk,
      v1_reg(3 downto 0) => v1_reg(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_wr_logic is
  port (
    comp0 : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_9_out : out STD_LOGIC;
    \grxd.fg_rxd_wr_length_reg[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    rx_complete : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENA_I : out STD_LOGIC;
    rd_pntr_inv_pad : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gcc0.gc0.count_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grxd.fg_rxd_wr_length_reg[2]\ : out STD_LOGIC;
    \gpfs.prog_full_i_reg\ : out STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i_reg : out STD_LOGIC;
    ram_empty_i_reg_0 : out STD_LOGIC;
    ram_empty_i_reg_1 : out STD_LOGIC;
    ram_empty_i_reg_2 : out STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : out STD_LOGIC;
    \grxd.rx_len_wr_en_reg\ : out STD_LOGIC;
    \greg.gpcry_sym.diff_pntr_pad_reg[8]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \greg.gpcry_sym.diff_pntr_pad_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg_3 : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    axi_str_rxd_tlast : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gc0.count_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_rd_rlen_reg : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_wr_logic;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_wr_logic is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \c0/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gcc0.gc0.count_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_3_out : STD_LOGIC;
  signal wpntr_n_37 : STD_LOGIC;
  signal wpntr_n_38 : STD_LOGIC;
  signal wpntr_n_40 : STD_LOGIC;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \gcc0.gc0.count_reg[0]\(0) <= \^gcc0.gc0.count_reg[0]\(0);
\gwss.gpf.wrpf\: entity work.brd_axi_fifo_mm_s_0_1_wr_pf_ss
     port map (
      Q(7 downto 0) => \^q\(7 downto 0),
      S(0) => wpntr_n_40,
      SR(0) => SR(0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gc0.count_d1_reg[7]\(3 downto 0) => \gc0.count_d1_reg[7]\(3 downto 0),
      \gpfs.prog_full_i_reg_0\ => \gpfs.prog_full_i_reg\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      p_3_out => p_3_out,
      p_9_out => p_9_out,
      s_axi_aclk => s_axi_aclk
    );
\gwss.wsts\: entity work.brd_axi_fifo_mm_s_0_1_wr_status_flags_ss
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_dly_D => ENB_dly_D,
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      comp0 => comp0,
      \gcc0.gc0.count_d1_reg[8]\ => wpntr_n_37,
      \gcc0.gc0.count_reg[0]\(0) => \^gcc0.gc0.count_reg[0]\(0),
      \gcc0.gc0.count_reg[8]\ => wpntr_n_38,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg_0\,
      \grxd.fg_rxd_wr_length_reg[22]\(0) => \grxd.fg_rxd_wr_length_reg[22]\(0),
      \grxd.fg_rxd_wr_length_reg[2]\ => \grxd.fg_rxd_wr_length_reg[2]\,
      \grxd.rx_len_wr_en_reg\ => \grxd.rx_len_wr_en_reg\,
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => \out\,
      p_3_out => p_3_out,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg,
      rd_pntr_inv_pad(0) => rd_pntr_inv_pad(0),
      rx_complete => rx_complete,
      rx_len_wr_en => rx_len_wr_en,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]\,
      sig_rd_rlen_reg => sig_rd_rlen_reg,
      v1_reg(3 downto 0) => \c0/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0)
    );
wpntr: entity work.brd_axi_fifo_mm_s_0_1_wr_bin_cntr
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      E(0) => \^gcc0.gc0.count_reg[0]\(0),
      Q(7 downto 0) => \^q\(7 downto 0),
      S(3 downto 0) => S(3 downto 0),
      SR(0) => SR(0),
      \gc0.count_d1_reg[8]\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gc0.count_reg[7]\(7 downto 0) => \gc0.count_reg[7]\(7 downto 0),
      \gdiff.gcry_1_sym.diff_pntr_pad_reg[9]\(0) => wpntr_n_40,
      \greg.gpcry_sym.diff_pntr_pad_reg[8]\(3 downto 0) => \greg.gpcry_sym.diff_pntr_pad_reg[8]\(3 downto 0),
      \greg.gpcry_sym.diff_pntr_pad_reg[9]\(0) => \greg.gpcry_sym.diff_pntr_pad_reg[9]\(0),
      ram_empty_i_reg => ram_empty_i_reg,
      ram_empty_i_reg_0 => ram_empty_i_reg_0,
      ram_empty_i_reg_1 => ram_empty_i_reg_1,
      ram_empty_i_reg_2 => ram_empty_i_reg_2,
      ram_empty_i_reg_3 => ram_empty_i_reg_3,
      ram_full_i_reg => wpntr_n_37,
      ram_full_i_reg_0 => wpntr_n_38,
      s_axi_aclk => s_axi_aclk,
      v1_reg(3 downto 0) => v1_reg(3 downto 0),
      v1_reg_0(3 downto 0) => \c0/v1_reg\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_axi_lite_ipif is
  port (
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\ : out STD_LOGIC;
    sig_Bus2IP_CS : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 22 downto 0 );
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    \sig_register_array[0]1_out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_register_array_reg[0][5]\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]\ : out STD_LOGIC;
    \sig_register_array_reg[0][8]\ : out STD_LOGIC;
    \sig_register_array_reg[0][12]\ : out STD_LOGIC;
    \sig_register_array_reg[0][11]\ : out STD_LOGIC;
    \sig_register_array_reg[0][8]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_register_array_reg[1][0]\ : out STD_LOGIC;
    \sig_register_array_reg[1][0]_0\ : out STD_LOGIC;
    IP2Bus_RdAck_reg : out STD_LOGIC;
    IP2Bus_WrAck_reg : out STD_LOGIC;
    \sig_register_array_reg[0][7]\ : out STD_LOGIC;
    \sig_register_array_reg[1][0]_1\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \sig_ip2bus_data_reg[21]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[0]\ : out STD_LOGIC;
    sig_rx_channel_reset_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_str_rst_reg : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    cs_ce_clr : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    IP2Bus_RdAck_reg_0 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    IP2Bus_WrAck_reg_0 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \goreg_dm.dout_i_reg[5]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \goreg_dm.dout_i_reg[4]\ : in STD_LOGIC;
    \goreg_dm.dout_i_reg[6]\ : in STD_LOGIC;
    \goreg_dm.dout_i_reg[9]\ : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    \goreg_dm.dout_i_reg[22]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_reg[8]\ : in STD_LOGIC;
    \sig_register_array_reg[1][0]_2\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \goreg_dm.dout_i_reg[7]\ : in STD_LOGIC;
    s_axi_wdata_6_sp_1 : in STD_LOGIC;
    s2mm_prmry_reset_out_n : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_wdata_3_sp_1 : in STD_LOGIC;
    IPIC_STATE : in STD_LOGIC;
    IPIC_STATE_reg : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[1]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \sig_register_array_reg[0][12]_0\ : in STD_LOGIC;
    \sig_register_array_reg[0][11]_0\ : in STD_LOGIC;
    \sig_register_array_reg[0][8]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][7]_0\ : in STD_LOGIC;
    \sig_register_array_reg[0][5]_0\ : in STD_LOGIC;
    \sig_register_array_reg[0][2]_0\ : in STD_LOGIC;
    sig_rx_channel_reset_reg_1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_ip2bus_data_reg[0]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end brd_axi_fifo_mm_s_0_1_axi_lite_ipif;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_axi_lite_ipif is
  signal s_axi_wdata_3_sn_1 : STD_LOGIC;
  signal s_axi_wdata_6_sn_1 : STD_LOGIC;
begin
  s_axi_wdata_3_sn_1 <= s_axi_wdata_3_sp_1;
  s_axi_wdata_6_sn_1 <= s_axi_wdata_6_sp_1;
I_SLAVE_ATTACHMENT: entity work.brd_axi_fifo_mm_s_0_1_slave_attachment
     port map (
      D(22 downto 0) => D(22 downto 0),
      E(0) => E(0),
      IP2Bus_RdAck_reg => IP2Bus_RdAck_reg,
      IP2Bus_RdAck_reg_0 => IP2Bus_RdAck_reg_0,
      IP2Bus_WrAck_reg => IP2Bus_WrAck_reg,
      IP2Bus_WrAck_reg_0 => IP2Bus_WrAck_reg_0,
      IPIC_STATE => IPIC_STATE,
      IPIC_STATE_reg => sig_Bus2IP_CS,
      IPIC_STATE_reg_0 => IPIC_STATE_reg,
      Q(9 downto 0) => Q(9 downto 0),
      SR(0) => SR(0),
      SS(0) => SS(0),
      \count_reg[0]\ => \count_reg[0]\,
      \count_reg[1]\ => \count_reg[1]\,
      \count_reg[8]\ => \count_reg[8]\,
      cs_ce_clr => cs_ce_clr,
      \goreg_dm.dout_i_reg[22]\(5 downto 0) => \goreg_dm.dout_i_reg[22]\(5 downto 0),
      \goreg_dm.dout_i_reg[4]\ => \goreg_dm.dout_i_reg[4]\,
      \goreg_dm.dout_i_reg[5]\ => \goreg_dm.dout_i_reg[5]\,
      \goreg_dm.dout_i_reg[6]\ => \goreg_dm.dout_i_reg[6]\,
      \goreg_dm.dout_i_reg[7]\ => \goreg_dm.dout_i_reg[7]\,
      \goreg_dm.dout_i_reg[9]\ => \goreg_dm.dout_i_reg[9]\,
      \out\ => \out\,
      s2mm_prmry_reset_out_n => s2mm_prmry_reset_out_n,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(12 downto 0) => s_axi_wdata(12 downto 0),
      s_axi_wdata_3_sp_1 => s_axi_wdata_3_sn_1,
      s_axi_wdata_6_sp_1 => s_axi_wdata_6_sn_1,
      s_axi_wvalid => s_axi_wvalid,
      \sig_ip2bus_data_reg[0]\ => \sig_ip2bus_data_reg[0]\,
      \sig_ip2bus_data_reg[0]_0\(31 downto 0) => \sig_ip2bus_data_reg[0]_0\(31 downto 0),
      \sig_ip2bus_data_reg[21]\ => \sig_ip2bus_data_reg[21]\,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]\,
      \sig_register_array[0]1_out\(0) => \sig_register_array[0]1_out\(0),
      \sig_register_array_reg[0][11]\ => \sig_register_array_reg[0][11]\,
      \sig_register_array_reg[0][11]_0\ => \sig_register_array_reg[0][11]_0\,
      \sig_register_array_reg[0][12]\ => \sig_register_array_reg[0][12]\,
      \sig_register_array_reg[0][12]_0\ => \sig_register_array_reg[0][12]_0\,
      \sig_register_array_reg[0][2]\ => \sig_register_array_reg[0][2]\,
      \sig_register_array_reg[0][2]_0\ => \sig_register_array_reg[0][2]_0\,
      \sig_register_array_reg[0][5]\ => \sig_register_array_reg[0][5]\,
      \sig_register_array_reg[0][5]_0\ => \sig_register_array_reg[0][5]_0\,
      \sig_register_array_reg[0][7]\ => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      \sig_register_array_reg[0][7]_0\ => \sig_register_array_reg[0][7]\,
      \sig_register_array_reg[0][7]_1\ => \sig_register_array_reg[0][7]_0\,
      \sig_register_array_reg[0][8]\ => \sig_register_array_reg[0][8]\,
      \sig_register_array_reg[0][8]_0\ => \sig_register_array_reg[0][8]_0\,
      \sig_register_array_reg[0][8]_1\ => \sig_register_array_reg[0][8]_1\,
      \sig_register_array_reg[1][0]\ => \sig_register_array_reg[1][0]\,
      \sig_register_array_reg[1][0]_0\ => \sig_register_array_reg[1][0]_0\,
      \sig_register_array_reg[1][0]_1\(12 downto 0) => \sig_register_array_reg[1][0]_1\(12 downto 0),
      \sig_register_array_reg[1][0]_2\(12 downto 0) => \sig_register_array_reg[1][0]_2\(12 downto 0),
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0,
      sig_rx_channel_reset_reg_1 => sig_rx_channel_reset_reg_1,
      sig_str_rst_reg => Bus_RNW_reg,
      sig_str_rst_reg_0 => sig_str_rst_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_blk_mem_gen_top is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end brd_axi_fifo_mm_s_0_1_blk_mem_gen_top;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_blk_mem_gen_top is
begin
\valid.cstr\: entity work.brd_axi_fifo_mm_s_0_1_blk_mem_gen_generic_cstr
     port map (
      D(31 downto 0) => D(31 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      \gc0.count_d1_reg[8]\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0),
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_fifo_generator_top__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[27]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    sig_rd_rlen : out STD_LOGIC;
    \sig_ip2bus_data_reg[29]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[28]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[9]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rx_complete : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    \count_reg[5]\ : in STD_LOGIC;
    \count_reg[8]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    fg_rxd_wr_length : in STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_fifo_generator_top__parameterized0\ : entity is "fifo_generator_top";
end \brd_axi_fifo_mm_s_0_1_fifo_generator_top__parameterized0\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_fifo_generator_top__parameterized0\ is
begin
\grf.rf\: entity work.\brd_axi_fifo_mm_s_0_1_fifo_generator_ramfifo__parameterized0\
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      D(1 downto 0) => D(1 downto 0),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      Q(4 downto 0) => Q(4 downto 0),
      SR(0) => SS(0),
      \count_reg[5]\ => \count_reg[5]\,
      \count_reg[8]\ => \count_reg[8]\,
      fg_rxd_wr_length(21 downto 0) => fg_rxd_wr_length(21 downto 0),
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => \out\,
      rx_complete => rx_complete,
      rx_len_wr_en => rx_len_wr_en,
      s2mm_prmry_reset_out_n => s2mm_prmry_reset_out_n,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[27]\ => \sig_ip2bus_data_reg[27]\,
      \sig_ip2bus_data_reg[28]\ => \sig_ip2bus_data_reg[28]\,
      \sig_ip2bus_data_reg[29]\ => \sig_ip2bus_data_reg[29]\,
      \sig_ip2bus_data_reg[9]\(16 downto 0) => \sig_ip2bus_data_reg[9]\(16 downto 0),
      sig_rd_rlen => sig_rd_rlen,
      sig_rd_rlen_reg => sig_rd_rlen_reg,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_blk_mem_gen_v8_4_1_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end brd_axi_fifo_mm_s_0_1_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.brd_axi_fifo_mm_s_0_1_blk_mem_gen_top
     port map (
      D(31 downto 0) => D(31 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      \gc0.count_d1_reg[8]\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0),
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2_synth__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[27]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    sig_rd_rlen : out STD_LOGIC;
    \sig_ip2bus_data_reg[29]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[28]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[9]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rx_complete : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    \count_reg[5]\ : in STD_LOGIC;
    \count_reg[8]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    fg_rxd_wr_length : in STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2_synth__parameterized0\ : entity is "fifo_generator_v13_2_2_synth";
end \brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2_synth__parameterized0\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2_synth__parameterized0\ is
begin
\gconvfifo.rf\: entity work.\brd_axi_fifo_mm_s_0_1_fifo_generator_top__parameterized0\
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      D(1 downto 0) => D(1 downto 0),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      Q(4 downto 0) => Q(4 downto 0),
      SS(0) => SR(0),
      \count_reg[5]\ => \count_reg[5]\,
      \count_reg[8]\ => \count_reg[8]\,
      fg_rxd_wr_length(21 downto 0) => fg_rxd_wr_length(21 downto 0),
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => \out\,
      rx_complete => rx_complete,
      rx_len_wr_en => rx_len_wr_en,
      s2mm_prmry_reset_out_n => s2mm_prmry_reset_out_n,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[27]\ => \sig_ip2bus_data_reg[27]\,
      \sig_ip2bus_data_reg[28]\ => \sig_ip2bus_data_reg[28]\,
      \sig_ip2bus_data_reg[29]\ => \sig_ip2bus_data_reg[29]\,
      \sig_ip2bus_data_reg[9]\(16 downto 0) => \sig_ip2bus_data_reg[9]\(16 downto 0),
      sig_rd_rlen => sig_rd_rlen,
      sig_rd_rlen_reg => sig_rd_rlen_reg,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_blk_mem_gen_v8_4_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end brd_axi_fifo_mm_s_0_1_blk_mem_gen_v8_4_1;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_blk_mem_gen_v8_4_1 is
begin
inst_blk_mem_gen: entity work.brd_axi_fifo_mm_s_0_1_blk_mem_gen_v8_4_1_synth
     port map (
      D(31 downto 0) => D(31 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      \gc0.count_d1_reg[8]\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0),
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[27]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    sig_rd_rlen : out STD_LOGIC;
    \sig_ip2bus_data_reg[29]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[28]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[9]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rx_complete : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    \count_reg[5]\ : in STD_LOGIC;
    \count_reg[8]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    fg_rxd_wr_length : in STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2__parameterized0\ : entity is "fifo_generator_v13_2_2";
end \brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2__parameterized0\;

architecture STRUCTURE of \brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2__parameterized0\ is
begin
inst_fifo_gen: entity work.\brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2_synth__parameterized0\
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      D(1 downto 0) => D(1 downto 0),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      Q(4 downto 0) => Q(4 downto 0),
      SR(0) => SS(0),
      \count_reg[5]\ => \count_reg[5]\,
      \count_reg[8]\ => \count_reg[8]\,
      fg_rxd_wr_length(21 downto 0) => fg_rxd_wr_length(21 downto 0),
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => \out\,
      rx_complete => rx_complete,
      rx_len_wr_en => rx_len_wr_en,
      s2mm_prmry_reset_out_n => s2mm_prmry_reset_out_n,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[27]\ => \sig_ip2bus_data_reg[27]\,
      \sig_ip2bus_data_reg[28]\ => \sig_ip2bus_data_reg[28]\,
      \sig_ip2bus_data_reg[29]\ => \sig_ip2bus_data_reg[29]\,
      \sig_ip2bus_data_reg[9]\(16 downto 0) => \sig_ip2bus_data_reg[9]\(16 downto 0),
      sig_rd_rlen => sig_rd_rlen,
      sig_rd_rlen_reg => sig_rd_rlen_reg,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_sync_fifo_fg is
  port (
    \out\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[27]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    sig_rd_rlen : out STD_LOGIC;
    \sig_ip2bus_data_reg[29]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[28]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[9]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rx_complete : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    \count_reg[5]\ : in STD_LOGIC;
    \count_reg[8]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    fg_rxd_wr_length : in STD_LOGIC_VECTOR ( 21 downto 0 )
  );
end brd_axi_fifo_mm_s_0_1_sync_fifo_fg;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_sync_fifo_fg is
begin
\legacy_fifo_instance.FAMILY_SUPPORTED.I_SYNC_FIFO_BRAM\: entity work.\brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2__parameterized0\
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      D(1 downto 0) => D(1 downto 0),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      Q(4 downto 0) => Q(4 downto 0),
      SS(0) => SR(0),
      \count_reg[5]\ => \count_reg[5]\,
      \count_reg[8]\ => \count_reg[8]\,
      fg_rxd_wr_length(21 downto 0) => fg_rxd_wr_length(21 downto 0),
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => \out\,
      rx_complete => rx_complete,
      rx_len_wr_en => rx_len_wr_en,
      s2mm_prmry_reset_out_n => s2mm_prmry_reset_out_n,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[27]\ => \sig_ip2bus_data_reg[27]\,
      \sig_ip2bus_data_reg[28]\ => \sig_ip2bus_data_reg[28]\,
      \sig_ip2bus_data_reg[29]\ => \sig_ip2bus_data_reg[29]\,
      \sig_ip2bus_data_reg[9]\(16 downto 0) => \sig_ip2bus_data_reg[9]\(16 downto 0),
      sig_rd_rlen => sig_rd_rlen,
      sig_rd_rlen_reg => sig_rd_rlen_reg,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_memory is
  port (
    ENB_dly_D : out STD_LOGIC;
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end brd_axi_fifo_mm_s_0_1_memory;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_memory is
  signal doutb : STD_LOGIC_VECTOR ( 40 downto 9 );
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.brd_axi_fifo_mm_s_0_1_blk_mem_gen_v8_4_1
     port map (
      D(31 downto 0) => doutb(40 downto 9),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      \gc0.count_d1_reg[8]\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0),
      s_axi_aclk => s_axi_aclk
    );
\goreg_bm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(10),
      Q => s_axi4_rdata(1),
      R => '0'
    );
\goreg_bm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(11),
      Q => s_axi4_rdata(2),
      R => '0'
    );
\goreg_bm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(12),
      Q => s_axi4_rdata(3),
      R => '0'
    );
\goreg_bm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(13),
      Q => s_axi4_rdata(4),
      R => '0'
    );
\goreg_bm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(14),
      Q => s_axi4_rdata(5),
      R => '0'
    );
\goreg_bm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(15),
      Q => s_axi4_rdata(6),
      R => '0'
    );
\goreg_bm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(16),
      Q => s_axi4_rdata(7),
      R => '0'
    );
\goreg_bm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(17),
      Q => s_axi4_rdata(8),
      R => '0'
    );
\goreg_bm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(18),
      Q => s_axi4_rdata(9),
      R => '0'
    );
\goreg_bm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(19),
      Q => s_axi4_rdata(10),
      R => '0'
    );
\goreg_bm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(20),
      Q => s_axi4_rdata(11),
      R => '0'
    );
\goreg_bm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(21),
      Q => s_axi4_rdata(12),
      R => '0'
    );
\goreg_bm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(22),
      Q => s_axi4_rdata(13),
      R => '0'
    );
\goreg_bm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(23),
      Q => s_axi4_rdata(14),
      R => '0'
    );
\goreg_bm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(24),
      Q => s_axi4_rdata(15),
      R => '0'
    );
\goreg_bm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(25),
      Q => s_axi4_rdata(16),
      R => '0'
    );
\goreg_bm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(26),
      Q => s_axi4_rdata(17),
      R => '0'
    );
\goreg_bm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(27),
      Q => s_axi4_rdata(18),
      R => '0'
    );
\goreg_bm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(28),
      Q => s_axi4_rdata(19),
      R => '0'
    );
\goreg_bm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(29),
      Q => s_axi4_rdata(20),
      R => '0'
    );
\goreg_bm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(30),
      Q => s_axi4_rdata(21),
      R => '0'
    );
\goreg_bm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(31),
      Q => s_axi4_rdata(22),
      R => '0'
    );
\goreg_bm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(32),
      Q => s_axi4_rdata(23),
      R => '0'
    );
\goreg_bm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(33),
      Q => s_axi4_rdata(24),
      R => '0'
    );
\goreg_bm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(34),
      Q => s_axi4_rdata(25),
      R => '0'
    );
\goreg_bm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(35),
      Q => s_axi4_rdata(26),
      R => '0'
    );
\goreg_bm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(36),
      Q => s_axi4_rdata(27),
      R => '0'
    );
\goreg_bm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(37),
      Q => s_axi4_rdata(28),
      R => '0'
    );
\goreg_bm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(38),
      Q => s_axi4_rdata(29),
      R => '0'
    );
\goreg_bm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(39),
      Q => s_axi4_rdata(30),
      R => '0'
    );
\goreg_bm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(40),
      Q => s_axi4_rdata(31),
      R => '0'
    );
\goreg_bm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => doutb(9),
      Q => s_axi4_rdata(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_fifo_generator_ramfifo is
  port (
    p_9_out : out STD_LOGIC;
    p_10_out : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[13]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \sig_ip2bus_data_reg[25]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[22]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[20]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[19]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[12]\ : out STD_LOGIC;
    rx_complete : out STD_LOGIC;
    \sig_ip2bus_data_reg[24]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grxd.fg_rxd_wr_length_reg[2]\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]\ : out STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : out STD_LOGIC;
    \grxd.rx_len_wr_en_reg\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    \gaxi_full_sm.r_valid_r1_reg\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \out\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    sync_areset_n : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_fifo_generator_ramfifo;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_fifo_generator_ramfifo is
  signal dout_i : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_42\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_44\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_45\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_46\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_47\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_48\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_49\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_50\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_51\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_12\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_19\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_34\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_35\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_36\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_37\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_40\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_41\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_42\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_43\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_44\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_45\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_46\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_47\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_48\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_49\ : STD_LOGIC;
  signal \grss.gpe.rdpe/rd_pntr_inv_pad\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \grss.rsts/c2/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gwss.wsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gwss.wsts/comp0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_19_out : STD_LOGIC;
  signal \^p_9_out\ : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_4 : STD_LOGIC;
  signal rstblk_n_5 : STD_LOGIC;
  signal rstblk_n_6 : STD_LOGIC;
  signal \^rx_complete\ : STD_LOGIC;
  signal sckt_wr_rst_cc : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  p_9_out <= \^p_9_out\;
  rx_complete <= \^rx_complete\;
\gntv_or_sync_fifo.gl0.rd\: entity work.brd_axi_fifo_mm_s_0_1_rd_logic
     port map (
      D(6 downto 0) => D(6 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => p_0_out(8 downto 0),
      E(0) => p_19_out,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\,
      Q(8 downto 0) => p_12_out(8 downto 0),
      S(3) => \gntv_or_sync_fifo.gl0.wr_n_44\,
      S(2) => \gntv_or_sync_fifo.gl0.wr_n_45\,
      S(1) => \gntv_or_sync_fifo.gl0.wr_n_46\,
      S(0) => \gntv_or_sync_fifo.gl0.wr_n_47\,
      SR(0) => rstblk_n_4,
      \gaxi_full_sm.r_valid_r1_reg\ => \gaxi_full_sm.r_valid_r1_reg\,
      \gc0.count_d1_reg[7]\(7 downto 0) => rd_pntr_plus1(7 downto 0),
      \gc0.count_d1_reg[8]\ => \gntv_or_sync_fifo.gl0.rd_n_0\,
      \gcc0.gc0.count_d1_reg[0]\ => \gntv_or_sync_fifo.gl0.wr_n_34\,
      \gcc0.gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.wr_n_35\,
      \gcc0.gc0.count_d1_reg[4]\ => \gntv_or_sync_fifo.gl0.wr_n_36\,
      \gcc0.gc0.count_d1_reg[6]\ => \gntv_or_sync_fifo.gl0.wr_n_37\,
      \gcc0.gc0.count_d1_reg[7]\(3) => \gntv_or_sync_fifo.gl0.wr_n_40\,
      \gcc0.gc0.count_d1_reg[7]\(2) => \gntv_or_sync_fifo.gl0.wr_n_41\,
      \gcc0.gc0.count_d1_reg[7]\(1) => \gntv_or_sync_fifo.gl0.wr_n_42\,
      \gcc0.gc0.count_d1_reg[7]\(0) => \gntv_or_sync_fifo.gl0.wr_n_43\,
      \gcc0.gc0.count_d1_reg[8]\ => \gntv_or_sync_fifo.gl0.wr_n_49\,
      \gcc0.gc0.count_d1_reg[8]_0\(0) => \gntv_or_sync_fifo.gl0.wr_n_48\,
      \gcc0.gc0.count_reg[7]\(7 downto 0) => p_13_out(7 downto 0),
      \gdiff.gcry_1_sym.diff_pntr_pad_reg[4]\(3) => \gntv_or_sync_fifo.gl0.rd_n_48\,
      \gdiff.gcry_1_sym.diff_pntr_pad_reg[4]\(2) => \gntv_or_sync_fifo.gl0.rd_n_49\,
      \gdiff.gcry_1_sym.diff_pntr_pad_reg[4]\(1) => \gntv_or_sync_fifo.gl0.rd_n_50\,
      \gdiff.gcry_1_sym.diff_pntr_pad_reg[4]\(0) => \gntv_or_sync_fifo.gl0.rd_n_51\,
      \gdiff.gcry_1_sym.diff_pntr_pad_reg[6]\ => \gntv_or_sync_fifo.gl0.wr_n_19\,
      \gdiff.gcry_1_sym.diff_pntr_pad_reg[8]\(3) => \gntv_or_sync_fifo.gl0.rd_n_44\,
      \gdiff.gcry_1_sym.diff_pntr_pad_reg[8]\(2) => \gntv_or_sync_fifo.gl0.rd_n_45\,
      \gdiff.gcry_1_sym.diff_pntr_pad_reg[8]\(1) => \gntv_or_sync_fifo.gl0.rd_n_46\,
      \gdiff.gcry_1_sym.diff_pntr_pad_reg[8]\(0) => \gntv_or_sync_fifo.gl0.rd_n_47\,
      \goreg_bm.dout_i_reg[40]\(0) => dout_i,
      \goreg_dm.dout_i_reg[18]\(10 downto 0) => Q(10 downto 0),
      \gpfs.prog_full_i_reg\ => \gntv_or_sync_fifo.gl0.rd_n_42\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => rst_full_gen_i,
      \grxd.rx_partial_pkt_reg\ => \gntv_or_sync_fifo.gl0.wr_n_12\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\(1 downto 0) => sckt_wr_rst_cc(1 downto 0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]_0\ => rstblk_n_5,
      \out\ => \out\,
      p_10_out => p_10_out,
      p_9_out => \^p_9_out\,
      rd_pntr_inv_pad(0) => \grss.gpe.rdpe/rd_pntr_inv_pad\(0),
      rx_complete => \^rx_complete\,
      s_axi4_rready => s_axi4_rready,
      s_axi_aclk => s_axi_aclk,
      \sig_ip2bus_data_reg[12]\ => \sig_ip2bus_data_reg[12]\,
      \sig_ip2bus_data_reg[13]\(9 downto 0) => \sig_ip2bus_data_reg[13]\(9 downto 0),
      \sig_ip2bus_data_reg[19]\ => \sig_ip2bus_data_reg[19]\,
      \sig_ip2bus_data_reg[20]\ => \sig_ip2bus_data_reg[20]\,
      \sig_ip2bus_data_reg[22]\ => \sig_ip2bus_data_reg[22]\,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[24]\ => \sig_ip2bus_data_reg[24]\,
      \sig_ip2bus_data_reg[25]\ => \sig_ip2bus_data_reg[25]\,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]\,
      \sig_register_array_reg[0][2]\ => \sig_register_array_reg[0][2]\,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0,
      v1_reg(3 downto 0) => \gwss.wsts/c1/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \grss.rsts/c2/v1_reg\(3 downto 0)
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.brd_axi_fifo_mm_s_0_1_wr_logic
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => p_12_out(8 downto 0),
      E(0) => E(0),
      ENA_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENB_dly_D => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      Q(7 downto 0) => p_13_out(7 downto 0),
      S(3) => \gntv_or_sync_fifo.gl0.wr_n_44\,
      S(2) => \gntv_or_sync_fifo.gl0.wr_n_45\,
      S(1) => \gntv_or_sync_fifo.gl0.wr_n_46\,
      S(0) => \gntv_or_sync_fifo.gl0.wr_n_47\,
      SR(0) => rstblk_n_4,
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      comp0 => \gwss.wsts/comp0\,
      \gc0.count_d1_reg[3]\(3) => \gntv_or_sync_fifo.gl0.rd_n_48\,
      \gc0.count_d1_reg[3]\(2) => \gntv_or_sync_fifo.gl0.rd_n_49\,
      \gc0.count_d1_reg[3]\(1) => \gntv_or_sync_fifo.gl0.rd_n_50\,
      \gc0.count_d1_reg[3]\(0) => \gntv_or_sync_fifo.gl0.rd_n_51\,
      \gc0.count_d1_reg[7]\(3) => \gntv_or_sync_fifo.gl0.rd_n_44\,
      \gc0.count_d1_reg[7]\(2) => \gntv_or_sync_fifo.gl0.rd_n_45\,
      \gc0.count_d1_reg[7]\(1) => \gntv_or_sync_fifo.gl0.rd_n_46\,
      \gc0.count_d1_reg[7]\(0) => \gntv_or_sync_fifo.gl0.rd_n_47\,
      \gc0.count_d1_reg[8]\(8 downto 0) => p_0_out(8 downto 0),
      \gc0.count_reg[7]\(7 downto 0) => rd_pntr_plus1(7 downto 0),
      \gcc0.gc0.count_reg[0]\(0) => p_19_out,
      \gpfs.prog_full_i_reg\ => \gntv_or_sync_fifo.gl0.wr_n_19\,
      \greg.gpcry_sym.diff_pntr_pad_reg[8]\(3) => \gntv_or_sync_fifo.gl0.wr_n_40\,
      \greg.gpcry_sym.diff_pntr_pad_reg[8]\(2) => \gntv_or_sync_fifo.gl0.wr_n_41\,
      \greg.gpcry_sym.diff_pntr_pad_reg[8]\(1) => \gntv_or_sync_fifo.gl0.wr_n_42\,
      \greg.gpcry_sym.diff_pntr_pad_reg[8]\(0) => \gntv_or_sync_fifo.gl0.wr_n_43\,
      \greg.gpcry_sym.diff_pntr_pad_reg[9]\(0) => \gntv_or_sync_fifo.gl0.wr_n_48\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \gntv_or_sync_fifo.gl0.rd_n_42\,
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rstblk_n_6,
      \grxd.fg_rxd_wr_length_reg[22]\(0) => SR(0),
      \grxd.fg_rxd_wr_length_reg[2]\ => \grxd.fg_rxd_wr_length_reg[2]\,
      \grxd.rx_len_wr_en_reg\ => \grxd.rx_len_wr_en_reg\,
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => p_0_in,
      p_9_out => \^p_9_out\,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_0\,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.wr_n_34\,
      ram_empty_i_reg_0 => \gntv_or_sync_fifo.gl0.wr_n_35\,
      ram_empty_i_reg_1 => \gntv_or_sync_fifo.gl0.wr_n_36\,
      ram_empty_i_reg_2 => \gntv_or_sync_fifo.gl0.wr_n_37\,
      ram_empty_i_reg_3 => \gntv_or_sync_fifo.gl0.wr_n_49\,
      rd_pntr_inv_pad(0) => \grss.gpe.rdpe/rd_pntr_inv_pad\(0),
      rx_complete => \^rx_complete\,
      rx_len_wr_en => rx_len_wr_en,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[26]\ => \gntv_or_sync_fifo.gl0.wr_n_12\,
      sig_rd_rlen_reg => sig_rd_rlen_reg,
      v1_reg(3 downto 0) => \grss.rsts/c2/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \gwss.wsts/c1/v1_reg\(3 downto 0)
    );
\gntv_or_sync_fifo.mem\: entity work.brd_axi_fifo_mm_s_0_1_memory
     port map (
      E(0) => dout_i,
      ENA_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      \gc0.count_d1_reg[8]\(8 downto 0) => p_0_out(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => p_12_out(8 downto 0),
      ram_full_fb_i_reg(0) => p_19_out,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi_aclk => s_axi_aclk
    );
rstblk: entity work.brd_axi_fifo_mm_s_0_1_reset_blk_ramfifo
     port map (
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      Q(1 downto 0) => sckt_wr_rst_cc(1 downto 0),
      SR(0) => rstblk_n_4,
      comp0 => \gwss.wsts/comp0\,
      \out\ => rst_full_gen_i,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_0\,
      ram_empty_i_reg => rstblk_n_5,
      ram_full_fb_i_reg => p_0_in,
      ram_full_i_reg => rstblk_n_6,
      s_axi_aclk => s_axi_aclk,
      sync_areset_n => sync_areset_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_fifo_generator_top is
  port (
    p_9_out : out STD_LOGIC;
    p_10_out : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[13]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \sig_ip2bus_data_reg[25]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[22]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[20]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[19]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[12]\ : out STD_LOGIC;
    rx_complete : out STD_LOGIC;
    \sig_ip2bus_data_reg[24]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grxd.fg_rxd_wr_length_reg[2]\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]\ : out STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : out STD_LOGIC;
    \grxd.rx_len_wr_en_reg\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    \gaxi_full_sm.r_valid_r1_reg\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \out\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    sync_areset_n : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_fifo_generator_top;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_fifo_generator_top is
begin
\grf.rf\: entity work.brd_axi_fifo_mm_s_0_1_fifo_generator_ramfifo
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      D(6 downto 0) => D(6 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\,
      Q(10 downto 0) => Q(10 downto 0),
      SR(0) => SR(0),
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      \gaxi_full_sm.r_valid_r1_reg\ => \gaxi_full_sm.r_valid_r1_reg\,
      \grxd.fg_rxd_wr_length_reg[2]\ => \grxd.fg_rxd_wr_length_reg[2]\,
      \grxd.rx_len_wr_en_reg\ => \grxd.rx_len_wr_en_reg\,
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => \out\,
      p_10_out => p_10_out,
      p_9_out => p_9_out,
      rx_complete => rx_complete,
      rx_len_wr_en => rx_len_wr_en,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi4_rready => s_axi4_rready,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[12]\ => \sig_ip2bus_data_reg[12]\,
      \sig_ip2bus_data_reg[13]\(9 downto 0) => \sig_ip2bus_data_reg[13]\(9 downto 0),
      \sig_ip2bus_data_reg[19]\ => \sig_ip2bus_data_reg[19]\,
      \sig_ip2bus_data_reg[20]\ => \sig_ip2bus_data_reg[20]\,
      \sig_ip2bus_data_reg[22]\ => \sig_ip2bus_data_reg[22]\,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[24]\ => \sig_ip2bus_data_reg[24]\,
      \sig_ip2bus_data_reg[25]\ => \sig_ip2bus_data_reg[25]\,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]\,
      sig_rd_rlen_reg => sig_rd_rlen_reg,
      \sig_register_array_reg[0][2]\ => \sig_register_array_reg[0][2]\,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0,
      sync_areset_n => sync_areset_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2_synth is
  port (
    p_9_out : out STD_LOGIC;
    p_10_out : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[13]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \sig_ip2bus_data_reg[25]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[22]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[20]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[19]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[12]\ : out STD_LOGIC;
    rx_complete : out STD_LOGIC;
    \sig_ip2bus_data_reg[24]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grxd.fg_rxd_wr_length_reg[2]\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]\ : out STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : out STD_LOGIC;
    \grxd.rx_len_wr_en_reg\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    \gaxi_full_sm.r_valid_r1_reg\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \out\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    sync_areset_n : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2_synth;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2_synth is
begin
\gaxis_fifo.gaxisf.axisf\: entity work.brd_axi_fifo_mm_s_0_1_fifo_generator_top
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      D(6 downto 0) => D(6 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\,
      Q(10 downto 0) => Q(10 downto 0),
      SR(0) => SR(0),
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      \gaxi_full_sm.r_valid_r1_reg\ => \gaxi_full_sm.r_valid_r1_reg\,
      \grxd.fg_rxd_wr_length_reg[2]\ => \grxd.fg_rxd_wr_length_reg[2]\,
      \grxd.rx_len_wr_en_reg\ => \grxd.rx_len_wr_en_reg\,
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => \out\,
      p_10_out => p_10_out,
      p_9_out => p_9_out,
      rx_complete => rx_complete,
      rx_len_wr_en => rx_len_wr_en,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi4_rready => s_axi4_rready,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[12]\ => \sig_ip2bus_data_reg[12]\,
      \sig_ip2bus_data_reg[13]\(9 downto 0) => \sig_ip2bus_data_reg[13]\(9 downto 0),
      \sig_ip2bus_data_reg[19]\ => \sig_ip2bus_data_reg[19]\,
      \sig_ip2bus_data_reg[20]\ => \sig_ip2bus_data_reg[20]\,
      \sig_ip2bus_data_reg[22]\ => \sig_ip2bus_data_reg[22]\,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[24]\ => \sig_ip2bus_data_reg[24]\,
      \sig_ip2bus_data_reg[25]\ => \sig_ip2bus_data_reg[25]\,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]\,
      sig_rd_rlen_reg => sig_rd_rlen_reg,
      \sig_register_array_reg[0][2]\ => \sig_register_array_reg[0][2]\,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0,
      sync_areset_n => sync_areset_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2 is
  port (
    p_9_out : out STD_LOGIC;
    p_10_out : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[13]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \sig_ip2bus_data_reg[25]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[22]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[20]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[19]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[12]\ : out STD_LOGIC;
    rx_complete : out STD_LOGIC;
    \sig_ip2bus_data_reg[24]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grxd.fg_rxd_wr_length_reg[2]\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]\ : out STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : out STD_LOGIC;
    \grxd.rx_len_wr_en_reg\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    \gaxi_full_sm.r_valid_r1_reg\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \out\ : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    sync_areset_n : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2 is
begin
inst_fifo_gen: entity work.brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2_synth
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      D(6 downto 0) => D(6 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\,
      Q(10 downto 0) => Q(10 downto 0),
      SR(0) => SR(0),
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      \gaxi_full_sm.r_valid_r1_reg\ => \gaxi_full_sm.r_valid_r1_reg\,
      \grxd.fg_rxd_wr_length_reg[2]\ => \grxd.fg_rxd_wr_length_reg[2]\,
      \grxd.rx_len_wr_en_reg\ => \grxd.rx_len_wr_en_reg\,
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => \out\,
      p_10_out => p_10_out,
      p_9_out => p_9_out,
      rx_complete => rx_complete,
      rx_len_wr_en => rx_len_wr_en,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi4_rready => s_axi4_rready,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[12]\ => \sig_ip2bus_data_reg[12]\,
      \sig_ip2bus_data_reg[13]\(9 downto 0) => \sig_ip2bus_data_reg[13]\(9 downto 0),
      \sig_ip2bus_data_reg[19]\ => \sig_ip2bus_data_reg[19]\,
      \sig_ip2bus_data_reg[20]\ => \sig_ip2bus_data_reg[20]\,
      \sig_ip2bus_data_reg[22]\ => \sig_ip2bus_data_reg[22]\,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[24]\ => \sig_ip2bus_data_reg[24]\,
      \sig_ip2bus_data_reg[25]\ => \sig_ip2bus_data_reg[25]\,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]\,
      sig_rd_rlen_reg => sig_rd_rlen_reg,
      \sig_register_array_reg[0][2]\ => \sig_register_array_reg[0][2]\,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0,
      sync_areset_n => sync_areset_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_axis_fg is
  port (
    p_9_out : out STD_LOGIC;
    p_10_out : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[13]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \sig_ip2bus_data_reg[25]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[22]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[20]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[19]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[12]\ : out STD_LOGIC;
    rx_complete : out STD_LOGIC;
    \sig_ip2bus_data_reg[24]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grxd.fg_rxd_wr_length_reg[2]\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]\ : out STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : out STD_LOGIC;
    \grxd.rx_len_wr_en_reg\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    \gaxi_full_sm.r_valid_r1_reg\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \out\ : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC;
    sig_rx_channel_reset_reg_1 : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_axis_fg;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_axis_fg is
  signal sync_areset_n : STD_LOGIC;
begin
COMP_FIFO: entity work.brd_axi_fifo_mm_s_0_1_fifo_generator_v13_2_2
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      D(6 downto 0) => D(6 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\,
      Q(10 downto 0) => Q(10 downto 0),
      SR(0) => SR(0),
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      \gaxi_full_sm.r_valid_r1_reg\ => \gaxi_full_sm.r_valid_r1_reg\,
      \grxd.fg_rxd_wr_length_reg[2]\ => \grxd.fg_rxd_wr_length_reg[2]\,
      \grxd.rx_len_wr_en_reg\ => \grxd.rx_len_wr_en_reg\,
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => \out\,
      p_10_out => p_10_out,
      p_9_out => p_9_out,
      rx_complete => rx_complete,
      rx_len_wr_en => rx_len_wr_en,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi4_rready => s_axi4_rready,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[12]\ => \sig_ip2bus_data_reg[12]\,
      \sig_ip2bus_data_reg[13]\(9 downto 0) => \sig_ip2bus_data_reg[13]\(9 downto 0),
      \sig_ip2bus_data_reg[19]\ => \sig_ip2bus_data_reg[19]\,
      \sig_ip2bus_data_reg[20]\ => \sig_ip2bus_data_reg[20]\,
      \sig_ip2bus_data_reg[22]\ => \sig_ip2bus_data_reg[22]\,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[24]\ => \sig_ip2bus_data_reg[24]\,
      \sig_ip2bus_data_reg[25]\ => \sig_ip2bus_data_reg[25]\,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]\,
      sig_rd_rlen_reg => sig_rd_rlen_reg,
      \sig_register_array_reg[0][2]\ => \sig_register_array_reg[0][2]\,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg_0,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_1,
      sync_areset_n => sync_areset_n
    );
sync_areset_n_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_rx_channel_reset_reg,
      Q => sync_areset_n,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_fifo is
  port (
    p_9_out : out STD_LOGIC;
    p_10_out : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[26]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[13]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \sig_ip2bus_data_reg[25]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[22]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[20]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[19]\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[12]\ : out STD_LOGIC;
    rx_complete : out STD_LOGIC;
    \sig_ip2bus_data_reg[24]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grxd.fg_rxd_wr_length_reg[2]\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]\ : out STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    \grxd.rx_partial_pkt_reg\ : out STD_LOGIC;
    \grxd.rx_len_wr_en_reg\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    sig_rx_channel_reset_reg : in STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    \gaxi_full_sm.r_valid_r1_reg\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Axi_Str_TxD_AReset : in STD_LOGIC;
    rx_len_wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \out\ : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC;
    \grxd.rx_partial_pkt_reg_0\ : in STD_LOGIC;
    sig_rd_rlen_reg : in STD_LOGIC;
    sig_rx_channel_reset_reg_1 : in STD_LOGIC
  );
end brd_axi_fifo_mm_s_0_1_fifo;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_fifo is
begin
\gfifo_gen.COMP_AXIS_FG_FIFO\: entity work.brd_axi_fifo_mm_s_0_1_axis_fg
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      D(6 downto 0) => D(6 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\,
      Q(10 downto 0) => Q(10 downto 0),
      SR(0) => SR(0),
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      \gaxi_full_sm.r_valid_r1_reg\ => \gaxi_full_sm.r_valid_r1_reg\,
      \grxd.fg_rxd_wr_length_reg[2]\ => \grxd.fg_rxd_wr_length_reg[2]\,
      \grxd.rx_len_wr_en_reg\ => \grxd.rx_len_wr_en_reg\,
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_0\,
      \out\ => \out\,
      p_10_out => p_10_out,
      p_9_out => p_9_out,
      rx_complete => rx_complete,
      rx_len_wr_en => rx_len_wr_en,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi4_rready => s_axi4_rready,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[12]\ => \sig_ip2bus_data_reg[12]\,
      \sig_ip2bus_data_reg[13]\(9 downto 0) => \sig_ip2bus_data_reg[13]\(9 downto 0),
      \sig_ip2bus_data_reg[19]\ => \sig_ip2bus_data_reg[19]\,
      \sig_ip2bus_data_reg[20]\ => \sig_ip2bus_data_reg[20]\,
      \sig_ip2bus_data_reg[22]\ => \sig_ip2bus_data_reg[22]\,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[24]\ => \sig_ip2bus_data_reg[24]\,
      \sig_ip2bus_data_reg[25]\ => \sig_ip2bus_data_reg[25]\,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]\,
      sig_rd_rlen_reg => sig_rd_rlen_reg,
      \sig_register_array_reg[0][2]\ => \sig_register_array_reg[0][2]\,
      sig_rx_channel_reset_reg => sig_rx_channel_reset_reg,
      sig_rx_channel_reset_reg_0 => sig_rx_channel_reset_reg_0,
      sig_rx_channel_reset_reg_1 => sig_rx_channel_reset_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_ipic2axi_s is
  port (
    \out\ : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    IPIC_STATE : out STD_LOGIC;
    \gpr1.dout_i_reg[22]\ : out STD_LOGIC;
    cs_ce_clr : out STD_LOGIC;
    \sig_ip2bus_data_reg[26]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \sig_ip2bus_data_reg[27]_0\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[25]_0\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[22]_0\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[23]_0\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[12]_0\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[24]_0\ : out STD_LOGIC;
    sig_str_rst_reg_0 : out STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    \sig_register_array_reg[0][5]_0\ : out STD_LOGIC;
    \sig_register_array_reg[1][0]_0\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[29]_0\ : out STD_LOGIC;
    \sig_ip2bus_data_reg[28]_0\ : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    \sig_ip2bus_data_reg[0]_0\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \sig_register_array_reg[0][12]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][8]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][7]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][11]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][5]_1\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]_0\ : out STD_LOGIC;
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sig_ip2bus_data_reg[9]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_rdata_i_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg : in STD_LOGIC;
    bus2ip_rnw_i_reg_0 : in STD_LOGIC;
    sig_Bus2IP_CS : in STD_LOGIC;
    sig_rx_channel_reset_reg_0 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    \gaxi_full_sm.r_valid_r1_reg\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 22 downto 0 );
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC;
    \sig_register_array[0]1_out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg_0 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : in STD_LOGIC;
    Bus_RNW_reg_reg_1 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_1\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_2\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg_2 : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
end brd_axi_fifo_mm_s_0_1_ipic2axi_s;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_ipic2axi_s is
  signal Axi_Str_TxD_AReset : STD_LOGIC;
  signal \^ipic_state\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal fg_rxd_wr_length : STD_LOGIC_VECTOR ( 22 downto 1 );
  signal \^gpr1.dout_i_reg[22]\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_16\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_17\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_2\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_22\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_23\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_25\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_26\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_27\ : STD_LOGIC;
  signal \grxd.COMP_rx_len_fifo_n_14\ : STD_LOGIC;
  signal \grxd.COMP_rx_len_fifo_n_15\ : STD_LOGIC;
  signal \grxd.COMP_rx_len_fifo_n_16\ : STD_LOGIC;
  signal \grxd.COMP_rx_len_fifo_n_17\ : STD_LOGIC;
  signal \grxd.COMP_rx_len_fifo_n_18\ : STD_LOGIC;
  signal \grxd.COMP_rx_len_fifo_n_19\ : STD_LOGIC;
  signal \grxd.COMP_rx_len_fifo_n_20\ : STD_LOGIC;
  signal \grxd.COMP_rx_len_fifo_n_21\ : STD_LOGIC;
  signal \grxd.COMP_rx_len_fifo_n_22\ : STD_LOGIC;
  signal \grxd.COMP_rx_len_fifo_n_23\ : STD_LOGIC;
  signal \grxd.COMP_rx_len_fifo_n_24\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[10]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[11]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[12]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[13]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[14]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[15]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[16]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[17]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[18]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[19]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[1]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[20]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[21]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[22]_i_3_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[2]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[2]_i_2_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[3]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[4]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[5]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[6]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[7]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[8]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[9]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.rx_partial_pkt_reg_n_0\ : STD_LOGIC;
  signal interrupt_INST_0_i_1_n_0 : STD_LOGIC;
  signal interrupt_INST_0_i_2_n_0 : STD_LOGIC;
  signal \^out\ : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_4\ : STD_LOGIC;
  signal \plusOp_carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_carry__2_n_7\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_4\ : STD_LOGIC;
  signal \plusOp_carry__3_n_5\ : STD_LOGIC;
  signal \plusOp_carry__3_n_6\ : STD_LOGIC;
  signal \plusOp_carry__3_n_7\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_n_6\ : STD_LOGIC;
  signal \plusOp_carry__4_n_7\ : STD_LOGIC;
  signal \plusOp_carry_i_1__1_n_0\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal rx_complete : STD_LOGIC;
  signal rx_fg_len_empty_d1 : STD_LOGIC;
  signal rx_len_wr_en : STD_LOGIC;
  signal rx_str_wr_en : STD_LOGIC;
  signal \^s2mm_prmry_reset_out_n\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal sig_ip2bus_data : STD_LOGIC_VECTOR ( 13 to 21 );
  signal \sig_ip2bus_data[13]_i_3_n_0\ : STD_LOGIC;
  signal \^sig_ip2bus_data_reg[0]_0\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal sig_rd_rlen : STD_LOGIC;
  signal sig_rd_rlen_reg_n_0 : STD_LOGIC;
  signal \sig_register_array[0][11]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][12]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][2]_i_8_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[1][0]_i_7_n_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][11]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][12]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][2]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][5]_1\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][7]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][8]_0\ : STD_LOGIC;
  signal sig_rxd_prog_empty_d1 : STD_LOGIC;
  signal sig_rxd_reset : STD_LOGIC;
  signal \NLW__inferred__0/i__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\ : label is "soft_lutpair33";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[11]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[12]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[13]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[14]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[15]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[16]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[17]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[18]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[19]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[20]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[21]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[22]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[4]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[8]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[9]_i_1\ : label is "soft_lutpair30";
  attribute METHODOLOGY_DRC_VIOS of plusOp_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  IPIC_STATE <= \^ipic_state\;
  Q(9 downto 0) <= \^q\(9 downto 0);
  \gpr1.dout_i_reg[22]\ <= \^gpr1.dout_i_reg[22]\;
  \out\ <= \^out\;
  s2mm_prmry_reset_out_n <= \^s2mm_prmry_reset_out_n\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_wready <= \^s_axi_wready\;
  \sig_ip2bus_data_reg[0]_0\(12 downto 0) <= \^sig_ip2bus_data_reg[0]_0\(12 downto 0);
  \sig_register_array_reg[0][11]_0\ <= \^sig_register_array_reg[0][11]_0\;
  \sig_register_array_reg[0][12]_0\ <= \^sig_register_array_reg[0][12]_0\;
  \sig_register_array_reg[0][2]_0\ <= \^sig_register_array_reg[0][2]_0\;
  \sig_register_array_reg[0][5]_1\ <= \^sig_register_array_reg[0][5]_1\;
  \sig_register_array_reg[0][7]_0\ <= \^sig_register_array_reg[0][7]_0\;
  \sig_register_array_reg[0][8]_0\ <= \^sig_register_array_reg[0][8]_0\;
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_aresetn,
      I2 => \^s_axi_arready\,
      O => cs_ce_clr
    );
IP2Bus_RdAck_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rnw_i_reg_0,
      Q => \^s_axi_arready\,
      R => SS(0)
    );
IP2Bus_WrAck_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rnw_i_reg,
      Q => \^s_axi_wready\,
      R => SR(0)
    );
IPIC_STATE_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_Bus2IP_CS,
      Q => \^ipic_state\,
      R => SS(0)
    );
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3) => \_inferred__0/i__carry_n_4\,
      O(2) => \_inferred__0/i__carry_n_5\,
      O(1) => \_inferred__0/i__carry_n_6\,
      O(0) => \_inferred__0/i__carry_n_7\,
      S(3 downto 0) => fg_rxd_wr_length(5 downto 2)
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \_inferred__0/i__carry__0_n_0\,
      CO(2) => \_inferred__0/i__carry__0_n_1\,
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \_inferred__0/i__carry__0_n_4\,
      O(2) => \_inferred__0/i__carry__0_n_5\,
      O(1) => \_inferred__0/i__carry__0_n_6\,
      O(0) => \_inferred__0/i__carry__0_n_7\,
      S(3 downto 0) => fg_rxd_wr_length(9 downto 6)
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_0\,
      CO(3) => \_inferred__0/i__carry__1_n_0\,
      CO(2) => \_inferred__0/i__carry__1_n_1\,
      CO(1) => \_inferred__0/i__carry__1_n_2\,
      CO(0) => \_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \_inferred__0/i__carry__1_n_4\,
      O(2) => \_inferred__0/i__carry__1_n_5\,
      O(1) => \_inferred__0/i__carry__1_n_6\,
      O(0) => \_inferred__0/i__carry__1_n_7\,
      S(3 downto 0) => fg_rxd_wr_length(13 downto 10)
    );
\_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__1_n_0\,
      CO(3) => \_inferred__0/i__carry__2_n_0\,
      CO(2) => \_inferred__0/i__carry__2_n_1\,
      CO(1) => \_inferred__0/i__carry__2_n_2\,
      CO(0) => \_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \_inferred__0/i__carry__2_n_4\,
      O(2) => \_inferred__0/i__carry__2_n_5\,
      O(1) => \_inferred__0/i__carry__2_n_6\,
      O(0) => \_inferred__0/i__carry__2_n_7\,
      S(3 downto 0) => fg_rxd_wr_length(17 downto 14)
    );
\_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__2_n_0\,
      CO(3) => \_inferred__0/i__carry__3_n_0\,
      CO(2) => \_inferred__0/i__carry__3_n_1\,
      CO(1) => \_inferred__0/i__carry__3_n_2\,
      CO(0) => \_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \_inferred__0/i__carry__3_n_4\,
      O(2) => \_inferred__0/i__carry__3_n_5\,
      O(1) => \_inferred__0/i__carry__3_n_6\,
      O(0) => \_inferred__0/i__carry__3_n_7\,
      S(3 downto 0) => fg_rxd_wr_length(21 downto 18)
    );
\_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__3_n_0\,
      CO(3 downto 0) => \NLW__inferred__0/i__carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW__inferred__0/i__carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => \_inferred__0/i__carry__4_n_7\,
      S(3 downto 1) => B"000",
      S(0) => fg_rxd_wr_length(22)
    );
\grxd.COMP_RX_FIFO\: entity work.brd_axi_fifo_mm_s_0_1_fifo
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      D(6) => sig_ip2bus_data(13),
      D(5) => sig_ip2bus_data(14),
      D(4) => sig_ip2bus_data(15),
      D(3) => sig_ip2bus_data(16),
      D(2) => sig_ip2bus_data(17),
      D(1) => sig_ip2bus_data(18),
      D(0) => sig_ip2bus_data(19),
      E(0) => rx_str_wr_en,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\,
      Q(10) => \grxd.COMP_rx_len_fifo_n_14\,
      Q(9) => \grxd.COMP_rx_len_fifo_n_15\,
      Q(8) => \grxd.COMP_rx_len_fifo_n_16\,
      Q(7) => \grxd.COMP_rx_len_fifo_n_17\,
      Q(6) => \grxd.COMP_rx_len_fifo_n_18\,
      Q(5) => \grxd.COMP_rx_len_fifo_n_19\,
      Q(4) => \grxd.COMP_rx_len_fifo_n_20\,
      Q(3) => \grxd.COMP_rx_len_fifo_n_21\,
      Q(2) => \grxd.COMP_rx_len_fifo_n_22\,
      Q(1) => \grxd.COMP_rx_len_fifo_n_23\,
      Q(0) => \grxd.COMP_rx_len_fifo_n_24\,
      SR(0) => \grxd.COMP_RX_FIFO_n_2\,
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      \gaxi_full_sm.r_valid_r1_reg\ => \gaxi_full_sm.r_valid_r1_reg\,
      \grxd.fg_rxd_wr_length_reg[2]\ => \grxd.COMP_RX_FIFO_n_22\,
      \grxd.rx_len_wr_en_reg\ => \grxd.COMP_RX_FIFO_n_26\,
      \grxd.rx_partial_pkt_reg\ => \grxd.COMP_RX_FIFO_n_25\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.rx_partial_pkt_reg_n_0\,
      \out\ => \^out\,
      p_10_out => p_10_out,
      p_9_out => p_9_out,
      rx_complete => rx_complete,
      rx_len_wr_en => rx_len_wr_en,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi4_rready => s_axi4_rready,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[12]\ => \sig_ip2bus_data_reg[12]_0\,
      \sig_ip2bus_data_reg[13]\(9 downto 0) => \^q\(9 downto 0),
      \sig_ip2bus_data_reg[19]\ => \grxd.COMP_RX_FIFO_n_17\,
      \sig_ip2bus_data_reg[20]\ => \grxd.COMP_RX_FIFO_n_16\,
      \sig_ip2bus_data_reg[22]\ => \sig_ip2bus_data_reg[22]_0\,
      \sig_ip2bus_data_reg[23]\ => \grxd.COMP_RX_FIFO_n_27\,
      \sig_ip2bus_data_reg[24]\ => \sig_ip2bus_data_reg[24]_0\,
      \sig_ip2bus_data_reg[25]\ => \sig_ip2bus_data_reg[25]_0\,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]_0\,
      sig_rd_rlen_reg => sig_rd_rlen_reg_n_0,
      \sig_register_array_reg[0][2]\ => \grxd.COMP_RX_FIFO_n_23\,
      sig_rx_channel_reset_reg => \^s2mm_prmry_reset_out_n\,
      sig_rx_channel_reset_reg_0 => \^gpr1.dout_i_reg[22]\,
      sig_rx_channel_reset_reg_1 => \sig_ip2bus_data[13]_i_3_n_0\
    );
\grxd.COMP_rx_len_fifo\: entity work.brd_axi_fifo_mm_s_0_1_sync_fifo_fg
     port map (
      Axi_Str_TxD_AReset => Axi_Str_TxD_AReset,
      D(1) => sig_ip2bus_data(20),
      D(0) => sig_ip2bus_data(21),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      Q(4) => \^q\(8),
      Q(3) => \^q\(6),
      Q(2 downto 0) => \^q\(2 downto 0),
      SR(0) => sig_rxd_reset,
      \count_reg[5]\ => \grxd.COMP_RX_FIFO_n_27\,
      \count_reg[8]\ => \grxd.COMP_RX_FIFO_n_16\,
      fg_rxd_wr_length(21 downto 0) => fg_rxd_wr_length(22 downto 1),
      \grxd.rx_partial_pkt_reg\ => \grxd.rx_partial_pkt_reg_n_0\,
      \grxd.rx_partial_pkt_reg_0\ => \grxd.COMP_RX_FIFO_n_17\,
      \out\ => \^out\,
      rx_complete => rx_complete,
      rx_len_wr_en => rx_len_wr_en,
      s2mm_prmry_reset_out_n => \^s2mm_prmry_reset_out_n\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]_0\,
      \sig_ip2bus_data_reg[27]\ => \sig_ip2bus_data_reg[27]_0\,
      \sig_ip2bus_data_reg[28]\ => \sig_ip2bus_data_reg[28]_0\,
      \sig_ip2bus_data_reg[29]\ => \sig_ip2bus_data_reg[29]_0\,
      \sig_ip2bus_data_reg[9]\(16 downto 13) => \sig_ip2bus_data_reg[9]_0\(5 downto 2),
      \sig_ip2bus_data_reg[9]\(12) => \grxd.COMP_rx_len_fifo_n_14\,
      \sig_ip2bus_data_reg[9]\(11) => \grxd.COMP_rx_len_fifo_n_15\,
      \sig_ip2bus_data_reg[9]\(10) => \grxd.COMP_rx_len_fifo_n_16\,
      \sig_ip2bus_data_reg[9]\(9) => \grxd.COMP_rx_len_fifo_n_17\,
      \sig_ip2bus_data_reg[9]\(8) => \grxd.COMP_rx_len_fifo_n_18\,
      \sig_ip2bus_data_reg[9]\(7) => \grxd.COMP_rx_len_fifo_n_19\,
      \sig_ip2bus_data_reg[9]\(6) => \grxd.COMP_rx_len_fifo_n_20\,
      \sig_ip2bus_data_reg[9]\(5) => \grxd.COMP_rx_len_fifo_n_21\,
      \sig_ip2bus_data_reg[9]\(4) => \grxd.COMP_rx_len_fifo_n_22\,
      \sig_ip2bus_data_reg[9]\(3) => \grxd.COMP_rx_len_fifo_n_23\,
      \sig_ip2bus_data_reg[9]\(2) => \grxd.COMP_rx_len_fifo_n_24\,
      \sig_ip2bus_data_reg[9]\(1 downto 0) => \sig_ip2bus_data_reg[9]_0\(1 downto 0),
      sig_rd_rlen => sig_rd_rlen,
      sig_rd_rlen_reg => sig_rd_rlen_reg_n_0,
      sig_rx_channel_reset_reg => \^gpr1.dout_i_reg[22]\,
      sig_rx_channel_reset_reg_0 => \sig_ip2bus_data[13]_i_3_n_0\
    );
\grxd.fg_rxd_wr_length[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__1_n_7\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__1_n_6\,
      O => \grxd.fg_rxd_wr_length[10]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__1_n_6\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__1_n_5\,
      O => \grxd.fg_rxd_wr_length[11]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__1_n_5\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__1_n_4\,
      O => \grxd.fg_rxd_wr_length[12]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__1_n_4\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__2_n_7\,
      O => \grxd.fg_rxd_wr_length[13]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__2_n_7\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__2_n_6\,
      O => \grxd.fg_rxd_wr_length[14]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__2_n_6\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__2_n_5\,
      O => \grxd.fg_rxd_wr_length[15]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__2_n_5\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__2_n_4\,
      O => \grxd.fg_rxd_wr_length[16]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__2_n_4\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__3_n_7\,
      O => \grxd.fg_rxd_wr_length[17]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__3_n_7\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__3_n_6\,
      O => \grxd.fg_rxd_wr_length[18]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__3_n_6\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__3_n_5\,
      O => \grxd.fg_rxd_wr_length[19]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fg_rxd_wr_length(1),
      I1 => axi_str_rxd_tlast,
      I2 => plusOp_carry_n_7,
      O => \grxd.fg_rxd_wr_length[1]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__3_n_5\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__3_n_4\,
      O => \grxd.fg_rxd_wr_length[20]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__3_n_4\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__4_n_7\,
      O => \grxd.fg_rxd_wr_length[21]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__4_n_7\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__4_n_6\,
      O => \grxd.fg_rxd_wr_length[22]_i_3_n_0\
    );
\grxd.fg_rxd_wr_length[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length[2]_i_2_n_0\,
      I1 => s_axi_aresetn,
      I2 => Axi_Str_TxD_AReset,
      O => \grxd.fg_rxd_wr_length[2]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFF3E20000F3E2"
    )
        port map (
      I0 => plusOp_carry_n_6,
      I1 => axi_str_rxd_tlast,
      I2 => \_inferred__0/i__carry_n_7\,
      I3 => rx_len_wr_en,
      I4 => \grxd.COMP_RX_FIFO_n_22\,
      I5 => fg_rxd_wr_length(2),
      O => \grxd.fg_rxd_wr_length[2]_i_2_n_0\
    );
\grxd.fg_rxd_wr_length[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry_n_6\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp_carry_n_5,
      O => \grxd.fg_rxd_wr_length[3]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry_n_5\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp_carry_n_4,
      O => \grxd.fg_rxd_wr_length[4]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry_n_4\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__0_n_7\,
      O => \grxd.fg_rxd_wr_length[5]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__0_n_7\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__0_n_6\,
      O => \grxd.fg_rxd_wr_length[6]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__0_n_6\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__0_n_5\,
      O => \grxd.fg_rxd_wr_length[7]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__0_n_5\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__0_n_4\,
      O => \grxd.fg_rxd_wr_length[8]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \_inferred__0/i__carry__0_n_4\,
      I1 => axi_str_rxd_tlast,
      I2 => \plusOp_carry__1_n_7\,
      O => \grxd.fg_rxd_wr_length[9]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[10]_i_1_n_0\,
      Q => fg_rxd_wr_length(10),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[11]_i_1_n_0\,
      Q => fg_rxd_wr_length(11),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[12]_i_1_n_0\,
      Q => fg_rxd_wr_length(12),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[13]_i_1_n_0\,
      Q => fg_rxd_wr_length(13),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[14]_i_1_n_0\,
      Q => fg_rxd_wr_length(14),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[15]_i_1_n_0\,
      Q => fg_rxd_wr_length(15),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[16]_i_1_n_0\,
      Q => fg_rxd_wr_length(16),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[17]_i_1_n_0\,
      Q => fg_rxd_wr_length(17),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[18]_i_1_n_0\,
      Q => fg_rxd_wr_length(18),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[19]_i_1_n_0\,
      Q => fg_rxd_wr_length(19),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[1]_i_1_n_0\,
      Q => fg_rxd_wr_length(1),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[20]_i_1_n_0\,
      Q => fg_rxd_wr_length(20),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[21]_i_1_n_0\,
      Q => fg_rxd_wr_length(21),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[22]_i_3_n_0\,
      Q => fg_rxd_wr_length(22),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grxd.fg_rxd_wr_length[2]_i_1_n_0\,
      Q => fg_rxd_wr_length(2),
      R => '0'
    );
\grxd.fg_rxd_wr_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[3]_i_1_n_0\,
      Q => fg_rxd_wr_length(3),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[4]_i_1_n_0\,
      Q => fg_rxd_wr_length(4),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[5]_i_1_n_0\,
      Q => fg_rxd_wr_length(5),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[6]_i_1_n_0\,
      Q => fg_rxd_wr_length(6),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[7]_i_1_n_0\,
      Q => fg_rxd_wr_length(7),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[8]_i_1_n_0\,
      Q => fg_rxd_wr_length(8),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.fg_rxd_wr_length_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[9]_i_1_n_0\,
      Q => fg_rxd_wr_length(9),
      R => \grxd.COMP_RX_FIFO_n_2\
    );
\grxd.rx_fg_len_empty_d1_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^out\,
      Q => rx_fg_len_empty_d1,
      S => SS(0)
    );
\grxd.rx_len_wr_en_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grxd.COMP_RX_FIFO_n_26\,
      Q => rx_len_wr_en,
      R => '0'
    );
\grxd.rx_partial_pkt_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grxd.COMP_RX_FIFO_n_25\,
      Q => \grxd.rx_partial_pkt_reg_n_0\,
      S => sig_rxd_reset
    );
\grxd.sig_rxd_prog_empty_d1_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_10_out,
      Q => sig_rxd_prog_empty_d1,
      S => SS(0)
    );
interrupt_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^sig_ip2bus_data_reg[0]_0\(0),
      I1 => \^sig_register_array_reg[0][12]_0\,
      I2 => \^sig_ip2bus_data_reg[0]_0\(4),
      I3 => \^sig_register_array_reg[0][8]_0\,
      I4 => interrupt_INST_0_i_1_n_0,
      I5 => interrupt_INST_0_i_2_n_0,
      O => interrupt
    );
interrupt_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^sig_register_array_reg[0][7]_0\,
      I1 => \^sig_ip2bus_data_reg[0]_0\(5),
      I2 => \^sig_register_array_reg[0][11]_0\,
      I3 => \^sig_ip2bus_data_reg[0]_0\(1),
      O => interrupt_INST_0_i_1_n_0
    );
interrupt_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^sig_register_array_reg[0][5]_1\,
      I1 => \^sig_ip2bus_data_reg[0]_0\(7),
      I2 => \^sig_register_array_reg[0][2]_0\,
      I3 => \^sig_ip2bus_data_reg[0]_0\(10),
      O => interrupt_INST_0_i_2_n_0
    );
mm2s_prmry_reset_out_n_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Axi_Str_TxD_AReset,
      O => mm2s_prmry_reset_out_n
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => fg_rxd_wr_length(2),
      DI(0) => '0',
      O(3) => plusOp_carry_n_4,
      O(2) => plusOp_carry_n_5,
      O(1) => plusOp_carry_n_6,
      O(0) => plusOp_carry_n_7,
      S(3 downto 2) => fg_rxd_wr_length(4 downto 3),
      S(1) => \plusOp_carry_i_1__1_n_0\,
      S(0) => fg_rxd_wr_length(1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__0_n_4\,
      O(2) => \plusOp_carry__0_n_5\,
      O(1) => \plusOp_carry__0_n_6\,
      O(0) => \plusOp_carry__0_n_7\,
      S(3 downto 0) => fg_rxd_wr_length(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__1_n_4\,
      O(2) => \plusOp_carry__1_n_5\,
      O(1) => \plusOp_carry__1_n_6\,
      O(0) => \plusOp_carry__1_n_7\,
      S(3 downto 0) => fg_rxd_wr_length(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__2_n_4\,
      O(2) => \plusOp_carry__2_n_5\,
      O(1) => \plusOp_carry__2_n_6\,
      O(0) => \plusOp_carry__2_n_7\,
      S(3 downto 0) => fg_rxd_wr_length(16 downto 13)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__3_n_4\,
      O(2) => \plusOp_carry__3_n_5\,
      O(1) => \plusOp_carry__3_n_6\,
      O(0) => \plusOp_carry__3_n_7\,
      S(3 downto 0) => fg_rxd_wr_length(20 downto 17)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3 downto 1) => \NLW_plusOp_carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \plusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_plusOp_carry__4_O_UNCONNECTED\(3 downto 2),
      O(1) => \plusOp_carry__4_n_6\,
      O(0) => \plusOp_carry__4_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => fg_rxd_wr_length(22 downto 21)
    );
\plusOp_carry_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fg_rxd_wr_length(2),
      O => \plusOp_carry_i_1__1_n_0\
    );
\sig_ip2bus_data[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[22]\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      O => \sig_ip2bus_data[13]_i_3_n_0\
    );
\sig_ip2bus_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(22),
      Q => \s_axi_rdata_i_reg[31]\(31),
      R => SR(0)
    );
\sig_ip2bus_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(12),
      Q => \s_axi_rdata_i_reg[31]\(21),
      R => SR(0)
    );
\sig_ip2bus_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(11),
      Q => \s_axi_rdata_i_reg[31]\(20),
      R => SR(0)
    );
\sig_ip2bus_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(10),
      Q => \s_axi_rdata_i_reg[31]\(19),
      R => SR(0)
    );
\sig_ip2bus_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(13),
      Q => \s_axi_rdata_i_reg[31]\(18),
      R => SR(0)
    );
\sig_ip2bus_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(14),
      Q => \s_axi_rdata_i_reg[31]\(17),
      R => SR(0)
    );
\sig_ip2bus_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(15),
      Q => \s_axi_rdata_i_reg[31]\(16),
      R => SR(0)
    );
\sig_ip2bus_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(16),
      Q => \s_axi_rdata_i_reg[31]\(15),
      R => SR(0)
    );
\sig_ip2bus_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(17),
      Q => \s_axi_rdata_i_reg[31]\(14),
      R => SR(0)
    );
\sig_ip2bus_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(18),
      Q => \s_axi_rdata_i_reg[31]\(13),
      R => SR(0)
    );
\sig_ip2bus_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(19),
      Q => \s_axi_rdata_i_reg[31]\(12),
      R => SR(0)
    );
\sig_ip2bus_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(21),
      Q => \s_axi_rdata_i_reg[31]\(30),
      R => SR(0)
    );
\sig_ip2bus_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(20),
      Q => \s_axi_rdata_i_reg[31]\(11),
      R => SR(0)
    );
\sig_ip2bus_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(21),
      Q => \s_axi_rdata_i_reg[31]\(10),
      R => SR(0)
    );
\sig_ip2bus_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(9),
      Q => \s_axi_rdata_i_reg[31]\(9),
      R => SR(0)
    );
\sig_ip2bus_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(8),
      Q => \s_axi_rdata_i_reg[31]\(8),
      R => SR(0)
    );
\sig_ip2bus_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(7),
      Q => \s_axi_rdata_i_reg[31]\(7),
      R => SR(0)
    );
\sig_ip2bus_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(6),
      Q => \s_axi_rdata_i_reg[31]\(6),
      R => SR(0)
    );
\sig_ip2bus_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(5),
      Q => \s_axi_rdata_i_reg[31]\(5),
      R => SR(0)
    );
\sig_ip2bus_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(4),
      Q => \s_axi_rdata_i_reg[31]\(4),
      R => SR(0)
    );
\sig_ip2bus_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(3),
      Q => \s_axi_rdata_i_reg[31]\(3),
      R => SR(0)
    );
\sig_ip2bus_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(2),
      Q => \s_axi_rdata_i_reg[31]\(2),
      R => SR(0)
    );
\sig_ip2bus_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(20),
      Q => \s_axi_rdata_i_reg[31]\(29),
      R => SR(0)
    );
\sig_ip2bus_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(1),
      Q => \s_axi_rdata_i_reg[31]\(1),
      R => SR(0)
    );
\sig_ip2bus_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => \s_axi_rdata_i_reg[31]\(0),
      R => SR(0)
    );
\sig_ip2bus_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(19),
      Q => \s_axi_rdata_i_reg[31]\(28),
      R => SR(0)
    );
\sig_ip2bus_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(18),
      Q => \s_axi_rdata_i_reg[31]\(27),
      R => SR(0)
    );
\sig_ip2bus_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(17),
      Q => \s_axi_rdata_i_reg[31]\(26),
      R => SR(0)
    );
\sig_ip2bus_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(16),
      Q => \s_axi_rdata_i_reg[31]\(25),
      R => SR(0)
    );
\sig_ip2bus_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(15),
      Q => \s_axi_rdata_i_reg[31]\(24),
      R => SR(0)
    );
\sig_ip2bus_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(14),
      Q => \s_axi_rdata_i_reg[31]\(23),
      R => SR(0)
    );
\sig_ip2bus_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(13),
      Q => \s_axi_rdata_i_reg[31]\(22),
      R => SR(0)
    );
sig_rd_rlen_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_rd_rlen,
      Q => sig_rd_rlen_reg_n_0,
      R => SR(0)
    );
\sig_register_array[0][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => p_9_out,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_1\,
      I2 => \^sig_register_array_reg[0][11]_0\,
      O => \sig_register_array[0][11]_i_1_n_0\
    );
\sig_register_array[0][12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F04"
    )
        port map (
      I0 => sig_rxd_prog_empty_d1,
      I1 => p_10_out,
      I2 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_2\,
      I3 => \^sig_register_array_reg[0][12]_0\,
      O => \sig_register_array[0][12]_i_1_n_0\
    );
\sig_register_array[0][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080F0800"
    )
        port map (
      I0 => \gaxi_full_sm.r_valid_r1_reg\,
      I1 => s_axi4_rready,
      I2 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\,
      I3 => \grxd.COMP_RX_FIFO_n_23\,
      I4 => \^sig_register_array_reg[0][2]_0\,
      O => \sig_register_array[0][2]_i_1_n_0\
    );
\sig_register_array[0][2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => s_axi_wdata(2),
      I2 => s_axi_wdata(1),
      I3 => s_axi_wdata(4),
      I4 => \sig_register_array[0][2]_i_8_n_0\,
      O => \sig_register_array_reg[0][5]_0\
    );
\sig_register_array[0][2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => s_axi_wdata(5),
      I2 => s_axi_wdata(6),
      I3 => s_axi_wdata(3),
      O => \sig_register_array[0][2]_i_8_n_0\
    );
\sig_register_array[0][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF000E"
    )
        port map (
      I0 => rx_fg_len_empty_d1,
      I1 => rx_complete,
      I2 => \^out\,
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\,
      I4 => \^sig_register_array_reg[0][5]_1\,
      O => \sig_register_array[0][5]_i_1_n_0\
    );
\sig_register_array[0][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2F0020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I1 => Bus_RNW_reg,
      I2 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      I4 => \^sig_register_array_reg[0][7]_0\,
      O => \sig_register_array[0][7]_i_1_n_0\
    );
\sig_register_array[0][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFAAAAAA80AA"
    )
        port map (
      I0 => \sig_register_array[0]1_out\(0),
      I1 => Bus_RNW_reg_reg_0,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      I3 => \^s2mm_prmry_reset_out_n\,
      I4 => Bus_RNW_reg_reg_1,
      I5 => \^sig_register_array_reg[0][8]_0\,
      O => \sig_register_array[0][8]_i_1_n_0\
    );
\sig_register_array[1][0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => s_axi_wdata(0),
      I2 => s_axi_wdata(7),
      I3 => s_axi_wdata(5),
      I4 => \sig_register_array[1][0]_i_7_n_0\,
      O => \sig_register_array_reg[1][0]_0\
    );
\sig_register_array[1][0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => s_axi_wdata(3),
      I2 => s_axi_wdata(4),
      I3 => s_axi_wdata(6),
      O => \sig_register_array[1][0]_i_7_n_0\
    );
\sig_register_array_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][11]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][11]_0\,
      R => SS(0)
    );
\sig_register_array_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][12]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][12]_0\,
      R => SS(0)
    );
\sig_register_array_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][2]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][2]_0\,
      R => SS(0)
    );
\sig_register_array_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][5]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][5]_1\,
      R => SS(0)
    );
\sig_register_array_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][7]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][7]_0\,
      R => SS(0)
    );
\sig_register_array_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][8]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][8]_0\,
      R => SS(0)
    );
\sig_register_array_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => Bus_RNW_reg_reg_2(12),
      Q => \^sig_ip2bus_data_reg[0]_0\(12),
      R => SS(0)
    );
\sig_register_array_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => Bus_RNW_reg_reg_2(2),
      Q => \^sig_ip2bus_data_reg[0]_0\(2),
      R => SS(0)
    );
\sig_register_array_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => Bus_RNW_reg_reg_2(1),
      Q => \^sig_ip2bus_data_reg[0]_0\(1),
      R => SS(0)
    );
\sig_register_array_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => Bus_RNW_reg_reg_2(0),
      Q => \^sig_ip2bus_data_reg[0]_0\(0),
      R => SS(0)
    );
\sig_register_array_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => Bus_RNW_reg_reg_2(11),
      Q => \^sig_ip2bus_data_reg[0]_0\(11),
      R => SS(0)
    );
\sig_register_array_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => Bus_RNW_reg_reg_2(10),
      Q => \^sig_ip2bus_data_reg[0]_0\(10),
      R => SS(0)
    );
\sig_register_array_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => Bus_RNW_reg_reg_2(9),
      Q => \^sig_ip2bus_data_reg[0]_0\(9),
      R => SS(0)
    );
\sig_register_array_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => Bus_RNW_reg_reg_2(8),
      Q => \^sig_ip2bus_data_reg[0]_0\(8),
      R => SS(0)
    );
\sig_register_array_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => Bus_RNW_reg_reg_2(7),
      Q => \^sig_ip2bus_data_reg[0]_0\(7),
      R => SS(0)
    );
\sig_register_array_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => Bus_RNW_reg_reg_2(6),
      Q => \^sig_ip2bus_data_reg[0]_0\(6),
      R => SS(0)
    );
\sig_register_array_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => Bus_RNW_reg_reg_2(5),
      Q => \^sig_ip2bus_data_reg[0]_0\(5),
      R => SS(0)
    );
\sig_register_array_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => Bus_RNW_reg_reg_2(4),
      Q => \^sig_ip2bus_data_reg[0]_0\(4),
      R => SS(0)
    );
\sig_register_array_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => Bus_RNW_reg_reg_2(3),
      Q => \^sig_ip2bus_data_reg[0]_0\(3),
      R => SS(0)
    );
sig_rx_channel_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_rx_channel_reset_reg_0,
      Q => \^gpr1.dout_i_reg[22]\,
      R => SS(0)
    );
sig_str_rst_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ipic_state\,
      I1 => sig_Bus2IP_CS,
      O => sig_str_rst_reg_0
    );
sig_str_rst_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg,
      Q => Axi_Str_TxD_AReset,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s is
  port (
    interrupt : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi4_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_awlock : in STD_LOGIC;
    s_axi4_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_wlast : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    s_axi4_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arlock : in STD_LOGIC;
    s_axi4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    axi_str_txd_tvalid : out STD_LOGIC;
    axi_str_txd_tready : in STD_LOGIC;
    axi_str_txd_tlast : out STD_LOGIC;
    axi_str_txd_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_txd_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txd_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txd_tid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txd_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mm2s_cntrl_reset_out_n : out STD_LOGIC;
    axi_str_txc_tvalid : out STD_LOGIC;
    axi_str_txc_tready : in STD_LOGIC;
    axi_str_txc_tlast : out STD_LOGIC;
    axi_str_txc_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txc_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_txc_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txc_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txc_tid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txc_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    axi_str_rxd_tlast : in STD_LOGIC;
    axi_str_rxd_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_rxd_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_rxd_tid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_rxd_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_AXI4_BASEADDR : integer;
  attribute C_AXI4_BASEADDR of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 1136721920;
  attribute C_AXI4_HIGHADDR : integer;
  attribute C_AXI4_HIGHADDR of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 1136787455;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 4;
  attribute C_BASEADDR : integer;
  attribute C_BASEADDR of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 1136656384;
  attribute C_DATA_INTERFACE_TYPE : integer;
  attribute C_DATA_INTERFACE_TYPE of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is "zynq";
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 0;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 0;
  attribute C_HIGHADDR : integer;
  attribute C_HIGHADDR of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 1136721919;
  attribute C_RX_FIFO_DEPTH : integer;
  attribute C_RX_FIFO_DEPTH of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 512;
  attribute C_RX_FIFO_PE_THRESHOLD : integer;
  attribute C_RX_FIFO_PE_THRESHOLD of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 2;
  attribute C_RX_FIFO_PF_THRESHOLD : integer;
  attribute C_RX_FIFO_PF_THRESHOLD of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 507;
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 1;
  attribute C_TX_FIFO_DEPTH : integer;
  attribute C_TX_FIFO_DEPTH of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 512;
  attribute C_TX_FIFO_PE_THRESHOLD : integer;
  attribute C_TX_FIFO_PE_THRESHOLD of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 2;
  attribute C_TX_FIFO_PF_THRESHOLD : integer;
  attribute C_TX_FIFO_PF_THRESHOLD of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 507;
  attribute C_USE_RX_CUT_THROUGH : integer;
  attribute C_USE_RX_CUT_THROUGH of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 1;
  attribute C_USE_RX_DATA : integer;
  attribute C_USE_RX_DATA of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 1;
  attribute C_USE_TX_CTRL : integer;
  attribute C_USE_TX_CTRL of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 0;
  attribute C_USE_TX_CUT_THROUGH : integer;
  attribute C_USE_TX_CUT_THROUGH of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 0;
  attribute C_USE_TX_DATA : integer;
  attribute C_USE_TX_DATA of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s : entity is 0;
end brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_18 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_19 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_20 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_21 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_22 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_23 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_24 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_27 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_28 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_29 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_30 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_32 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_33 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_34 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_35 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_36 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_37 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_38 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_39 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_40 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_41 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_42 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_43 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_44 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_45 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_46 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_47 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_48 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_49 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_5 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_50 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_7 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_83 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_84 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_85 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_86 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_87 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_88 : STD_LOGIC;
  signal COMP_IPIF_n_28 : STD_LOGIC;
  signal COMP_IPIF_n_30 : STD_LOGIC;
  signal COMP_IPIF_n_31 : STD_LOGIC;
  signal COMP_IPIF_n_32 : STD_LOGIC;
  signal COMP_IPIF_n_33 : STD_LOGIC;
  signal COMP_IPIF_n_34 : STD_LOGIC;
  signal COMP_IPIF_n_35 : STD_LOGIC;
  signal COMP_IPIF_n_36 : STD_LOGIC;
  signal COMP_IPIF_n_37 : STD_LOGIC;
  signal COMP_IPIF_n_38 : STD_LOGIC;
  signal COMP_IPIF_n_39 : STD_LOGIC;
  signal COMP_IPIF_n_40 : STD_LOGIC;
  signal COMP_IPIF_n_41 : STD_LOGIC;
  signal COMP_IPIF_n_55 : STD_LOGIC;
  signal COMP_IPIF_n_56 : STD_LOGIC;
  signal COMP_IPIF_n_57 : STD_LOGIC;
  signal COMP_IPIF_n_58 : STD_LOGIC;
  signal COMP_IPIF_n_59 : STD_LOGIC;
  signal IPIC_STATE : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\ : STD_LOGIC;
  signal axi4_rvalid_int : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^s2mm_prmry_reset_out_n\ : STD_LOGIC;
  signal s_aresetn_a_c : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal sig_Bus2IP_CS : STD_LOGIC;
  signal sig_ip2bus_data : STD_LOGIC_VECTOR ( 0 to 31 );
  signal sig_ip2bus_data_1 : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \sig_register_array[0]1_out\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \sig_register_array[1]_0\ : STD_LOGIC_VECTOR ( 0 to 12 );
begin
  axi_str_txc_tdata(31) <= \<const0>\;
  axi_str_txc_tdata(30) <= \<const0>\;
  axi_str_txc_tdata(29) <= \<const0>\;
  axi_str_txc_tdata(28) <= \<const0>\;
  axi_str_txc_tdata(27) <= \<const0>\;
  axi_str_txc_tdata(26) <= \<const0>\;
  axi_str_txc_tdata(25) <= \<const0>\;
  axi_str_txc_tdata(24) <= \<const0>\;
  axi_str_txc_tdata(23) <= \<const0>\;
  axi_str_txc_tdata(22) <= \<const0>\;
  axi_str_txc_tdata(21) <= \<const0>\;
  axi_str_txc_tdata(20) <= \<const0>\;
  axi_str_txc_tdata(19) <= \<const0>\;
  axi_str_txc_tdata(18) <= \<const0>\;
  axi_str_txc_tdata(17) <= \<const0>\;
  axi_str_txc_tdata(16) <= \<const0>\;
  axi_str_txc_tdata(15) <= \<const0>\;
  axi_str_txc_tdata(14) <= \<const0>\;
  axi_str_txc_tdata(13) <= \<const0>\;
  axi_str_txc_tdata(12) <= \<const0>\;
  axi_str_txc_tdata(11) <= \<const0>\;
  axi_str_txc_tdata(10) <= \<const0>\;
  axi_str_txc_tdata(9) <= \<const0>\;
  axi_str_txc_tdata(8) <= \<const0>\;
  axi_str_txc_tdata(7) <= \<const0>\;
  axi_str_txc_tdata(6) <= \<const0>\;
  axi_str_txc_tdata(5) <= \<const0>\;
  axi_str_txc_tdata(4) <= \<const0>\;
  axi_str_txc_tdata(3) <= \<const0>\;
  axi_str_txc_tdata(2) <= \<const0>\;
  axi_str_txc_tdata(1) <= \<const0>\;
  axi_str_txc_tdata(0) <= \<const0>\;
  axi_str_txc_tdest(3) <= \<const0>\;
  axi_str_txc_tdest(2) <= \<const0>\;
  axi_str_txc_tdest(1) <= \<const0>\;
  axi_str_txc_tdest(0) <= \<const0>\;
  axi_str_txc_tid(3) <= \<const0>\;
  axi_str_txc_tid(2) <= \<const0>\;
  axi_str_txc_tid(1) <= \<const0>\;
  axi_str_txc_tid(0) <= \<const0>\;
  axi_str_txc_tkeep(3) <= \<const1>\;
  axi_str_txc_tkeep(2) <= \<const1>\;
  axi_str_txc_tkeep(1) <= \<const1>\;
  axi_str_txc_tkeep(0) <= \<const1>\;
  axi_str_txc_tlast <= \<const0>\;
  axi_str_txc_tstrb(3) <= \<const0>\;
  axi_str_txc_tstrb(2) <= \<const0>\;
  axi_str_txc_tstrb(1) <= \<const0>\;
  axi_str_txc_tstrb(0) <= \<const0>\;
  axi_str_txc_tuser(3) <= \<const0>\;
  axi_str_txc_tuser(2) <= \<const0>\;
  axi_str_txc_tuser(1) <= \<const0>\;
  axi_str_txc_tuser(0) <= \<const0>\;
  axi_str_txc_tvalid <= \<const0>\;
  axi_str_txd_tdata(31) <= \<const0>\;
  axi_str_txd_tdata(30) <= \<const0>\;
  axi_str_txd_tdata(29) <= \<const0>\;
  axi_str_txd_tdata(28) <= \<const0>\;
  axi_str_txd_tdata(27) <= \<const0>\;
  axi_str_txd_tdata(26) <= \<const0>\;
  axi_str_txd_tdata(25) <= \<const0>\;
  axi_str_txd_tdata(24) <= \<const0>\;
  axi_str_txd_tdata(23) <= \<const0>\;
  axi_str_txd_tdata(22) <= \<const0>\;
  axi_str_txd_tdata(21) <= \<const0>\;
  axi_str_txd_tdata(20) <= \<const0>\;
  axi_str_txd_tdata(19) <= \<const0>\;
  axi_str_txd_tdata(18) <= \<const0>\;
  axi_str_txd_tdata(17) <= \<const0>\;
  axi_str_txd_tdata(16) <= \<const0>\;
  axi_str_txd_tdata(15) <= \<const0>\;
  axi_str_txd_tdata(14) <= \<const0>\;
  axi_str_txd_tdata(13) <= \<const0>\;
  axi_str_txd_tdata(12) <= \<const0>\;
  axi_str_txd_tdata(11) <= \<const0>\;
  axi_str_txd_tdata(10) <= \<const0>\;
  axi_str_txd_tdata(9) <= \<const0>\;
  axi_str_txd_tdata(8) <= \<const0>\;
  axi_str_txd_tdata(7) <= \<const0>\;
  axi_str_txd_tdata(6) <= \<const0>\;
  axi_str_txd_tdata(5) <= \<const0>\;
  axi_str_txd_tdata(4) <= \<const0>\;
  axi_str_txd_tdata(3) <= \<const0>\;
  axi_str_txd_tdata(2) <= \<const0>\;
  axi_str_txd_tdata(1) <= \<const0>\;
  axi_str_txd_tdata(0) <= \<const0>\;
  axi_str_txd_tdest(3) <= \<const0>\;
  axi_str_txd_tdest(2) <= \<const0>\;
  axi_str_txd_tdest(1) <= \<const0>\;
  axi_str_txd_tdest(0) <= \<const0>\;
  axi_str_txd_tid(3) <= \<const0>\;
  axi_str_txd_tid(2) <= \<const0>\;
  axi_str_txd_tid(1) <= \<const0>\;
  axi_str_txd_tid(0) <= \<const0>\;
  axi_str_txd_tkeep(3) <= \<const1>\;
  axi_str_txd_tkeep(2) <= \<const1>\;
  axi_str_txd_tkeep(1) <= \<const1>\;
  axi_str_txd_tkeep(0) <= \<const1>\;
  axi_str_txd_tlast <= \<const0>\;
  axi_str_txd_tstrb(3) <= \<const0>\;
  axi_str_txd_tstrb(2) <= \<const0>\;
  axi_str_txd_tstrb(1) <= \<const0>\;
  axi_str_txd_tstrb(0) <= \<const0>\;
  axi_str_txd_tuser(3) <= \<const0>\;
  axi_str_txd_tuser(2) <= \<const0>\;
  axi_str_txd_tuser(1) <= \<const0>\;
  axi_str_txd_tuser(0) <= \<const0>\;
  axi_str_txd_tvalid <= \<const0>\;
  mm2s_cntrl_reset_out_n <= \<const1>\;
  s2mm_prmry_reset_out_n <= \^s2mm_prmry_reset_out_n\;
  s_axi4_bresp(1) <= \<const0>\;
  s_axi4_bresp(0) <= \<const0>\;
  s_axi4_rresp(1) <= \<const0>\;
  s_axi4_rresp(0) <= \<const0>\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
COMP_IPIC2AXI_S: entity work.brd_axi_fifo_mm_s_0_1_ipic2axi_s
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => COMP_IPIF_n_59,
      Bus_RNW_reg_reg_0 => COMP_IPIF_n_37,
      Bus_RNW_reg_reg_1 => COMP_IPIF_n_32,
      Bus_RNW_reg_reg_2(12) => \sig_register_array[1]_0\(0),
      Bus_RNW_reg_reg_2(11) => \sig_register_array[1]_0\(1),
      Bus_RNW_reg_reg_2(10) => \sig_register_array[1]_0\(2),
      Bus_RNW_reg_reg_2(9) => \sig_register_array[1]_0\(3),
      Bus_RNW_reg_reg_2(8) => \sig_register_array[1]_0\(4),
      Bus_RNW_reg_reg_2(7) => \sig_register_array[1]_0\(5),
      Bus_RNW_reg_reg_2(6) => \sig_register_array[1]_0\(6),
      Bus_RNW_reg_reg_2(5) => \sig_register_array[1]_0\(7),
      Bus_RNW_reg_reg_2(4) => \sig_register_array[1]_0\(8),
      Bus_RNW_reg_reg_2(3) => \sig_register_array[1]_0\(9),
      Bus_RNW_reg_reg_2(2) => \sig_register_array[1]_0\(10),
      Bus_RNW_reg_reg_2(1) => \sig_register_array[1]_0\(11),
      Bus_RNW_reg_reg_2(0) => \sig_register_array[1]_0\(12),
      D(22) => sig_ip2bus_data_1(0),
      D(21) => sig_ip2bus_data_1(1),
      D(20) => sig_ip2bus_data_1(2),
      D(19) => sig_ip2bus_data_1(3),
      D(18) => sig_ip2bus_data_1(4),
      D(17) => sig_ip2bus_data_1(5),
      D(16) => sig_ip2bus_data_1(6),
      D(15) => sig_ip2bus_data_1(7),
      D(14) => sig_ip2bus_data_1(8),
      D(13) => sig_ip2bus_data_1(9),
      D(12) => sig_ip2bus_data_1(10),
      D(11) => sig_ip2bus_data_1(11),
      D(10) => sig_ip2bus_data_1(12),
      D(9) => sig_ip2bus_data_1(22),
      D(8) => sig_ip2bus_data_1(23),
      D(7) => sig_ip2bus_data_1(24),
      D(6) => sig_ip2bus_data_1(25),
      D(5) => sig_ip2bus_data_1(26),
      D(4) => sig_ip2bus_data_1(27),
      D(3) => sig_ip2bus_data_1(28),
      D(2) => sig_ip2bus_data_1(29),
      D(1) => sig_ip2bus_data_1(30),
      D(0) => sig_ip2bus_data_1(31),
      E(0) => COMP_IPIF_n_36,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => COMP_IPIF_n_41,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => COMP_IPIF_n_35,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\ => COMP_IPIF_n_31,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\ => COMP_IPIF_n_30,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_1\ => COMP_IPIF_n_34,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_2\ => COMP_IPIF_n_33,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => COMP_IPIF_n_55,
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ => COMP_IPIF_n_38,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => COMP_IPIF_n_28,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ => COMP_IPIF_n_56,
      IPIC_STATE => IPIC_STATE,
      Q(9 downto 0) => p_8_out(9 downto 0),
      SR(0) => COMP_IPIF_n_58,
      SS(0) => s_aresetn_a_c,
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      bus2ip_rnw_i_reg => COMP_IPIF_n_40,
      bus2ip_rnw_i_reg_0 => COMP_IPIF_n_39,
      cs_ce_clr => \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\,
      \gaxi_full_sm.r_valid_r1_reg\ => axi4_rvalid_int,
      \gpr1.dout_i_reg[22]\ => COMP_IPIC2AXI_S_n_5,
      interrupt => interrupt,
      mm2s_prmry_reset_out_n => mm2s_prmry_reset_out_n,
      \out\ => p_5_out,
      s2mm_prmry_reset_out_n => \^s2mm_prmry_reset_out_n\,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi4_rready => s_axi4_rready,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => \^s_axi_arready\,
      \s_axi_rdata_i_reg[31]\(31) => sig_ip2bus_data(0),
      \s_axi_rdata_i_reg[31]\(30) => sig_ip2bus_data(1),
      \s_axi_rdata_i_reg[31]\(29) => sig_ip2bus_data(2),
      \s_axi_rdata_i_reg[31]\(28) => sig_ip2bus_data(3),
      \s_axi_rdata_i_reg[31]\(27) => sig_ip2bus_data(4),
      \s_axi_rdata_i_reg[31]\(26) => sig_ip2bus_data(5),
      \s_axi_rdata_i_reg[31]\(25) => sig_ip2bus_data(6),
      \s_axi_rdata_i_reg[31]\(24) => sig_ip2bus_data(7),
      \s_axi_rdata_i_reg[31]\(23) => sig_ip2bus_data(8),
      \s_axi_rdata_i_reg[31]\(22) => sig_ip2bus_data(9),
      \s_axi_rdata_i_reg[31]\(21) => sig_ip2bus_data(10),
      \s_axi_rdata_i_reg[31]\(20) => sig_ip2bus_data(11),
      \s_axi_rdata_i_reg[31]\(19) => sig_ip2bus_data(12),
      \s_axi_rdata_i_reg[31]\(18) => sig_ip2bus_data(13),
      \s_axi_rdata_i_reg[31]\(17) => sig_ip2bus_data(14),
      \s_axi_rdata_i_reg[31]\(16) => sig_ip2bus_data(15),
      \s_axi_rdata_i_reg[31]\(15) => sig_ip2bus_data(16),
      \s_axi_rdata_i_reg[31]\(14) => sig_ip2bus_data(17),
      \s_axi_rdata_i_reg[31]\(13) => sig_ip2bus_data(18),
      \s_axi_rdata_i_reg[31]\(12) => sig_ip2bus_data(19),
      \s_axi_rdata_i_reg[31]\(11) => sig_ip2bus_data(20),
      \s_axi_rdata_i_reg[31]\(10) => sig_ip2bus_data(21),
      \s_axi_rdata_i_reg[31]\(9) => sig_ip2bus_data(22),
      \s_axi_rdata_i_reg[31]\(8) => sig_ip2bus_data(23),
      \s_axi_rdata_i_reg[31]\(7) => sig_ip2bus_data(24),
      \s_axi_rdata_i_reg[31]\(6) => sig_ip2bus_data(25),
      \s_axi_rdata_i_reg[31]\(5) => sig_ip2bus_data(26),
      \s_axi_rdata_i_reg[31]\(4) => sig_ip2bus_data(27),
      \s_axi_rdata_i_reg[31]\(3) => sig_ip2bus_data(28),
      \s_axi_rdata_i_reg[31]\(2) => sig_ip2bus_data(29),
      \s_axi_rdata_i_reg[31]\(1) => sig_ip2bus_data(30),
      \s_axi_rdata_i_reg[31]\(0) => sig_ip2bus_data(31),
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      s_axi_wready => \^s_axi_wready\,
      sig_Bus2IP_CS => sig_Bus2IP_CS,
      \sig_ip2bus_data_reg[0]_0\(12) => COMP_IPIC2AXI_S_n_32,
      \sig_ip2bus_data_reg[0]_0\(11) => COMP_IPIC2AXI_S_n_33,
      \sig_ip2bus_data_reg[0]_0\(10) => COMP_IPIC2AXI_S_n_34,
      \sig_ip2bus_data_reg[0]_0\(9) => COMP_IPIC2AXI_S_n_35,
      \sig_ip2bus_data_reg[0]_0\(8) => COMP_IPIC2AXI_S_n_36,
      \sig_ip2bus_data_reg[0]_0\(7) => COMP_IPIC2AXI_S_n_37,
      \sig_ip2bus_data_reg[0]_0\(6) => COMP_IPIC2AXI_S_n_38,
      \sig_ip2bus_data_reg[0]_0\(5) => COMP_IPIC2AXI_S_n_39,
      \sig_ip2bus_data_reg[0]_0\(4) => COMP_IPIC2AXI_S_n_40,
      \sig_ip2bus_data_reg[0]_0\(3) => COMP_IPIC2AXI_S_n_41,
      \sig_ip2bus_data_reg[0]_0\(2) => COMP_IPIC2AXI_S_n_42,
      \sig_ip2bus_data_reg[0]_0\(1) => COMP_IPIC2AXI_S_n_43,
      \sig_ip2bus_data_reg[0]_0\(0) => COMP_IPIC2AXI_S_n_44,
      \sig_ip2bus_data_reg[12]_0\ => COMP_IPIC2AXI_S_n_22,
      \sig_ip2bus_data_reg[22]_0\ => COMP_IPIC2AXI_S_n_20,
      \sig_ip2bus_data_reg[23]_0\ => COMP_IPIC2AXI_S_n_21,
      \sig_ip2bus_data_reg[24]_0\ => COMP_IPIC2AXI_S_n_23,
      \sig_ip2bus_data_reg[25]_0\ => COMP_IPIC2AXI_S_n_19,
      \sig_ip2bus_data_reg[26]_0\ => COMP_IPIC2AXI_S_n_7,
      \sig_ip2bus_data_reg[27]_0\ => COMP_IPIC2AXI_S_n_18,
      \sig_ip2bus_data_reg[28]_0\ => COMP_IPIC2AXI_S_n_30,
      \sig_ip2bus_data_reg[29]_0\ => COMP_IPIC2AXI_S_n_29,
      \sig_ip2bus_data_reg[9]_0\(5) => COMP_IPIC2AXI_S_n_83,
      \sig_ip2bus_data_reg[9]_0\(4) => COMP_IPIC2AXI_S_n_84,
      \sig_ip2bus_data_reg[9]_0\(3) => COMP_IPIC2AXI_S_n_85,
      \sig_ip2bus_data_reg[9]_0\(2) => COMP_IPIC2AXI_S_n_86,
      \sig_ip2bus_data_reg[9]_0\(1) => COMP_IPIC2AXI_S_n_87,
      \sig_ip2bus_data_reg[9]_0\(0) => COMP_IPIC2AXI_S_n_88,
      \sig_register_array[0]1_out\(0) => \sig_register_array[0]1_out\(4),
      \sig_register_array_reg[0][11]_0\ => COMP_IPIC2AXI_S_n_48,
      \sig_register_array_reg[0][12]_0\ => COMP_IPIC2AXI_S_n_45,
      \sig_register_array_reg[0][2]_0\ => COMP_IPIC2AXI_S_n_50,
      \sig_register_array_reg[0][5]_0\ => COMP_IPIC2AXI_S_n_27,
      \sig_register_array_reg[0][5]_1\ => COMP_IPIC2AXI_S_n_49,
      \sig_register_array_reg[0][7]_0\ => COMP_IPIC2AXI_S_n_47,
      \sig_register_array_reg[0][8]_0\ => COMP_IPIC2AXI_S_n_46,
      \sig_register_array_reg[1][0]_0\ => COMP_IPIC2AXI_S_n_28,
      sig_rx_channel_reset_reg_0 => COMP_IPIF_n_57,
      sig_str_rst_reg_0 => COMP_IPIC2AXI_S_n_24
    );
COMP_IPIF: entity work.brd_axi_fifo_mm_s_0_1_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(22) => sig_ip2bus_data_1(0),
      D(21) => sig_ip2bus_data_1(1),
      D(20) => sig_ip2bus_data_1(2),
      D(19) => sig_ip2bus_data_1(3),
      D(18) => sig_ip2bus_data_1(4),
      D(17) => sig_ip2bus_data_1(5),
      D(16) => sig_ip2bus_data_1(6),
      D(15) => sig_ip2bus_data_1(7),
      D(14) => sig_ip2bus_data_1(8),
      D(13) => sig_ip2bus_data_1(9),
      D(12) => sig_ip2bus_data_1(10),
      D(11) => sig_ip2bus_data_1(11),
      D(10) => sig_ip2bus_data_1(12),
      D(9) => sig_ip2bus_data_1(22),
      D(8) => sig_ip2bus_data_1(23),
      D(7) => sig_ip2bus_data_1(24),
      D(6) => sig_ip2bus_data_1(25),
      D(5) => sig_ip2bus_data_1(26),
      D(4) => sig_ip2bus_data_1(27),
      D(3) => sig_ip2bus_data_1(28),
      D(2) => sig_ip2bus_data_1(29),
      D(1) => sig_ip2bus_data_1(30),
      D(0) => sig_ip2bus_data_1(31),
      E(0) => COMP_IPIF_n_36,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      IP2Bus_RdAck_reg => COMP_IPIF_n_39,
      IP2Bus_RdAck_reg_0 => \^s_axi_arready\,
      IP2Bus_WrAck_reg => COMP_IPIF_n_40,
      IP2Bus_WrAck_reg_0 => \^s_axi_wready\,
      IPIC_STATE => IPIC_STATE,
      IPIC_STATE_reg => COMP_IPIC2AXI_S_n_24,
      Q(9 downto 0) => p_8_out(9 downto 0),
      SR(0) => COMP_IPIF_n_58,
      SS(0) => s_aresetn_a_c,
      \count_reg[0]\ => COMP_IPIC2AXI_S_n_29,
      \count_reg[1]\ => COMP_IPIC2AXI_S_n_30,
      \count_reg[8]\ => COMP_IPIC2AXI_S_n_22,
      cs_ce_clr => \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\,
      \goreg_dm.dout_i_reg[22]\(5) => COMP_IPIC2AXI_S_n_83,
      \goreg_dm.dout_i_reg[22]\(4) => COMP_IPIC2AXI_S_n_84,
      \goreg_dm.dout_i_reg[22]\(3) => COMP_IPIC2AXI_S_n_85,
      \goreg_dm.dout_i_reg[22]\(2) => COMP_IPIC2AXI_S_n_86,
      \goreg_dm.dout_i_reg[22]\(1) => COMP_IPIC2AXI_S_n_87,
      \goreg_dm.dout_i_reg[22]\(0) => COMP_IPIC2AXI_S_n_88,
      \goreg_dm.dout_i_reg[4]\ => COMP_IPIC2AXI_S_n_18,
      \goreg_dm.dout_i_reg[5]\ => COMP_IPIC2AXI_S_n_7,
      \goreg_dm.dout_i_reg[6]\ => COMP_IPIC2AXI_S_n_19,
      \goreg_dm.dout_i_reg[7]\ => COMP_IPIC2AXI_S_n_23,
      \goreg_dm.dout_i_reg[9]\ => COMP_IPIC2AXI_S_n_20,
      \out\ => p_5_out,
      s2mm_prmry_reset_out_n => \^s2mm_prmry_reset_out_n\,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(5 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(5 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(12 downto 0) => s_axi_wdata(31 downto 19),
      s_axi_wdata_3_sp_1 => COMP_IPIC2AXI_S_n_27,
      s_axi_wdata_6_sp_1 => COMP_IPIC2AXI_S_n_28,
      s_axi_wvalid => s_axi_wvalid,
      sig_Bus2IP_CS => sig_Bus2IP_CS,
      \sig_ip2bus_data_reg[0]\ => COMP_IPIF_n_56,
      \sig_ip2bus_data_reg[0]_0\(31) => sig_ip2bus_data(0),
      \sig_ip2bus_data_reg[0]_0\(30) => sig_ip2bus_data(1),
      \sig_ip2bus_data_reg[0]_0\(29) => sig_ip2bus_data(2),
      \sig_ip2bus_data_reg[0]_0\(28) => sig_ip2bus_data(3),
      \sig_ip2bus_data_reg[0]_0\(27) => sig_ip2bus_data(4),
      \sig_ip2bus_data_reg[0]_0\(26) => sig_ip2bus_data(5),
      \sig_ip2bus_data_reg[0]_0\(25) => sig_ip2bus_data(6),
      \sig_ip2bus_data_reg[0]_0\(24) => sig_ip2bus_data(7),
      \sig_ip2bus_data_reg[0]_0\(23) => sig_ip2bus_data(8),
      \sig_ip2bus_data_reg[0]_0\(22) => sig_ip2bus_data(9),
      \sig_ip2bus_data_reg[0]_0\(21) => sig_ip2bus_data(10),
      \sig_ip2bus_data_reg[0]_0\(20) => sig_ip2bus_data(11),
      \sig_ip2bus_data_reg[0]_0\(19) => sig_ip2bus_data(12),
      \sig_ip2bus_data_reg[0]_0\(18) => sig_ip2bus_data(13),
      \sig_ip2bus_data_reg[0]_0\(17) => sig_ip2bus_data(14),
      \sig_ip2bus_data_reg[0]_0\(16) => sig_ip2bus_data(15),
      \sig_ip2bus_data_reg[0]_0\(15) => sig_ip2bus_data(16),
      \sig_ip2bus_data_reg[0]_0\(14) => sig_ip2bus_data(17),
      \sig_ip2bus_data_reg[0]_0\(13) => sig_ip2bus_data(18),
      \sig_ip2bus_data_reg[0]_0\(12) => sig_ip2bus_data(19),
      \sig_ip2bus_data_reg[0]_0\(11) => sig_ip2bus_data(20),
      \sig_ip2bus_data_reg[0]_0\(10) => sig_ip2bus_data(21),
      \sig_ip2bus_data_reg[0]_0\(9) => sig_ip2bus_data(22),
      \sig_ip2bus_data_reg[0]_0\(8) => sig_ip2bus_data(23),
      \sig_ip2bus_data_reg[0]_0\(7) => sig_ip2bus_data(24),
      \sig_ip2bus_data_reg[0]_0\(6) => sig_ip2bus_data(25),
      \sig_ip2bus_data_reg[0]_0\(5) => sig_ip2bus_data(26),
      \sig_ip2bus_data_reg[0]_0\(4) => sig_ip2bus_data(27),
      \sig_ip2bus_data_reg[0]_0\(3) => sig_ip2bus_data(28),
      \sig_ip2bus_data_reg[0]_0\(2) => sig_ip2bus_data(29),
      \sig_ip2bus_data_reg[0]_0\(1) => sig_ip2bus_data(30),
      \sig_ip2bus_data_reg[0]_0\(0) => sig_ip2bus_data(31),
      \sig_ip2bus_data_reg[21]\ => COMP_IPIF_n_55,
      \sig_ip2bus_data_reg[26]\ => COMP_IPIF_n_28,
      \sig_register_array[0]1_out\(0) => \sig_register_array[0]1_out\(4),
      \sig_register_array_reg[0][11]\ => COMP_IPIF_n_34,
      \sig_register_array_reg[0][11]_0\ => COMP_IPIC2AXI_S_n_48,
      \sig_register_array_reg[0][12]\ => COMP_IPIF_n_33,
      \sig_register_array_reg[0][12]_0\ => COMP_IPIC2AXI_S_n_45,
      \sig_register_array_reg[0][2]\ => COMP_IPIF_n_31,
      \sig_register_array_reg[0][2]_0\ => COMP_IPIC2AXI_S_n_50,
      \sig_register_array_reg[0][5]\ => COMP_IPIF_n_30,
      \sig_register_array_reg[0][5]_0\ => COMP_IPIC2AXI_S_n_49,
      \sig_register_array_reg[0][7]\ => COMP_IPIF_n_41,
      \sig_register_array_reg[0][7]_0\ => COMP_IPIC2AXI_S_n_47,
      \sig_register_array_reg[0][8]\ => COMP_IPIF_n_32,
      \sig_register_array_reg[0][8]_0\ => COMP_IPIF_n_35,
      \sig_register_array_reg[0][8]_1\ => COMP_IPIC2AXI_S_n_46,
      \sig_register_array_reg[1][0]\ => COMP_IPIF_n_37,
      \sig_register_array_reg[1][0]_0\ => COMP_IPIF_n_38,
      \sig_register_array_reg[1][0]_1\(12) => \sig_register_array[1]_0\(0),
      \sig_register_array_reg[1][0]_1\(11) => \sig_register_array[1]_0\(1),
      \sig_register_array_reg[1][0]_1\(10) => \sig_register_array[1]_0\(2),
      \sig_register_array_reg[1][0]_1\(9) => \sig_register_array[1]_0\(3),
      \sig_register_array_reg[1][0]_1\(8) => \sig_register_array[1]_0\(4),
      \sig_register_array_reg[1][0]_1\(7) => \sig_register_array[1]_0\(5),
      \sig_register_array_reg[1][0]_1\(6) => \sig_register_array[1]_0\(6),
      \sig_register_array_reg[1][0]_1\(5) => \sig_register_array[1]_0\(7),
      \sig_register_array_reg[1][0]_1\(4) => \sig_register_array[1]_0\(8),
      \sig_register_array_reg[1][0]_1\(3) => \sig_register_array[1]_0\(9),
      \sig_register_array_reg[1][0]_1\(2) => \sig_register_array[1]_0\(10),
      \sig_register_array_reg[1][0]_1\(1) => \sig_register_array[1]_0\(11),
      \sig_register_array_reg[1][0]_1\(0) => \sig_register_array[1]_0\(12),
      \sig_register_array_reg[1][0]_2\(12) => COMP_IPIC2AXI_S_n_32,
      \sig_register_array_reg[1][0]_2\(11) => COMP_IPIC2AXI_S_n_33,
      \sig_register_array_reg[1][0]_2\(10) => COMP_IPIC2AXI_S_n_34,
      \sig_register_array_reg[1][0]_2\(9) => COMP_IPIC2AXI_S_n_35,
      \sig_register_array_reg[1][0]_2\(8) => COMP_IPIC2AXI_S_n_36,
      \sig_register_array_reg[1][0]_2\(7) => COMP_IPIC2AXI_S_n_37,
      \sig_register_array_reg[1][0]_2\(6) => COMP_IPIC2AXI_S_n_38,
      \sig_register_array_reg[1][0]_2\(5) => COMP_IPIC2AXI_S_n_39,
      \sig_register_array_reg[1][0]_2\(4) => COMP_IPIC2AXI_S_n_40,
      \sig_register_array_reg[1][0]_2\(3) => COMP_IPIC2AXI_S_n_41,
      \sig_register_array_reg[1][0]_2\(2) => COMP_IPIC2AXI_S_n_42,
      \sig_register_array_reg[1][0]_2\(1) => COMP_IPIC2AXI_S_n_43,
      \sig_register_array_reg[1][0]_2\(0) => COMP_IPIC2AXI_S_n_44,
      sig_rx_channel_reset_reg => COMP_IPIF_n_57,
      sig_rx_channel_reset_reg_0 => COMP_IPIC2AXI_S_n_21,
      sig_rx_channel_reset_reg_1 => COMP_IPIC2AXI_S_n_5,
      sig_str_rst_reg => COMP_IPIF_n_59
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\gaxif.COMP_AXI4\: entity work.brd_axi_fifo_mm_s_0_1_axi_wrapper
     port map (
      \FSM_sequential_gaxi_full_sm.present_state_reg[1]\ => s_axi4_awready,
      SS(0) => s_aresetn_a_c,
      \gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]\ => s_axi4_bvalid,
      \out\ => axi4_rvalid_int,
      s_axi4_araddr(31 downto 0) => s_axi4_araddr(31 downto 0),
      s_axi4_arid(0) => s_axi4_arid(0),
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arready => s_axi4_arready,
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_awaddr(31 downto 0) => s_axi4_awaddr(31 downto 0),
      s_axi4_awlen(7 downto 0) => s_axi4_awlen(7 downto 0),
      s_axi4_awvalid => s_axi4_awvalid,
      s_axi4_bid(0) => s_axi4_bid(0),
      s_axi4_bready => s_axi4_bready,
      s_axi4_rid(0) => s_axi4_rid(0),
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rvalid => s_axi4_rvalid,
      s_axi4_wready => s_axi4_wready,
      s_axi4_wvalid => s_axi4_wvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_axi_fifo_mm_s_0_1 is
  port (
    interrupt : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arlock : in STD_LOGIC;
    s_axi4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    axi_str_rxd_tlast : in STD_LOGIC;
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of brd_axi_fifo_mm_s_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of brd_axi_fifo_mm_s_0_1 : entity is "brd_axi_fifo_mm_s_0_1,axi_fifo_mm_s,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of brd_axi_fifo_mm_s_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of brd_axi_fifo_mm_s_0_1 : entity is "axi_fifo_mm_s,Vivado 2018.1";
end brd_axi_fifo_mm_s_0_1;

architecture STRUCTURE of brd_axi_fifo_mm_s_0_1 is
  signal NLW_U0_axi_str_txc_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_str_txc_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_str_txd_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_str_txd_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_mm2s_cntrl_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_str_txc_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_axi_str_txc_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txc_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txc_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txc_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txc_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txd_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_axi_str_txd_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txd_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txd_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txd_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txd_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi4_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi4_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_AXI4_BASEADDR : integer;
  attribute C_AXI4_BASEADDR of U0 : label is 1136721920;
  attribute C_AXI4_HIGHADDR : integer;
  attribute C_AXI4_HIGHADDR of U0 : label is 1136787455;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_BASEADDR : integer;
  attribute C_BASEADDR of U0 : label is 1136656384;
  attribute C_DATA_INTERFACE_TYPE : integer;
  attribute C_DATA_INTERFACE_TYPE of U0 : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 0;
  attribute C_HIGHADDR : integer;
  attribute C_HIGHADDR of U0 : label is 1136721919;
  attribute C_RX_FIFO_DEPTH : integer;
  attribute C_RX_FIFO_DEPTH of U0 : label is 512;
  attribute C_RX_FIFO_PE_THRESHOLD : integer;
  attribute C_RX_FIFO_PE_THRESHOLD of U0 : label is 2;
  attribute C_RX_FIFO_PF_THRESHOLD : integer;
  attribute C_RX_FIFO_PF_THRESHOLD of U0 : label is 507;
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_TX_FIFO_DEPTH : integer;
  attribute C_TX_FIFO_DEPTH of U0 : label is 512;
  attribute C_TX_FIFO_PE_THRESHOLD : integer;
  attribute C_TX_FIFO_PE_THRESHOLD of U0 : label is 2;
  attribute C_TX_FIFO_PF_THRESHOLD : integer;
  attribute C_TX_FIFO_PF_THRESHOLD of U0 : label is 507;
  attribute C_USE_RX_CUT_THROUGH : integer;
  attribute C_USE_RX_CUT_THROUGH of U0 : label is 1;
  attribute C_USE_RX_DATA : integer;
  attribute C_USE_RX_DATA of U0 : label is 1;
  attribute C_USE_TX_CTRL : integer;
  attribute C_USE_TX_CTRL of U0 : label is 0;
  attribute C_USE_TX_CUT_THROUGH : integer;
  attribute C_USE_TX_CUT_THROUGH of U0 : label is 0;
  attribute C_USE_TX_DATA : integer;
  attribute C_USE_TX_DATA of U0 : label is 0;
  attribute x_interface_info : string;
  attribute x_interface_info of axi_str_rxd_tlast : signal is "xilinx.com:interface:axis:1.0 AXI_STR_RXD TLAST";
  attribute x_interface_info of axi_str_rxd_tready : signal is "xilinx.com:interface:axis:1.0 AXI_STR_RXD TREADY";
  attribute x_interface_info of axi_str_rxd_tvalid : signal is "xilinx.com:interface:axis:1.0 AXI_STR_RXD TVALID";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of axi_str_rxd_tvalid : signal is "XIL_INTERFACENAME AXI_STR_RXD, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute x_interface_info of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt_intf INTERRUPT";
  attribute x_interface_parameter of interrupt : signal is "XIL_INTERFACENAME interrupt_intf, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of s2mm_prmry_reset_out_n : signal is "xilinx.com:signal:reset:1.0 rst_axi_str_rxd RST";
  attribute x_interface_parameter of s2mm_prmry_reset_out_n : signal is "XIL_INTERFACENAME rst_axi_str_rxd, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi4_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARLOCK";
  attribute x_interface_info of s_axi4_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARREADY";
  attribute x_interface_info of s_axi4_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARVALID";
  attribute x_interface_info of s_axi4_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL RLAST";
  attribute x_interface_info of s_axi4_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL RREADY";
  attribute x_interface_info of s_axi4_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL RVALID";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 aclk_s_axi CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME aclk_s_axi, ASSOCIATED_BUSIF S_AXI:S_AXI_FULL:AXI_STR_TXD:AXI_STR_TXC:AXI_STR_RXD, ASSOCIATED_RESET s_axi_aresetn:mm2s_prmry_reset_out_n:mm2s_cntrl_reset_out_n:s2mm_prmry_reset_out_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 rst_s_axi RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME rst_s_axi, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of axi_str_rxd_tdata : signal is "xilinx.com:interface:axis:1.0 AXI_STR_RXD TDATA";
  attribute x_interface_info of s_axi4_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARADDR";
  attribute x_interface_info of s_axi4_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARBURST";
  attribute x_interface_info of s_axi4_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARCACHE";
  attribute x_interface_info of s_axi4_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARID";
  attribute x_interface_parameter of s_axi4_arid : signal is "XIL_INTERFACENAME S_AXI_FULL, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi4_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARLEN";
  attribute x_interface_info of s_axi4_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARPROT";
  attribute x_interface_info of s_axi4_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARSIZE";
  attribute x_interface_info of s_axi4_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL RDATA";
  attribute x_interface_info of s_axi4_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL RID";
  attribute x_interface_info of s_axi4_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_FULL RRESP";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
U0: entity work.brd_axi_fifo_mm_s_0_1_axi_fifo_mm_s
     port map (
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tdest(3 downto 0) => B"0000",
      axi_str_rxd_tid(3 downto 0) => B"0000",
      axi_str_rxd_tkeep(3 downto 0) => B"0000",
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tstrb(3 downto 0) => B"0000",
      axi_str_rxd_tuser(3 downto 0) => B"0000",
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      axi_str_txc_tdata(31 downto 0) => NLW_U0_axi_str_txc_tdata_UNCONNECTED(31 downto 0),
      axi_str_txc_tdest(3 downto 0) => NLW_U0_axi_str_txc_tdest_UNCONNECTED(3 downto 0),
      axi_str_txc_tid(3 downto 0) => NLW_U0_axi_str_txc_tid_UNCONNECTED(3 downto 0),
      axi_str_txc_tkeep(3 downto 0) => NLW_U0_axi_str_txc_tkeep_UNCONNECTED(3 downto 0),
      axi_str_txc_tlast => NLW_U0_axi_str_txc_tlast_UNCONNECTED,
      axi_str_txc_tready => '0',
      axi_str_txc_tstrb(3 downto 0) => NLW_U0_axi_str_txc_tstrb_UNCONNECTED(3 downto 0),
      axi_str_txc_tuser(3 downto 0) => NLW_U0_axi_str_txc_tuser_UNCONNECTED(3 downto 0),
      axi_str_txc_tvalid => NLW_U0_axi_str_txc_tvalid_UNCONNECTED,
      axi_str_txd_tdata(31 downto 0) => NLW_U0_axi_str_txd_tdata_UNCONNECTED(31 downto 0),
      axi_str_txd_tdest(3 downto 0) => NLW_U0_axi_str_txd_tdest_UNCONNECTED(3 downto 0),
      axi_str_txd_tid(3 downto 0) => NLW_U0_axi_str_txd_tid_UNCONNECTED(3 downto 0),
      axi_str_txd_tkeep(3 downto 0) => NLW_U0_axi_str_txd_tkeep_UNCONNECTED(3 downto 0),
      axi_str_txd_tlast => NLW_U0_axi_str_txd_tlast_UNCONNECTED,
      axi_str_txd_tready => '0',
      axi_str_txd_tstrb(3 downto 0) => NLW_U0_axi_str_txd_tstrb_UNCONNECTED(3 downto 0),
      axi_str_txd_tuser(3 downto 0) => NLW_U0_axi_str_txd_tuser_UNCONNECTED(3 downto 0),
      axi_str_txd_tvalid => NLW_U0_axi_str_txd_tvalid_UNCONNECTED,
      interrupt => interrupt,
      mm2s_cntrl_reset_out_n => NLW_U0_mm2s_cntrl_reset_out_n_UNCONNECTED,
      mm2s_prmry_reset_out_n => NLW_U0_mm2s_prmry_reset_out_n_UNCONNECTED,
      s2mm_prmry_reset_out_n => s2mm_prmry_reset_out_n,
      s_axi4_araddr(31 downto 0) => s_axi4_araddr(31 downto 0),
      s_axi4_arburst(1 downto 0) => s_axi4_arburst(1 downto 0),
      s_axi4_arcache(3 downto 0) => s_axi4_arcache(3 downto 0),
      s_axi4_arid(0) => s_axi4_arid(0),
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arlock => s_axi4_arlock,
      s_axi4_arprot(2 downto 0) => s_axi4_arprot(2 downto 0),
      s_axi4_arready => s_axi4_arready,
      s_axi4_arsize(2 downto 0) => s_axi4_arsize(2 downto 0),
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi4_awburst(1 downto 0) => B"00",
      s_axi4_awcache(3 downto 0) => B"0000",
      s_axi4_awid(0) => '0',
      s_axi4_awlen(7 downto 0) => B"00000000",
      s_axi4_awlock => '0',
      s_axi4_awprot(2 downto 0) => B"000",
      s_axi4_awready => NLW_U0_s_axi4_awready_UNCONNECTED,
      s_axi4_awsize(2 downto 0) => B"000",
      s_axi4_awvalid => '0',
      s_axi4_bid(0) => NLW_U0_s_axi4_bid_UNCONNECTED(0),
      s_axi4_bready => '0',
      s_axi4_bresp(1 downto 0) => NLW_U0_s_axi4_bresp_UNCONNECTED(1 downto 0),
      s_axi4_bvalid => NLW_U0_s_axi4_bvalid_UNCONNECTED,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi4_rid(0) => s_axi4_rid(0),
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rresp(1 downto 0) => s_axi4_rresp(1 downto 0),
      s_axi4_rvalid => s_axi4_rvalid,
      s_axi4_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi4_wlast => '0',
      s_axi4_wready => NLW_U0_s_axi4_wready_UNCONNECTED,
      s_axi4_wstrb(3 downto 0) => B"0000",
      s_axi4_wvalid => '0',
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
