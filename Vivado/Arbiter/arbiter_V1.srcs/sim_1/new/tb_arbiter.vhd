LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ARBITER_TEST IS
END ARBITER_TEST;

ARCHITECTURE behavior OF ARBITER_TEST IS
  -- Component Declaration for the Unit Under Test (UUT)
  COMPONENT ARBITER_NEW
    PORT(
      RST_N : IN std_logic;
      CLOCK : IN std_logic;
      RST_DONE : OUT std_logic;
      RD_EN_C1 : IN std_logic;
      WR_EN_C1 : IN std_logic;
      RD_ADDR_C1 : IN std_logic_vector(3 downto 0);
      WR_ADDR_C1 : IN std_logic_vector(3 downto 0);
      WR_DATA_C1 : IN std_logic_vector(7 downto 0);
      DATA_IN_C2 : IN std_logic_vector(7 downto 0);
      REQUEST_C2 : IN std_logic;
      RD_NOT_WRITE_C2 : IN std_logic;
      ADDR_C2 : IN std_logic_vector(3 downto 0);
      RD_DATA_C1 : OUT std_logic_vector(7 downto 0);
      DATA_OUT_C2 : OUT std_logic_vector(7 downto 0);
      ACK_C2 : OUT std_logic;
      RD_EN : OUT std_logic;
      WR_EN : OUT std_logic;
      WR_ADDR : OUT std_logic_vector(3 downto 0);
      RD_ADDR : OUT std_logic_vector(3 downto 0);
      WR_DATA : OUT std_logic_vector(7 downto 0);
      RD_DATA : IN std_logic_vector(7 downto 0)
    );
  END COMPONENT;

  -- Inputs
  signal RST_N : std_logic := '0';
  signal CLOCK : std_logic := '0';
  signal RD_EN_C1 : std_logic := '0';
  signal WR_EN_C1 : std_logic := '0';
  signal RD_ADDR_C1 : std_logic_vector(3 downto 0) := (others => '0');
  signal WR_ADDR_C1 : std_logic_vector(3 downto 0) := (others => '0');
  signal WR_DATA_C1 : std_logic_vector(7 downto 0) := (others => '0');
  signal DATA_IN_C2 : std_logic_vector(7 downto 0) := (others => '0');
  signal REQUEST_C2 : std_logic := '0';
  signal RD_NOT_WRITE_C2 : std_logic := '0';
  signal ADDR_C2 : std_logic_vector(3 downto 0) := (others => '0');
  signal RD_DATA : std_logic_vector(7 downto 0) := (others => '0');

  -- Outputs
  signal RST_DONE : std_logic;
  signal RD_DATA_C1 : std_logic_vector(7 downto 0);
  signal DATA_OUT_C2 : std_logic_vector(7 downto 0);
  signal ACK_C2 : std_logic;

  signal RD_EN : std_logic;
  signal WR_EN : std_logic;
  signal WR_ADDR : std_logic_vector(3 downto 0);
  signal RD_ADDR : std_logic_vector(3 downto 0);
  signal WR_DATA : std_logic_vector(7 downto 0);

  -- Clock period definitions
  constant CLOCK_period : time := 100 ns;

BEGIN
  -- Instantiate the Unit Under Test (UUT)
  uut: ARBITER_NEW
    PORT MAP (
      RST_N => RST_N,
      CLOCK => CLOCK,
      RST_DONE => RST_DONE,
      RD_EN_C1 => RD_EN_C1,
      WR_EN_C1 => WR_EN_C1,
      RD_ADDR_C1 => RD_ADDR_C1,
      WR_ADDR_C1 => WR_ADDR_C1,
      WR_DATA_C1 => WR_DATA_C1,
      DATA_IN_C2 => DATA_IN_C2,
      REQUEST_C2 => REQUEST_C2,
      RD_NOT_WRITE_C2 => RD_NOT_WRITE_C2,
      ADDR_C2 => ADDR_C2,
      RD_DATA_C1 => RD_DATA_C1,
      DATA_OUT_C2 => DATA_OUT_C2,
      ACK_C2 => ACK_C2,
      RD_EN => RD_EN,
      WR_EN => WR_EN,
      WR_ADDR => WR_ADDR,
      RD_ADDR => RD_ADDR,
      WR_DATA => WR_DATA,
      RD_DATA => RD_DATA
    );

  -- Clock process definitions
  CLOCK_process: process
  begin
    CLOCK <= '0';
    wait for CLOCK_period/2;
    CLOCK <= '1';
    wait for CLOCK_period/2;
  end process;

  -- Stimulus process
  stim_proc: process
  begin
-- test case 1   
-- RST_N <= '1';
--    wait for 500 ns;

--    WR_EN_C1 <= '1';
--    WRADDR_C1 <= "1010";
--    WRDATA_C1 <= "10100011";
-- test case 2
--RST_N<='1';
--wait for 500 ns;
--WR_EN_C1<= '1';
--WRADDR_C1 <="1010";
--WRDATA_C1 <="10100011";
--wait for 1700 ns;
--WR_EN_C1<= '0';
--RD_EN_C1<= '1';
--RDADDR_C1 <="1010";

---------------------------------------------

    -- Hold reset state for 100 ns.
    wait for 100 ns;

    -- Add more test cases here...
 RST_N <= '1';
    wait for 500 ns;
    WR_EN_C1 <= '1';
    WR_ADDR_C1 <= "1010";
    WR_DATA_C1 <= "10100011";
    -- End simulation after running test cases
    wait;

  end process;

END ARCHITECTURE behavior;
