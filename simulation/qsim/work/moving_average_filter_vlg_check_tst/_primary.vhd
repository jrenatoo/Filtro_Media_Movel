library verilog;
use verilog.vl_types.all;
entity moving_average_filter_vlg_check_tst is
    port(
        DATA_OUT        : in     vl_logic_vector(7 downto 0);
        DATA_OUT_VALID  : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end moving_average_filter_vlg_check_tst;
