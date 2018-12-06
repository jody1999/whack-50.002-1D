<?xml version="1.0" encoding="UTF-8"?>
<project name="IOShieldDemo" board="Mojo V3" language="Lucid">
  <files>
    <src>button.luc</src>
    <src>combinedALU.luc</src>
    <src>lfsr_randomiser.luc</src>
    <src>getZVN.luc</src>
    <src>multi_seven_seg.luc</src>
    <src top="true">mojo_top.luc</src>
    <src>16shift.luc</src>
    <src>16multiplier.luc</src>
    <src>decimal_counter.luc</src>
    <src>multi_dec_ctr.luc</src>
    <src>alumux.luc</src>
    <src>16adder.luc</src>
    <src>seven_seg.luc</src>
    <src>16mod.luc</src>
    <src>16boolean.luc</src>
    <src>16compare.luc</src>
    <ucf lib="true">io_shield.ucf</ucf>
    <ucf>custom.ucf</ucf>
    <ucf lib="true">mojo.ucf</ucf>
    <component>decoder.luc</component>
    <component>reset_conditioner.luc</component>
    <component>pipeline.luc</component>
    <component>button_conditioner.luc</component>
    <component>counter.luc</component>
    <component>edge_detector.luc</component>
  </files>
</project>
