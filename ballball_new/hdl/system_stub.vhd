-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    CPU_RESET_I : in std_logic;
    CLK_I : in std_logic;
    axi_uartlite_0_RX_pin : in std_logic;
    axi_uartlite_0_TX_pin : out std_logic;
    xps_tft_0_TFT_HSYNC_pin : out std_logic;
    xps_tft_0_TFT_VSYNC_pin : out std_logic;
    xps_tft_0_TFT_VGA_R_pin : out std_logic_vector(3 downto 0);
    xps_tft_0_TFT_VGA_G_pin : out std_logic_vector(3 downto 0);
    xps_tft_0_TFT_VGA_B_pin : out std_logic_vector(3 downto 0);
    d_shared_mem_bus_0_PSRAM_Mem_CLK_O_pin : out std_logic;
    d_shared_mem_bus_0_PSRAM_Mem_CEN_O_pin : out std_logic;
    d_shared_mem_bus_0_PSRAM_Mem_CRE_O_pin : out std_logic;
    d_shared_mem_bus_0_Mem_OEN_O_pin : out std_logic;
    d_shared_mem_bus_0_Mem_WEN_O_pin : out std_logic;
    d_shared_mem_bus_0_Mem_DQ_pin : inout std_logic_vector(0 to 15);
    d_shared_mem_bus_0_PSRAM_Mem_UB_O_pin : out std_logic;
    d_shared_mem_bus_0_PSRAM_Mem_LB_O_pin : out std_logic;
    d_shared_mem_bus_0_Mem_Addr_O_pin : out std_logic_vector(22 downto 0);
    xps_ps2_0_PS2_1_DATA : inout std_logic;
    xps_ps2_0_PS2_1_CLK : inout std_logic;
    pwm_out : out std_logic;
    pwm_sd : out std_logic;
    Dip_GPIO_IO_I_pin : in std_logic_vector(3 downto 0)
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      CPU_RESET_I : in std_logic;
      CLK_I : in std_logic;
      axi_uartlite_0_RX_pin : in std_logic;
      axi_uartlite_0_TX_pin : out std_logic;
      xps_tft_0_TFT_HSYNC_pin : out std_logic;
      xps_tft_0_TFT_VSYNC_pin : out std_logic;
      xps_tft_0_TFT_VGA_R_pin : out std_logic_vector(3 downto 0);
      xps_tft_0_TFT_VGA_G_pin : out std_logic_vector(3 downto 0);
      xps_tft_0_TFT_VGA_B_pin : out std_logic_vector(3 downto 0);
      d_shared_mem_bus_0_PSRAM_Mem_CLK_O_pin : out std_logic;
      d_shared_mem_bus_0_PSRAM_Mem_CEN_O_pin : out std_logic;
      d_shared_mem_bus_0_PSRAM_Mem_CRE_O_pin : out std_logic;
      d_shared_mem_bus_0_Mem_OEN_O_pin : out std_logic;
      d_shared_mem_bus_0_Mem_WEN_O_pin : out std_logic;
      d_shared_mem_bus_0_Mem_DQ_pin : inout std_logic_vector(0 to 15);
      d_shared_mem_bus_0_PSRAM_Mem_UB_O_pin : out std_logic;
      d_shared_mem_bus_0_PSRAM_Mem_LB_O_pin : out std_logic;
      d_shared_mem_bus_0_Mem_Addr_O_pin : out std_logic_vector(22 downto 0);
      xps_ps2_0_PS2_1_DATA : inout std_logic;
      xps_ps2_0_PS2_1_CLK : inout std_logic;
      pwm_out : out std_logic;
      pwm_sd : out std_logic;
      Dip_GPIO_IO_I_pin : in std_logic_vector(3 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      CPU_RESET_I => CPU_RESET_I,
      CLK_I => CLK_I,
      axi_uartlite_0_RX_pin => axi_uartlite_0_RX_pin,
      axi_uartlite_0_TX_pin => axi_uartlite_0_TX_pin,
      xps_tft_0_TFT_HSYNC_pin => xps_tft_0_TFT_HSYNC_pin,
      xps_tft_0_TFT_VSYNC_pin => xps_tft_0_TFT_VSYNC_pin,
      xps_tft_0_TFT_VGA_R_pin => xps_tft_0_TFT_VGA_R_pin,
      xps_tft_0_TFT_VGA_G_pin => xps_tft_0_TFT_VGA_G_pin,
      xps_tft_0_TFT_VGA_B_pin => xps_tft_0_TFT_VGA_B_pin,
      d_shared_mem_bus_0_PSRAM_Mem_CLK_O_pin => d_shared_mem_bus_0_PSRAM_Mem_CLK_O_pin,
      d_shared_mem_bus_0_PSRAM_Mem_CEN_O_pin => d_shared_mem_bus_0_PSRAM_Mem_CEN_O_pin,
      d_shared_mem_bus_0_PSRAM_Mem_CRE_O_pin => d_shared_mem_bus_0_PSRAM_Mem_CRE_O_pin,
      d_shared_mem_bus_0_Mem_OEN_O_pin => d_shared_mem_bus_0_Mem_OEN_O_pin,
      d_shared_mem_bus_0_Mem_WEN_O_pin => d_shared_mem_bus_0_Mem_WEN_O_pin,
      d_shared_mem_bus_0_Mem_DQ_pin => d_shared_mem_bus_0_Mem_DQ_pin,
      d_shared_mem_bus_0_PSRAM_Mem_UB_O_pin => d_shared_mem_bus_0_PSRAM_Mem_UB_O_pin,
      d_shared_mem_bus_0_PSRAM_Mem_LB_O_pin => d_shared_mem_bus_0_PSRAM_Mem_LB_O_pin,
      d_shared_mem_bus_0_Mem_Addr_O_pin => d_shared_mem_bus_0_Mem_Addr_O_pin,
      xps_ps2_0_PS2_1_DATA => xps_ps2_0_PS2_1_DATA,
      xps_ps2_0_PS2_1_CLK => xps_ps2_0_PS2_1_CLK,
      pwm_out => pwm_out,
      pwm_sd => pwm_sd,
      Dip_GPIO_IO_I_pin => Dip_GPIO_IO_I_pin
    );

end architecture STRUCTURE;

