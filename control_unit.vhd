library ieee;
use ieee.std_logic_1164.all;

entity control_unit is
    port(
        CLK, RST, NEW_DATA_VALID : in  std_logic;
        DATA_OUT_VALID, SHIFT_EN : out std_logic
    );
end entity control_unit;

architecture behavioral of control_unit is
    signal data_count : integer range 0 to 4 := 0;
begin
    process(CLK, RST)
    begin
        if RST = '1' then
            data_count <= 0;
            SHIFT_EN <= '0';
            DATA_OUT_VALID <= '0';
        elsif rising_edge(CLK) then
            if NEW_DATA_VALID = '1' then
                SHIFT_EN <= '1';
                if data_count < 4 then
                    data_count <= data_count + 1;
                end if;
            else
                SHIFT_EN <= '0';
            end if;

            if data_count = 4 then
                DATA_OUT_VALID <= '1';
            else
                DATA_OUT_VALID <= '0';
            end if;
        end if;
    end process;
end architecture behavioral;