set projDir "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/planAhead"
set projName "IOShieldDemo"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/mojo_top_0.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/alumux_1.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/seven_seg_2.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/seven_seg_2.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/seven_seg_2.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/seven_seg_2.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/reset_conditioner_6.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/edge_detector_7.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/multi_dec_ctr_8.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/lfsr_randomiser_9.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/counter_10.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/button_11.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/combinedALU_12.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/decimal_counter_13.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/button_conditioner_14.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/button_conditioner_14.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/button_conditioner_14.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/button_conditioner_14.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/button_conditioner_14.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/button_conditioner_14.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/button_conditioner_14.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/button_conditioner_14.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/16adder_22.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/16compare_23.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/16shift_24.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/16boolean_25.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/16multiplier_26.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/16mod_27.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/getZVN_28.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/pipeline_29.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/pipeline_29.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/pipeline_29.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/pipeline_29.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/pipeline_29.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/pipeline_29.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/pipeline_29.v" "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/work/verilog/pipeline_29.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/xiaomeng_wu/Documents/mojo/WAM_work/WAM/constraint/custom.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
