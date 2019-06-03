onerror {resume}
quietly WaveActivateNextPane {} 0

#
# Top Level Signals
#
add wave -noupdate -divider {Mes Noc}
add wave -noupdate -expand -group {Mes Noc Top} /mes_noc_tb/clk
add wave -noupdate -expand -group {Mes Noc Top} /mes_noc_tb/reset_n
add wave -noupdate -expand -group {Mes Noc Top} /mes_noc_tb/uart_rx_in
add wave -noupdate -expand -group {Mes Noc Top} /mes_noc_tb/uart_tx_out
add wave -noupdate -expand -group {Mes Noc Top} /mes_noc_tb/failure_out
add wave -noupdate -expand -group {Mes Noc Top} /mes_noc_tb/clk
add wave -noupdate -expand -group {Mes Noc Top} /mes_noc_tb/reset_n
add wave -noupdate -expand -group {Mes Noc Top} /mes_noc_tb/uart_rx_in
add wave -noupdate -expand -group {Mes Noc Top} /mes_noc_tb/uart_tx_out
add wave -noupdate -expand -group {Mes Noc Top} /mes_noc_tb/failure_out

#
# PLL
#
add wave -noupdate -divider {PLL}
add wave -noupdate -expand -group {PLL} /mes_noc_tb/dut/clk_ip
add wave -noupdate -expand -group {PLL} /mes_noc_tb/dut/clk_noc

#
# UART SIM
#
add wave -noupdate -divider {uart SIM}
add wave -noupdate -expand -group {UART SIM} -label clk                   /mes_noc_tb/dut/master_tg/MASTERGEN1/sim/uart_sim_inst/clk
add wave -noupdate -expand -group {UART SIM} -label data_in               /mes_noc_tb/dut/master_tg/MASTERGEN1/sim/uart_sim_inst/data_in
add wave -noupdate -expand -group {UART SIM} -label re_in                 /mes_noc_tb/dut/master_tg/MASTERGEN1/sim/uart_sim_inst/re_in
add wave -noupdate -expand -group {UART SIM} -label rst_n                 /mes_noc_tb/dut/master_tg/MASTERGEN1/sim/uart_sim_inst/rst_n
add wave -noupdate -expand -group {UART SIM} -label rx_in                 /mes_noc_tb/dut/master_tg/MASTERGEN1/sim/uart_sim_inst/rx_in
add wave -noupdate -expand -group {UART SIM} -label we_in                 /mes_noc_tb/dut/master_tg/MASTERGEN1/sim/uart_sim_inst/we_in
add wave -noupdate -expand -group {UART SIM} -label data_available_out    /mes_noc_tb/dut/master_tg/MASTERGEN1/sim/uart_sim_inst/data_available_out
add wave -noupdate -expand -group {UART SIM} -label data_out              /mes_noc_tb/dut/master_tg/MASTERGEN1/sim/uart_sim_inst/data_out
add wave -noupdate -expand -group {UART SIM} -label tx_out                /mes_noc_tb/dut/master_tg/MASTERGEN1/sim/uart_sim_inst/tx_out
add wave -noupdate -expand -group {UART SIM} -label tx_ready_out          /mes_noc_tb/dut/master_tg/MASTERGEN1/sim/uart_sim_inst/tx_ready_out

#
# Master TG 0
#
add wave -noupdate -divider {TG 0}
add wave -noupdate -group {TG 0 Top}                        -label clk                       /mes_noc_tb/dut/master_tg/clk
add wave -noupdate -group {TG 0 Top}                        -label rst_n                     /mes_noc_tb/dut/master_tg/rst_n
add wave -noupdate -group {TG 0 Top} -group {Master Only}   -label UART_rx_in                /mes_noc_tb/dut/master_tg/UART_rx_in
add wave -noupdate -group {TG 0 Top} -group {Master Only}   -label UART_tx_out               /mes_noc_tb/dut/master_tg/UART_tx_out
add wave -noupdate -group {TG 0 Top} -group {Master Only}   -label config_mode_en_out        /mes_noc_tb/dut/master_tg/config_mode_en_out
add wave -noupdate -group {TG 0 Top} -group {Master Only}   -label monitor_command_out       /mes_noc_tb/dut/master_tg/monitor_command_out
add wave -noupdate -group {TG 0 Top} -group {Master Only}   -label select_monitor_UART_out   /mes_noc_tb/dut/master_tg/select_monitor_UART_out
add wave -noupdate -group {TG 0 Top} -group {Master Only}   -label failure_out               /mes_noc_tb/dut/master_tg/failure_out
add wave -noupdate -group {TG 0 Top} -group {Slave Only}    -label config_mode_en_in         /mes_noc_tb/dut/master_tg/config_mode_en_in
add wave -noupdate -group {TG 0 Top} -group {Wrapper Read}  -label r_empty_in                /mes_noc_tb/dut/master_tg/r_empty_in
add wave -noupdate -group {TG 0 Top} -group {Wrapper Read}  -label r_data_in                 /mes_noc_tb/dut/master_tg/r_data_in
add wave -noupdate -group {TG 0 Top} -group {Wrapper Read}  -label r_re_out                  /mes_noc_tb/dut/master_tg/r_re_out
add wave -noupdate -group {TG 0 Top} -group {Wrapper Write} -label w_full_in                 /mes_noc_tb/dut/master_tg/w_full_in
add wave -noupdate -group {TG 0 Top} -group {Wrapper Write} -label w_we_out                  /mes_noc_tb/dut/master_tg/w_we_out
add wave -noupdate -group {TG 0 Top} -group {Wrapper Write} -label w_data_out                /mes_noc_tb/dut/master_tg/w_data_out
add wave -noupdate -group {TG 0 Top} -group {Wrapper Write} -label w_tx_len_out              /mes_noc_tb/dut/master_tg/w_tx_len_out

add wave -noupdate -group {TG 0 Master} -label clk                           /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/clk
add wave -noupdate -group {TG 0 Master} -label rst_n                         /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/rst_n
add wave -noupdate -group {TG 0 Master} -label config_mode_en_out            /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/config_mode_en_out
add wave -noupdate -group {TG 0 Master} -label config_data_out               /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/config_data_out
add wave -noupdate -group {TG 0 Master} -label config_data_full_in           /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/config_data_full_in
add wave -noupdate -group {TG 0 Master} -label config_data_we_out            /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/config_data_we_out
add wave -noupdate -group {TG 0 Master} -group {Report} -label report_data_data_in           /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/report_data_data_in
add wave -noupdate -group {TG 0 Master} -group {Report} -label report_data_empty_in          /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/report_data_empty_in
add wave -noupdate -group {TG 0 Master} -group {Report} -label report_data_re_out            /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/report_data_re_out
add wave -noupdate -group {TG 0 Master} -group {Report} -label read_path_report_r            /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/read_path_report_r
add wave -noupdate -group {TG 0 Master} -group {Report} -label report_read_cnt_r             /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/report_read_cnt_r
add wave -noupdate -group {TG 0 Master} -group {Report} -label rep_read_cur_tg_r             /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/rep_read_cur_tg_r
add wave -noupdate -group {TG 0 Master} -group {UART} -label data_to_UART_out              /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/data_to_UART_out
add wave -noupdate -group {TG 0 Master} -group {UART} -label we_to_UART_out                /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/we_to_UART_out
add wave -noupdate -group {TG 0 Master} -group {UART} -label tx_ready_from_UART_in         /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/tx_ready_from_UART_in
add wave -noupdate -group {TG 0 Master} -group {UART} -label data_from_UART_in             /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/data_from_UART_in
add wave -noupdate -group {TG 0 Master} -group {UART} -label data_available_from_UART_in   /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/data_available_from_UART_in
add wave -noupdate -group {TG 0 Master} -group {UART} -label re_to_UART_out                /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/re_to_UART_out
add wave -noupdate -group {TG 0 Master} -group {Monitor} -label monitor_UART_sel_out          /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/monitor_UART_sel_out
add wave -noupdate -group {TG 0 Master} -group {Monitor} -label monitor_command_out           /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/monitor_command_out
add wave -noupdate -group {TG 0 Master} -label conf_pkt_len_out              /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/conf_pkt_len_out
add wave -noupdate -group {TG 0 Master} -label own_conf_or_own_rep_out       /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/own_conf_or_own_rep_out
add wave -noupdate -group {TG 0 Master} -label failure_out                   /mes_noc_tb/dut/master_tg/MASTERGEN1/master_inst/failure_out

add wave -noupdate -group {TG 0 Sender} -label clk                      /mes_noc_tb/dut/master_tg/sender_inst/clk
add wave -noupdate -group {TG 0 Sender} -label rst_n                    /mes_noc_tb/dut/master_tg/sender_inst/rst_n
add wave -noupdate -group {TG 0 Sender} -label config_mode_en_in        /mes_noc_tb/dut/master_tg/sender_inst/config_mode_en_in
add wave -noupdate -group {TG 0 Sender} -label mux_switch_allowed_out   /mes_noc_tb/dut/master_tg/sender_inst/mux_switch_allowed_out
add wave -noupdate -group {TG 0 Sender} -group {trigger <-> sender} -radix Decimal -label addr_in                  /mes_noc_tb/dut/master_tg/sender_inst/addr_in
add wave -noupdate -group {TG 0 Sender} -group {trigger <-> sender} -label datatype_in              /mes_noc_tb/dut/master_tg/sender_inst/datatype_in
add wave -noupdate -group {TG 0 Sender} -group {trigger <-> sender} -label tx_length_in             /mes_noc_tb/dut/master_tg/sender_inst/tx_length_in
add wave -noupdate -group {TG 0 Sender} -group {trigger <-> sender} -label measure_path_in          /mes_noc_tb/dut/master_tg/sender_inst/measure_path_in
add wave -noupdate -group {TG 0 Sender} -group {trigger <-> sender} -label new_path_in              /mes_noc_tb/dut/master_tg/sender_inst/new_path_in
add wave -noupdate -group {TG 0 Sender} -group {trigger <-> sender} -label path_start_time_in       /mes_noc_tb/dut/master_tg/sender_inst/path_start_time_in
add wave -noupdate -group {TG 0 Sender} -group {trigger <-> sender} -label start_tx_in              /mes_noc_tb/dut/master_tg/sender_inst/start_tx_in
add wave -noupdate -group {TG 0 Sender} -group {trigger <-> sender} -label ack_trigger_out          /mes_noc_tb/dut/master_tg/sender_inst/ack_trigger_out
add wave -noupdate -group {TG 0 Sender} -group {sender <-> wrapper} -label full_in                  /mes_noc_tb/dut/master_tg/sender_inst/full_in
add wave -noupdate -group {TG 0 Sender} -group {sender <-> wrapper} -label we_out                   /mes_noc_tb/dut/master_tg/sender_inst/we_out
add wave -noupdate -group {TG 0 Sender} -group {sender <-> wrapper} -label data_out                 /mes_noc_tb/dut/master_tg/sender_inst/data_out
add wave -noupdate -group {TG 0 Sender} -group {sender <-> wrapper} -label tx_len_out               /mes_noc_tb/dut/master_tg/sender_inst/tx_len_out

add wave -noupdate -group {TG 0 Trigger} -label clk                     /mes_noc_tb/dut/master_tg/trigger_inst/clk
add wave -noupdate -group {TG 0 Trigger} -label rst_n                   /mes_noc_tb/dut/master_tg/trigger_inst/rst_n
add wave -noupdate -group {TG 0 Trigger} -label config_mode_en_in       /mes_noc_tb/dut/master_tg/trigger_inst/config_mode_en_in
add wave -noupdate -group {TG 0 Trigger} -label rnd_addr_counter_r       /mes_noc_tb/dut/master_tg/trigger_inst/rnd_addr_counter_r
add wave -noupdate -group {TG 0 Trigger} -label rnd_addr_cnt_dup       /mes_noc_tb/dut/master_tg/trigger_inst/rnd_addr_cnt_dup
add wave -noupdate -group {TG 0 Trigger} -group {reader <-> trigger} -label valid_in                /mes_noc_tb/dut/master_tg/trigger_inst/valid_in
add wave -noupdate -group {TG 0 Trigger} -group {reader <-> trigger} -label sender_addr_in          /mes_noc_tb/dut/master_tg/trigger_inst/sender_addr_in
add wave -noupdate -group {TG 0 Trigger} -group {reader <-> trigger} -label data_type_in            /mes_noc_tb/dut/master_tg/trigger_inst/data_type_in
add wave -noupdate -group {TG 0 Trigger} -group {reader <-> trigger} -label path_start_time_in      /mes_noc_tb/dut/master_tg/trigger_inst/path_start_time_in
add wave -noupdate -group {TG 0 Trigger} -group {reader <-> trigger} -label measure_path_in         /mes_noc_tb/dut/master_tg/trigger_inst/measure_path_in
add wave -noupdate -group {TG 0 Trigger} -group {reader <-> trigger} -label busy_to_rdr_out         /mes_noc_tb/dut/master_tg/trigger_inst/busy_to_rdr_out
add wave -noupdate -group {TG 0 Trigger} -group {trigger <-> sender} -label ack_from_sndr_in        /mes_noc_tb/dut/master_tg/trigger_inst/ack_from_sndr_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger <-> sender} -radix Decimal -label dest_addr_out           /mes_noc_tb/dut/master_tg/trigger_inst/dest_addr_out
add wave -noupdate -group {TG 0 Trigger} -group {trigger <-> sender} -label tx_length_out           /mes_noc_tb/dut/master_tg/trigger_inst/tx_length_out
add wave -noupdate -group {TG 0 Trigger} -group {trigger <-> sender} -label tx_data_type_out        /mes_noc_tb/dut/master_tg/trigger_inst/tx_data_type_out
add wave -noupdate -group {TG 0 Trigger} -group {trigger <-> sender} -label measure_path_out        /mes_noc_tb/dut/master_tg/trigger_inst/measure_path_out
add wave -noupdate -group {TG 0 Trigger} -group {trigger <-> sender} -label new_path_out            /mes_noc_tb/dut/master_tg/trigger_inst/new_path_out
add wave -noupdate -group {TG 0 Trigger} -group {trigger <-> sender} -label path_start_time_out     /mes_noc_tb/dut/master_tg/trigger_inst/path_start_time_out
add wave -noupdate -group {TG 0 Trigger} -group {trigger <-> sender} -label start_tx_out            /mes_noc_tb/dut/master_tg/trigger_inst/start_tx_out
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label measure_path_conf_in    /mes_noc_tb/dut/master_tg/trigger_inst/measure_path_conf_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label conf_addr_in            /mes_noc_tb/dut/master_tg/trigger_inst/conf_addr_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label conf_dtype_in           /mes_noc_tb/dut/master_tg/trigger_inst/conf_dtype_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label trigger_mode_in         /mes_noc_tb/dut/master_tg/trigger_inst/trigger_mode_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label processing_time_in      /mes_noc_tb/dut/master_tg/trigger_inst/processing_time_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label target_addr_in          /mes_noc_tb/dut/master_tg/trigger_inst/target_addr_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label tx_type_in              /mes_noc_tb/dut/master_tg/trigger_inst/tx_type_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label tx_length_in            /mes_noc_tb/dut/master_tg/trigger_inst/tx_length_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label randomize_addr_in       /mes_noc_tb/dut/master_tg/trigger_inst/randomize_addr_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label randomize_len_in        /mes_noc_tb/dut/master_tg/trigger_inst/randomize_len_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label block_others_in         /mes_noc_tb/dut/master_tg/trigger_inst/block_others_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label dep_en_in               /mes_noc_tb/dut/master_tg/trigger_inst/dep_en_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label dep_flag_in             /mes_noc_tb/dut/master_tg/trigger_inst/dep_flag_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label dont_wait_dep_in        /mes_noc_tb/dut/master_tg/trigger_inst/dont_wait_dep_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label set_dep_en_in           /mes_noc_tb/dut/master_tg/trigger_inst/set_dep_en_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label dep_flag_to_set_in      /mes_noc_tb/dut/master_tg/trigger_inst/dep_flag_to_set_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label dep_flag_w_g            /mes_noc_tb/dut/master_tg/trigger_inst/dep_flag_w_g
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label waiting_time_in         /mes_noc_tb/dut/master_tg/trigger_inst/waiting_time_in
add wave -noupdate -group {TG 0 Trigger} -group {trigger config mode only} -label once_or_reply_in        /mes_noc_tb/dut/master_tg/trigger_inst/once_or_reply_in


#
# Slave TG 1
#
add wave -noupdate -divider {TG 1}
add wave -noupdate -group {TG 1 Top}                        -label clk                       /mes_noc_tb/dut/slave_tgs(1)/tg/clk
add wave -noupdate -group {TG 1 Top}                        -label rst_n                     /mes_noc_tb/dut/slave_tgs(1)/tg/rst_n
add wave -noupdate -group {TG 1 Top} -group {Master Only}   -label UART_rx_in                /mes_noc_tb/dut/slave_tgs(1)/tg/UART_rx_in
add wave -noupdate -group {TG 1 Top} -group {Master Only}   -label UART_tx_out               /mes_noc_tb/dut/slave_tgs(1)/tg/UART_tx_out
add wave -noupdate -group {TG 1 Top} -group {Master Only}   -label config_mode_en_out        /mes_noc_tb/dut/slave_tgs(1)/tg/config_mode_en_out
add wave -noupdate -group {TG 1 Top} -group {Master Only}   -label monitor_command_out       /mes_noc_tb/dut/slave_tgs(1)/tg/monitor_command_out
add wave -noupdate -group {TG 1 Top} -group {Master Only}   -label select_monitor_UART_out   /mes_noc_tb/dut/slave_tgs(1)/tg/select_monitor_UART_out
add wave -noupdate -group {TG 1 Top} -group {Master Only}   -label failure_out               /mes_noc_tb/dut/slave_tgs(1)/tg/failure_out
add wave -noupdate -group {TG 1 Top} -group {Slave Only}    -label config_mode_en_in         /mes_noc_tb/dut/slave_tgs(1)/tg/config_mode_en_in
add wave -noupdate -group {TG 1 Top} -group {Wrapper Read}  -label r_empty_in                /mes_noc_tb/dut/slave_tgs(1)/tg/r_empty_in
add wave -noupdate -group {TG 1 Top} -group {Wrapper Read}  -label r_data_in                 /mes_noc_tb/dut/slave_tgs(1)/tg/r_data_in
add wave -noupdate -group {TG 1 Top} -group {Wrapper Read}  -label r_re_out                  /mes_noc_tb/dut/slave_tgs(1)/tg/r_re_out
add wave -noupdate -group {TG 1 Top} -group {Wrapper Write} -label w_full_in                 /mes_noc_tb/dut/slave_tgs(1)/tg/w_full_in
add wave -noupdate -group {TG 1 Top} -group {Wrapper Write} -label w_we_out                  /mes_noc_tb/dut/slave_tgs(1)/tg/w_we_out
add wave -noupdate -group {TG 1 Top} -group {Wrapper Write} -label w_data_out                /mes_noc_tb/dut/slave_tgs(1)/tg/w_data_out
add wave -noupdate -group {TG 1 Top} -group {Wrapper Write} -label w_tx_len_out              /mes_noc_tb/dut/slave_tgs(1)/tg/w_tx_len_out

add wave -noupdate -group {TG 1 Sender} -label clk                      /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/clk
add wave -noupdate -group {TG 1 Sender} -label rst_n                    /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/rst_n
add wave -noupdate -group {TG 1 Sender} -label config_mode_en_in        /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/config_mode_en_in
add wave -noupdate -group {TG 1 Sender} -label mux_switch_allowed_out   /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/mux_switch_allowed_out
add wave -noupdate -group {TG 1 Sender} -group {trigger <-> sender} -radix Decimal -label addr_in                  /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/addr_in
add wave -noupdate -group {TG 1 Sender} -group {trigger <-> sender} -label datatype_in              /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/datatype_in
add wave -noupdate -group {TG 1 Sender} -group {trigger <-> sender} -label tx_length_in             /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/tx_length_in
add wave -noupdate -group {TG 1 Sender} -group {trigger <-> sender} -label measure_path_in          /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/measure_path_in
add wave -noupdate -group {TG 1 Sender} -group {trigger <-> sender} -label new_path_in              /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/new_path_in
add wave -noupdate -group {TG 1 Sender} -group {trigger <-> sender} -label path_start_time_in       /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/path_start_time_in
add wave -noupdate -group {TG 1 Sender} -group {trigger <-> sender} -label start_tx_in              /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/start_tx_in
add wave -noupdate -group {TG 1 Sender} -group {trigger <-> sender} -label ack_trigger_out          /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/ack_trigger_out
add wave -noupdate -group {TG 1 Sender} -group {sender <-> wrapper} -label full_in                  /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/full_in
add wave -noupdate -group {TG 1 Sender} -group {sender <-> wrapper} -label we_out                   /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/we_out
add wave -noupdate -group {TG 1 Sender} -group {sender <-> wrapper} -label data_out                 /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/data_out
add wave -noupdate -group {TG 1 Sender} -group {sender <-> wrapper} -label tx_len_out               /mes_noc_tb/dut/slave_tgs(1)/tg/sender_inst/tx_len_out

add wave -noupdate -group {TG 1 Trigger} -label clk                     /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/clk
add wave -noupdate -group {TG 1 Trigger} -label rst_n                   /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/rst_n
add wave -noupdate -group {TG 1 Trigger} -label config_mode_en_in       /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/config_mode_en_in
add wave -noupdate -group {TG 1 Trigger} -label rnd_addr_counter_r       /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/rnd_addr_counter_r
add wave -noupdate -group {TG 1 Trigger} -label rnd_addr_cnt_dup       /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/rnd_addr_cnt_dup
add wave -noupdate -group {TG 1 Trigger} -group {reader <-> trigger} -label valid_in                /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/valid_in
add wave -noupdate -group {TG 1 Trigger} -group {reader <-> trigger} -label sender_addr_in          /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/sender_addr_in
add wave -noupdate -group {TG 1 Trigger} -group {reader <-> trigger} -label data_type_in            /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/data_type_in
add wave -noupdate -group {TG 1 Trigger} -group {reader <-> trigger} -label path_start_time_in      /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/path_start_time_in
add wave -noupdate -group {TG 1 Trigger} -group {reader <-> trigger} -label measure_path_in         /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/measure_path_in
add wave -noupdate -group {TG 1 Trigger} -group {reader <-> trigger} -label busy_to_rdr_out         /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/busy_to_rdr_out
add wave -noupdate -group {TG 1 Trigger} -group {trigger <-> sender} -label ack_from_sndr_in        /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/ack_from_sndr_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger <-> sender} -radix Decimal -label dest_addr_out           /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/dest_addr_out
add wave -noupdate -group {TG 1 Trigger} -group {trigger <-> sender} -label tx_length_out           /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/tx_length_out
add wave -noupdate -group {TG 1 Trigger} -group {trigger <-> sender} -label tx_data_type_out        /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/tx_data_type_out
add wave -noupdate -group {TG 1 Trigger} -group {trigger <-> sender} -label measure_path_out        /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/measure_path_out
add wave -noupdate -group {TG 1 Trigger} -group {trigger <-> sender} -label new_path_out            /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/new_path_out
add wave -noupdate -group {TG 1 Trigger} -group {trigger <-> sender} -label path_start_time_out     /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/path_start_time_out
add wave -noupdate -group {TG 1 Trigger} -group {trigger <-> sender} -label start_tx_out            /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/start_tx_out
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label measure_path_conf_in    /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/measure_path_conf_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label conf_addr_in            /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/conf_addr_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label conf_dtype_in           /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/conf_dtype_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label trigger_mode_in         /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/trigger_mode_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label processing_time_in      /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/processing_time_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label target_addr_in          /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/target_addr_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label tx_type_in              /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/tx_type_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label tx_length_in            /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/tx_length_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label randomize_addr_in       /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/randomize_addr_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label randomize_len_in        /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/randomize_len_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label block_others_in         /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/block_others_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label dep_en_in               /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/dep_en_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label dep_flag_in             /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/dep_flag_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label dont_wait_dep_in        /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/dont_wait_dep_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label set_dep_en_in           /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/set_dep_en_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label dep_flag_to_set_in      /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/dep_flag_to_set_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label dep_flag_w_g            /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/dep_flag_w_g
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label waiting_time_in         /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/waiting_time_in
add wave -noupdate -group {TG 1 Trigger} -group {trigger config mode only} -label once_or_reply_in        /mes_noc_tb/dut/slave_tgs(1)/tg/trigger_inst/once_or_reply_in

#
# Slave TG 2
#
add wave -noupdate -divider {TG 2}
add wave -noupdate -group {TG 2 Top}                        -label clk                       /mes_noc_tb/dut/slave_tgs(2)/tg/clk
add wave -noupdate -group {TG 2 Top}                        -label rst_n                     /mes_noc_tb/dut/slave_tgs(2)/tg/rst_n
add wave -noupdate -group {TG 2 Top} -group {Master Only}   -label UART_rx_in                /mes_noc_tb/dut/slave_tgs(2)/tg/UART_rx_in
add wave -noupdate -group {TG 2 Top} -group {Master Only}   -label UART_tx_out               /mes_noc_tb/dut/slave_tgs(2)/tg/UART_tx_out
add wave -noupdate -group {TG 2 Top} -group {Master Only}   -label config_mode_en_out        /mes_noc_tb/dut/slave_tgs(2)/tg/config_mode_en_out
add wave -noupdate -group {TG 2 Top} -group {Master Only}   -label monitor_command_out       /mes_noc_tb/dut/slave_tgs(2)/tg/monitor_command_out
add wave -noupdate -group {TG 2 Top} -group {Master Only}   -label select_monitor_UART_out   /mes_noc_tb/dut/slave_tgs(2)/tg/select_monitor_UART_out
add wave -noupdate -group {TG 2 Top} -group {Master Only}   -label failure_out               /mes_noc_tb/dut/slave_tgs(2)/tg/failure_out
add wave -noupdate -group {TG 2 Top} -group {Slave Only}    -label config_mode_en_in         /mes_noc_tb/dut/slave_tgs(2)/tg/config_mode_en_in
add wave -noupdate -group {TG 2 Top} -group {Wrapper Read}  -label r_empty_in                /mes_noc_tb/dut/slave_tgs(2)/tg/r_empty_in
add wave -noupdate -group {TG 2 Top} -group {Wrapper Read}  -label r_data_in                 /mes_noc_tb/dut/slave_tgs(2)/tg/r_data_in
add wave -noupdate -group {TG 2 Top} -group {Wrapper Read}  -label r_re_out                  /mes_noc_tb/dut/slave_tgs(2)/tg/r_re_out
add wave -noupdate -group {TG 2 Top} -group {Wrapper Write} -label w_full_in                 /mes_noc_tb/dut/slave_tgs(2)/tg/w_full_in
add wave -noupdate -group {TG 2 Top} -group {Wrapper Write} -label w_we_out                  /mes_noc_tb/dut/slave_tgs(2)/tg/w_we_out
add wave -noupdate -group {TG 2 Top} -group {Wrapper Write} -label w_data_out                /mes_noc_tb/dut/slave_tgs(2)/tg/w_data_out
add wave -noupdate -group {TG 2 Top} -group {Wrapper Write} -label w_tx_len_out              /mes_noc_tb/dut/slave_tgs(2)/tg/w_tx_len_out

add wave -noupdate -group {TG 2 Sender} -label clk                      /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/clk
add wave -noupdate -group {TG 2 Sender} -label rst_n                    /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/rst_n
add wave -noupdate -group {TG 2 Sender} -label config_mode_en_in        /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/config_mode_en_in
add wave -noupdate -group {TG 2 Sender} -label mux_switch_allowed_out   /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/mux_switch_allowed_out
add wave -noupdate -group {TG 2 Sender} -group {trigger <-> sender} -radix Decimal -label addr_in                  /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/addr_in
add wave -noupdate -group {TG 2 Sender} -group {trigger <-> sender} -label datatype_in              /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/datatype_in
add wave -noupdate -group {TG 2 Sender} -group {trigger <-> sender} -label tx_length_in             /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/tx_length_in
add wave -noupdate -group {TG 2 Sender} -group {trigger <-> sender} -label measure_path_in          /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/measure_path_in
add wave -noupdate -group {TG 2 Sender} -group {trigger <-> sender} -label new_path_in              /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/new_path_in
add wave -noupdate -group {TG 2 Sender} -group {trigger <-> sender} -label path_start_time_in       /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/path_start_time_in
add wave -noupdate -group {TG 2 Sender} -group {trigger <-> sender} -label start_tx_in              /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/start_tx_in
add wave -noupdate -group {TG 2 Sender} -group {trigger <-> sender} -label ack_trigger_out          /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/ack_trigger_out
add wave -noupdate -group {TG 2 Sender} -group {sender <-> wrapper} -label full_in                  /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/full_in
add wave -noupdate -group {TG 2 Sender} -group {sender <-> wrapper} -label we_out                   /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/we_out
add wave -noupdate -group {TG 2 Sender} -group {sender <-> wrapper} -label data_out                 /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/data_out
add wave -noupdate -group {TG 2 Sender} -group {sender <-> wrapper} -label tx_len_out               /mes_noc_tb/dut/slave_tgs(2)/tg/sender_inst/tx_len_out

add wave -noupdate -group {TG 2 Trigger} -label clk                     /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/clk
add wave -noupdate -group {TG 2 Trigger} -label rst_n                   /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/rst_n
add wave -noupdate -group {TG 2 Trigger} -label config_mode_en_in       /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/config_mode_en_in
add wave -noupdate -group {TG 2 Trigger} -label rnd_addr_counter_r       /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/rnd_addr_counter_r
add wave -noupdate -group {TG 2 Trigger} -label rnd_addr_cnt_dup       /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/rnd_addr_cnt_dup
add wave -noupdate -group {TG 2 Trigger} -group {reader <-> trigger} -label valid_in                /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/valid_in
add wave -noupdate -group {TG 2 Trigger} -group {reader <-> trigger} -label sender_addr_in          /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/sender_addr_in
add wave -noupdate -group {TG 2 Trigger} -group {reader <-> trigger} -label data_type_in            /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/data_type_in
add wave -noupdate -group {TG 2 Trigger} -group {reader <-> trigger} -label path_start_time_in      /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/path_start_time_in
add wave -noupdate -group {TG 2 Trigger} -group {reader <-> trigger} -label measure_path_in         /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/measure_path_in
add wave -noupdate -group {TG 2 Trigger} -group {reader <-> trigger} -label busy_to_rdr_out         /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/busy_to_rdr_out
add wave -noupdate -group {TG 2 Trigger} -group {trigger <-> sender} -label ack_from_sndr_in        /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/ack_from_sndr_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger <-> sender} -radix Decimal -label dest_addr_out           /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/dest_addr_out
add wave -noupdate -group {TG 2 Trigger} -group {trigger <-> sender} -label tx_length_out           /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/tx_length_out
add wave -noupdate -group {TG 2 Trigger} -group {trigger <-> sender} -label tx_data_type_out        /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/tx_data_type_out
add wave -noupdate -group {TG 2 Trigger} -group {trigger <-> sender} -label measure_path_out        /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/measure_path_out
add wave -noupdate -group {TG 2 Trigger} -group {trigger <-> sender} -label new_path_out            /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/new_path_out
add wave -noupdate -group {TG 2 Trigger} -group {trigger <-> sender} -label path_start_time_out     /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/path_start_time_out
add wave -noupdate -group {TG 2 Trigger} -group {trigger <-> sender} -label start_tx_out            /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/start_tx_out
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label measure_path_conf_in    /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/measure_path_conf_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label conf_addr_in            /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/conf_addr_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label conf_dtype_in           /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/conf_dtype_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label trigger_mode_in         /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/trigger_mode_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label processing_time_in      /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/processing_time_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label target_addr_in          /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/target_addr_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label tx_type_in              /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/tx_type_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label tx_length_in            /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/tx_length_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label randomize_addr_in       /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/randomize_addr_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label randomize_len_in        /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/randomize_len_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label block_others_in         /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/block_others_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label dep_en_in               /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/dep_en_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label dep_flag_in             /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/dep_flag_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label dont_wait_dep_in        /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/dont_wait_dep_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label set_dep_en_in           /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/set_dep_en_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label dep_flag_to_set_in      /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/dep_flag_to_set_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label dep_flag_w_g            /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/dep_flag_w_g
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label waiting_time_in         /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/waiting_time_in
add wave -noupdate -group {TG 2 Trigger} -group {trigger config mode only} -label once_or_reply_in        /mes_noc_tb/dut/slave_tgs(2)/tg/trigger_inst/once_or_reply_in

#
# Slave TG 3
#
add wave -noupdate -divider {TG 3}
add wave -noupdate -group {TG 3 Top}                        -label clk                       /mes_noc_tb/dut/slave_tgs(3)/tg/clk
add wave -noupdate -group {TG 3 Top}                        -label rst_n                     /mes_noc_tb/dut/slave_tgs(3)/tg/rst_n
add wave -noupdate -group {TG 3 Top} -group {Master Only}   -label UART_rx_in                /mes_noc_tb/dut/slave_tgs(3)/tg/UART_rx_in
add wave -noupdate -group {TG 3 Top} -group {Master Only}   -label UART_tx_out               /mes_noc_tb/dut/slave_tgs(3)/tg/UART_tx_out
add wave -noupdate -group {TG 3 Top} -group {Master Only}   -label config_mode_en_out        /mes_noc_tb/dut/slave_tgs(3)/tg/config_mode_en_out
add wave -noupdate -group {TG 3 Top} -group {Master Only}   -label monitor_command_out       /mes_noc_tb/dut/slave_tgs(3)/tg/monitor_command_out
add wave -noupdate -group {TG 3 Top} -group {Master Only}   -label select_monitor_UART_out   /mes_noc_tb/dut/slave_tgs(3)/tg/select_monitor_UART_out
add wave -noupdate -group {TG 3 Top} -group {Master Only}   -label failure_out               /mes_noc_tb/dut/slave_tgs(3)/tg/failure_out
add wave -noupdate -group {TG 3 Top} -group {Slave Only}    -label config_mode_en_in         /mes_noc_tb/dut/slave_tgs(3)/tg/config_mode_en_in
add wave -noupdate -group {TG 3 Top} -group {Wrapper Read}  -label r_empty_in                /mes_noc_tb/dut/slave_tgs(3)/tg/r_empty_in
add wave -noupdate -group {TG 3 Top} -group {Wrapper Read}  -label r_data_in                 /mes_noc_tb/dut/slave_tgs(3)/tg/r_data_in
add wave -noupdate -group {TG 3 Top} -group {Wrapper Read}  -label r_re_out                  /mes_noc_tb/dut/slave_tgs(3)/tg/r_re_out
add wave -noupdate -group {TG 3 Top} -group {Wrapper Write} -label w_full_in                 /mes_noc_tb/dut/slave_tgs(3)/tg/w_full_in
add wave -noupdate -group {TG 3 Top} -group {Wrapper Write} -label w_we_out                  /mes_noc_tb/dut/slave_tgs(3)/tg/w_we_out
add wave -noupdate -group {TG 3 Top} -group {Wrapper Write} -label w_data_out                /mes_noc_tb/dut/slave_tgs(3)/tg/w_data_out
add wave -noupdate -group {TG 3 Top} -group {Wrapper Write} -label w_tx_len_out              /mes_noc_tb/dut/slave_tgs(3)/tg/w_tx_len_out

add wave -noupdate -group {TG 3 Sender} -label clk                      /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/clk
add wave -noupdate -group {TG 3 Sender} -label rst_n                    /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/rst_n
add wave -noupdate -group {TG 3 Sender} -label config_mode_en_in        /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/config_mode_en_in
add wave -noupdate -group {TG 3 Sender} -label mux_switch_allowed_out   /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/mux_switch_allowed_out
add wave -noupdate -group {TG 3 Sender} -group {trigger <-> sender} -radix Decimal -label addr_in                  /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/addr_in
add wave -noupdate -group {TG 3 Sender} -group {trigger <-> sender} -label datatype_in              /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/datatype_in
add wave -noupdate -group {TG 3 Sender} -group {trigger <-> sender} -label tx_length_in             /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/tx_length_in
add wave -noupdate -group {TG 3 Sender} -group {trigger <-> sender} -label measure_path_in          /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/measure_path_in
add wave -noupdate -group {TG 3 Sender} -group {trigger <-> sender} -label new_path_in              /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/new_path_in
add wave -noupdate -group {TG 3 Sender} -group {trigger <-> sender} -label path_start_time_in       /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/path_start_time_in
add wave -noupdate -group {TG 3 Sender} -group {trigger <-> sender} -label start_tx_in              /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/start_tx_in
add wave -noupdate -group {TG 3 Sender} -group {trigger <-> sender} -label ack_trigger_out          /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/ack_trigger_out
add wave -noupdate -group {TG 3 Sender} -group {sender <-> wrapper} -label full_in                  /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/full_in
add wave -noupdate -group {TG 3 Sender} -group {sender <-> wrapper} -label we_out                   /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/we_out
add wave -noupdate -group {TG 3 Sender} -group {sender <-> wrapper} -label data_out                 /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/data_out
add wave -noupdate -group {TG 3 Sender} -group {sender <-> wrapper} -label tx_len_out               /mes_noc_tb/dut/slave_tgs(3)/tg/sender_inst/tx_len_out

add wave -noupdate -group {TG 3 Trigger} -label clk                     /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/clk
add wave -noupdate -group {TG 3 Trigger} -label rst_n                   /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/rst_n
add wave -noupdate -group {TG 3 Trigger} -label config_mode_en_in       /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/config_mode_en_in
add wave -noupdate -group {TG 3 Trigger} -label rnd_addr_counter_r       /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/rnd_addr_counter_r
add wave -noupdate -group {TG 3 Trigger} -label rnd_addr_cnt_dup       /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/rnd_addr_cnt_dup
add wave -noupdate -group {TG 3 Trigger} -group {reader <-> trigger} -label valid_in                /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/valid_in
add wave -noupdate -group {TG 3 Trigger} -group {reader <-> trigger} -label sender_addr_in          /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/sender_addr_in
add wave -noupdate -group {TG 3 Trigger} -group {reader <-> trigger} -label data_type_in            /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/data_type_in
add wave -noupdate -group {TG 3 Trigger} -group {reader <-> trigger} -label path_start_time_in      /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/path_start_time_in
add wave -noupdate -group {TG 3 Trigger} -group {reader <-> trigger} -label measure_path_in         /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/measure_path_in
add wave -noupdate -group {TG 3 Trigger} -group {reader <-> trigger} -label busy_to_rdr_out         /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/busy_to_rdr_out
add wave -noupdate -group {TG 3 Trigger} -group {trigger <-> sender} -label ack_from_sndr_in        /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/ack_from_sndr_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger <-> sender} -radix Decimal -label dest_addr_out           /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/dest_addr_out
add wave -noupdate -group {TG 3 Trigger} -group {trigger <-> sender} -label tx_length_out           /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/tx_length_out
add wave -noupdate -group {TG 3 Trigger} -group {trigger <-> sender} -label tx_data_type_out        /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/tx_data_type_out
add wave -noupdate -group {TG 3 Trigger} -group {trigger <-> sender} -label measure_path_out        /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/measure_path_out
add wave -noupdate -group {TG 3 Trigger} -group {trigger <-> sender} -label new_path_out            /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/new_path_out
add wave -noupdate -group {TG 3 Trigger} -group {trigger <-> sender} -label path_start_time_out     /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/path_start_time_out
add wave -noupdate -group {TG 3 Trigger} -group {trigger <-> sender} -label start_tx_out            /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/start_tx_out
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label measure_path_conf_in    /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/measure_path_conf_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label conf_addr_in            /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/conf_addr_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label conf_dtype_in           /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/conf_dtype_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label trigger_mode_in         /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/trigger_mode_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label processing_time_in      /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/processing_time_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label target_addr_in          /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/target_addr_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label tx_type_in              /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/tx_type_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label tx_length_in            /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/tx_length_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label randomize_addr_in       /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/randomize_addr_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label randomize_len_in        /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/randomize_len_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label block_others_in         /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/block_others_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label dep_en_in               /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/dep_en_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label dep_flag_in             /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/dep_flag_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label dont_wait_dep_in        /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/dont_wait_dep_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label set_dep_en_in           /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/set_dep_en_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label dep_flag_to_set_in      /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/dep_flag_to_set_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label dep_flag_w_g            /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/dep_flag_w_g
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label waiting_time_in         /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/waiting_time_in
add wave -noupdate -group {TG 3 Trigger} -group {trigger config mode only} -label once_or_reply_in        /mes_noc_tb/dut/slave_tgs(3)/tg/trigger_inst/once_or_reply_in


#
# Configure window
#
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {639890471 ps} 0}
configure wave -namecolwidth 235
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
