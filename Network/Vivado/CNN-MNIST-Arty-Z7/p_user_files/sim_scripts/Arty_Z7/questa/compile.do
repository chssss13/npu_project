vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/lib_pkg_v1_0_3
vlib questa_lib/msim/fifo_generator_v13_2_9
vlib questa_lib/msim/lib_fifo_v1_0_18
vlib questa_lib/msim/lib_srl_fifo_v1_0_3
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_31
vlib questa_lib/msim/axi_sg_v4_1_17
vlib questa_lib/msim/axi_dma_v7_1_30
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_8
vlib questa_lib/msim/proc_sys_reset_v5_0_14
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_29
vlib questa_lib/msim/axi_vip_v1_1_15
vlib questa_lib/msim/processing_system7_vip_v1_0_17
vlib questa_lib/msim/xlconcat_v2_1_5
vlib questa_lib/msim/generic_baseblocks_v2_1_1
vlib questa_lib/msim/axi_data_fifo_v2_1_28
vlib questa_lib/msim/axi_crossbar_v2_1_30
vlib questa_lib/msim/axi_protocol_converter_v2_1_29

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap lib_pkg_v1_0_3 questa_lib/msim/lib_pkg_v1_0_3
vmap fifo_generator_v13_2_9 questa_lib/msim/fifo_generator_v13_2_9
vmap lib_fifo_v1_0_18 questa_lib/msim/lib_fifo_v1_0_18
vmap lib_srl_fifo_v1_0_3 questa_lib/msim/lib_srl_fifo_v1_0_3
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_31 questa_lib/msim/axi_datamover_v5_1_31
vmap axi_sg_v4_1_17 questa_lib/msim/axi_sg_v4_1_17
vmap axi_dma_v7_1_30 questa_lib/msim/axi_dma_v7_1_30
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_8 questa_lib/msim/xlconstant_v1_1_8
vmap proc_sys_reset_v5_0_14 questa_lib/msim/proc_sys_reset_v5_0_14
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_29 questa_lib/msim/axi_register_slice_v2_1_29
vmap axi_vip_v1_1_15 questa_lib/msim/axi_vip_v1_1_15
vmap processing_system7_vip_v1_0_17 questa_lib/msim/processing_system7_vip_v1_0_17
vmap xlconcat_v2_1_5 questa_lib/msim/xlconcat_v2_1_5
vmap generic_baseblocks_v2_1_1 questa_lib/msim/generic_baseblocks_v2_1_1
vmap axi_data_fifo_v2_1_28 questa_lib/msim/axi_data_fifo_v2_1_28
vmap axi_crossbar_v2_1_30 questa_lib/msim/axi_crossbar_v2_1_30
vmap axi_protocol_converter_v2_1_29 questa_lib/msim/axi_protocol_converter_v2_1_29

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_pkg_v1_0_3  -93  \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/56d9/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9  -93  \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_18  -93  \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/1531/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_3  -93  \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/02c4/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_31  -93  \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/d786/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_17  -93  \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/1b4d/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_30  -93  \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ddec/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Arty_Z7/ip/Arty_Z7_axi_dma_0_0/sim/Arty_Z7_axi_dma_0_0.vhd" \

vlog -work xlconstant_v1_1_8  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_axi_smc_0/bd_0/ip/ip_0/sim/bd_f994_one_0.v" \

vcom -work proc_sys_reset_v5_0_14  -93  \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Arty_Z7/ip/Arty_Z7_axi_smc_0/bd_0/ip/ip_1/sim/bd_f994_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/c6b2/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_axi_smc_0/bd_0/ip/ip_2/sim/bd_f994_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/abb8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_axi_smc_0/bd_0/ip/ip_3/sim/bd_f994_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/7827/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_axi_smc_0/bd_0/ip/ip_4/sim/bd_f994_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/79ce/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_axi_smc_0/bd_0/ip/ip_5/sim/bd_f994_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_axi_smc_0/bd_0/ip/ip_6/sim/bd_f994_sarn_0.sv" \
"../../../bd/Arty_Z7/ip/Arty_Z7_axi_smc_0/bd_0/ip/ip_7/sim/bd_f994_srn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ebf7/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_axi_smc_0/bd_0/ip/ip_8/sim/bd_f994_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6eea/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_axi_smc_0/bd_0/ip/ip_9/sim/bd_f994_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_axi_smc_0/bd_0/sim/bd_f994.v" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/bd53/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_axi_smc_0/sim/Arty_Z7_axi_smc_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Arty_Z7/ip/Arty_Z7_proc_sys_reset_0_0/sim/Arty_Z7_proc_sys_reset_0_0.vhd" \

vlog -work processing_system7_vip_v1_0_17  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_processing_system7_0_1/sim/Arty_Z7_processing_system7_0_1.v" \

vlog -work xlconcat_v2_1_5  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_xlconcat_0_0/sim/Arty_Z7_xlconcat_0_0.v" \
"../../../bd/Arty_Z7/ipshared/62cb/rtl/Layer_1.v" \
"../../../bd/Arty_Z7/ipshared/62cb/rtl/Layer_2.v" \
"../../../bd/Arty_Z7/ipshared/62cb/rtl/Layer_3.v" \
"../../../bd/Arty_Z7/ipshared/62cb/rtl/Sig_ROM.v" \
"../../../bd/Arty_Z7/ipshared/62cb/rtl/Weight_Memory.v" \
"../../../bd/Arty_Z7/ipshared/62cb/rtl/axi_lite_wrapper.v" \
"../../../bd/Arty_Z7/ipshared/62cb/rtl/maxFinder.v" \
"../../../bd/Arty_Z7/ipshared/62cb/rtl/neuron.v" \
"../../../bd/Arty_Z7/ipshared/62cb/rtl/relu.v" \
"../../../bd/Arty_Z7/ipshared/62cb/rtl/zynet.v" \
"../../../bd/Arty_Z7/ip/Arty_Z7_zyNet_0_0/sim/Arty_Z7_zyNet_0_0.v" \

vlog -work generic_baseblocks_v2_1_1  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_30  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_xbar_0/sim/Arty_Z7_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_29  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/35de/hdl/verilog" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/ec67/hdl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/6b2b/hdl" "+incdir+../../../bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+../../../../CNN-MNIST-Arty-Z7.gen/sources_1/bd/Arty_Z7/ipshared/62cb/rtl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/Arty_Z7/ip/Arty_Z7_auto_pc_0/sim/Arty_Z7_auto_pc_0.v" \
"../../../bd/Arty_Z7/sim/Arty_Z7.v" \

vlog -work xil_defaultlib \
"glbl.v"

