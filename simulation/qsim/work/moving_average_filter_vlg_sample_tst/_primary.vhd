library verilog;
use verilog.vl_types.all;
entity moving_average_filter_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        DATA_IN         : in     vl_logic_vector(7 downto 0);
        NEW_DATA_VALID  : in     vl_logic;
        RST             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end moving_average_filter_vlg_sample_tst;
