<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.3">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="yes"/>
<layer number="101" name="Patch_Top" color="7" fill="1" visible="no" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="no" active="yes"/>
<layer number="103" name="ATT_MISO" color="7" fill="1" visible="no" active="yes"/>
<layer number="104" name="Name" color="7" fill="1" visible="no" active="yes"/>
<layer number="105" name="Beschreib" color="7" fill="1" visible="no" active="yes"/>
<layer number="106" name="BGA-Top" color="7" fill="1" visible="no" active="yes"/>
<layer number="107" name="BD-Top" color="7" fill="1" visible="no" active="yes"/>
<layer number="116" name="Patch_BOT" color="7" fill="1" visible="no" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="no" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="no" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="no" active="yes"/>
<layer number="131" name="prix" color="7" fill="1" visible="no" active="yes"/>
<layer number="132" name="test" color="7" fill="1" visible="no" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="no" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="no" active="yes"/>
<layer number="200" name="200bmp" color="16" fill="1" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="202" name="202bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="203" name="203bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="204" name="204bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="205" name="205bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="207" name="207bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="208" name="208bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="250" name="Descript" color="7" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="7" fill="1" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="no" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A3L-LOC">
<wire x1="288.29" y1="3.81" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="3.81" x2="373.38" y2="3.81" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="383.54" y2="3.81" width="0.1016" layer="94"/>
<wire x1="383.54" y1="3.81" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="383.54" y1="8.89" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="383.54" y1="13.97" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="383.54" y1="19.05" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="3.81" x2="288.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="24.13" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="342.265" y1="24.13" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="373.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="342.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="342.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<text x="344.17" y="15.24" size="2.54" layer="94" font="vector">&gt;DRAWING_NAME</text>
<text x="344.17" y="10.16" size="2.286" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="357.505" y="5.08" size="2.54" layer="94" font="vector">&gt;SHEET</text>
<text x="343.916" y="4.953" size="2.54" layer="94" font="vector">Sheet:</text>
<frame x1="0" y1="0" x2="387.35" y2="260.35" columns="8" rows="5" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A3L-LOC" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A3, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A3L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="equinox">
<packages>
<package name="LQFP48">
<wire x1="-3.1" y1="-3.4" x2="3.1" y2="-3.4" width="0.1524" layer="21"/>
<wire x1="3.4" y1="-3.1" x2="3.4" y2="3.1" width="0.1524" layer="21"/>
<wire x1="3.1" y1="3.4" x2="-3.1" y2="3.4" width="0.1524" layer="21"/>
<wire x1="-3.1" y1="3.4" x2="-3.4" y2="3.1" width="0.1524" layer="21"/>
<wire x1="-3.4" y1="3.1" x2="-3.4" y2="-3.1" width="0.1524" layer="21"/>
<wire x1="-3.4" y1="-3.1" x2="-3.1" y2="-3.4" width="0.1524" layer="21"/>
<wire x1="3.1" y1="-3.4" x2="3.4" y2="-3.1" width="0.1524" layer="21"/>
<wire x1="3.4" y1="3.1" x2="3.1" y2="3.4" width="0.1524" layer="21"/>
<circle x="-4.8" y="3.704" radius="0.1" width="0.2" layer="21"/>
<circle x="-2.4" y="2.35" radius="0.2" width="0.4" layer="21"/>
<smd name="1" x="-4.3" y="2.75" dx="1.5" dy="0.25" layer="1"/>
<smd name="2" x="-4.3" y="2.25" dx="1.5" dy="0.25" layer="1"/>
<smd name="3" x="-4.3" y="1.75" dx="1.5" dy="0.25" layer="1"/>
<smd name="4" x="-4.3" y="1.25" dx="1.5" dy="0.25" layer="1"/>
<smd name="5" x="-4.3" y="0.75" dx="1.5" dy="0.25" layer="1"/>
<smd name="6" x="-4.3" y="0.25" dx="1.5" dy="0.25" layer="1"/>
<smd name="7" x="-4.3" y="-0.25" dx="1.5" dy="0.25" layer="1"/>
<smd name="8" x="-4.3" y="-0.75" dx="1.5" dy="0.25" layer="1"/>
<smd name="9" x="-4.3" y="-1.25" dx="1.5" dy="0.25" layer="1"/>
<smd name="10" x="-4.3" y="-1.75" dx="1.5" dy="0.25" layer="1"/>
<smd name="11" x="-4.3" y="-2.25" dx="1.5" dy="0.25" layer="1"/>
<smd name="12" x="-4.3" y="-2.75" dx="1.5" dy="0.25" layer="1"/>
<smd name="13" x="-2.75" y="-4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="14" x="-2.25" y="-4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="15" x="-1.75" y="-4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="16" x="-1.25" y="-4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="17" x="-0.75" y="-4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="18" x="-0.25" y="-4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="19" x="0.25" y="-4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="20" x="0.75" y="-4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="21" x="1.25" y="-4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="22" x="1.75" y="-4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="23" x="2.25" y="-4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="24" x="2.75" y="-4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="25" x="4.3" y="-2.75" dx="1.5" dy="0.25" layer="1"/>
<smd name="26" x="4.3" y="-2.25" dx="1.5" dy="0.25" layer="1"/>
<smd name="27" x="4.3" y="-1.75" dx="1.5" dy="0.25" layer="1"/>
<smd name="28" x="4.3" y="-1.25" dx="1.5" dy="0.25" layer="1"/>
<smd name="29" x="4.3" y="-0.75" dx="1.5" dy="0.25" layer="1"/>
<smd name="30" x="4.3" y="-0.25" dx="1.5" dy="0.25" layer="1"/>
<smd name="31" x="4.3" y="0.25" dx="1.5" dy="0.25" layer="1"/>
<smd name="32" x="4.3" y="0.75" dx="1.5" dy="0.25" layer="1"/>
<smd name="33" x="4.3" y="1.25" dx="1.5" dy="0.25" layer="1"/>
<smd name="34" x="4.3" y="1.75" dx="1.5" dy="0.25" layer="1"/>
<smd name="35" x="4.3" y="2.25" dx="1.5" dy="0.25" layer="1"/>
<smd name="36" x="4.3" y="2.75" dx="1.5" dy="0.25" layer="1"/>
<smd name="37" x="2.75" y="4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="38" x="2.25" y="4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="39" x="1.75" y="4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="40" x="1.25" y="4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="41" x="0.75" y="4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="42" x="0.25" y="4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="43" x="-0.25" y="4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="44" x="-0.75" y="4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="45" x="-1.25" y="4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="46" x="-1.75" y="4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="47" x="-2.25" y="4.3" dx="0.25" dy="1.5" layer="1"/>
<smd name="48" x="-2.75" y="4.3" dx="0.25" dy="1.5" layer="1"/>
<text x="-2.974" y="5.3001" size="1.27" layer="25" font="vector" ratio="10">&gt;NAME</text>
<text x="-2.8575" y="-6.6675" size="1.27" layer="27" font="vector" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.4999" y1="2.5999" x2="-3.4501" y2="2.9001" layer="51"/>
<rectangle x1="-4.4999" y1="2.0999" x2="-3.4501" y2="2.4001" layer="51"/>
<rectangle x1="-4.4999" y1="1.5999" x2="-3.4501" y2="1.9001" layer="51"/>
<rectangle x1="-4.4999" y1="1.0999" x2="-3.4501" y2="1.4001" layer="51"/>
<rectangle x1="-4.4999" y1="0.5999" x2="-3.4501" y2="0.9001" layer="51"/>
<rectangle x1="-4.4999" y1="0.0999" x2="-3.4501" y2="0.4001" layer="51"/>
<rectangle x1="-4.4999" y1="-0.4001" x2="-3.4501" y2="-0.0999" layer="51"/>
<rectangle x1="-4.4999" y1="-0.9001" x2="-3.4501" y2="-0.5999" layer="51"/>
<rectangle x1="-4.4999" y1="-1.4001" x2="-3.4501" y2="-1.0999" layer="51"/>
<rectangle x1="-4.4999" y1="-1.9001" x2="-3.4501" y2="-1.5999" layer="51"/>
<rectangle x1="-4.4999" y1="-2.4001" x2="-3.4501" y2="-2.0999" layer="51"/>
<rectangle x1="-4.4999" y1="-2.9001" x2="-3.4501" y2="-2.5999" layer="51"/>
<rectangle x1="-2.9001" y1="-4.4999" x2="-2.5999" y2="-3.4501" layer="51"/>
<rectangle x1="-2.4001" y1="-4.4999" x2="-2.0999" y2="-3.4501" layer="51"/>
<rectangle x1="-1.9001" y1="-4.4999" x2="-1.5999" y2="-3.4501" layer="51"/>
<rectangle x1="-1.4001" y1="-4.4999" x2="-1.0999" y2="-3.4501" layer="51"/>
<rectangle x1="-0.9001" y1="-4.4999" x2="-0.5999" y2="-3.4501" layer="51"/>
<rectangle x1="-0.4001" y1="-4.4999" x2="-0.0999" y2="-3.4501" layer="51"/>
<rectangle x1="0.0999" y1="-4.4999" x2="0.4001" y2="-3.4501" layer="51"/>
<rectangle x1="0.5999" y1="-4.4999" x2="0.9001" y2="-3.4501" layer="51"/>
<rectangle x1="1.0999" y1="-4.4999" x2="1.4001" y2="-3.4501" layer="51"/>
<rectangle x1="1.5999" y1="-4.4999" x2="1.9001" y2="-3.4501" layer="51"/>
<rectangle x1="2.0999" y1="-4.4999" x2="2.4001" y2="-3.4501" layer="51"/>
<rectangle x1="2.5999" y1="-4.4999" x2="2.9001" y2="-3.4501" layer="51"/>
<rectangle x1="3.4501" y1="-2.9001" x2="4.4999" y2="-2.5999" layer="51"/>
<rectangle x1="3.4501" y1="-2.4001" x2="4.4999" y2="-2.0999" layer="51"/>
<rectangle x1="3.4501" y1="-1.9001" x2="4.4999" y2="-1.5999" layer="51"/>
<rectangle x1="3.4501" y1="-1.4001" x2="4.4999" y2="-1.0999" layer="51"/>
<rectangle x1="3.4501" y1="-0.9001" x2="4.4999" y2="-0.5999" layer="51"/>
<rectangle x1="3.4501" y1="-0.4001" x2="4.4999" y2="-0.0999" layer="51"/>
<rectangle x1="3.4501" y1="0.0999" x2="4.4999" y2="0.4001" layer="51"/>
<rectangle x1="3.4501" y1="0.5999" x2="4.4999" y2="0.9001" layer="51"/>
<rectangle x1="3.4501" y1="1.0999" x2="4.4999" y2="1.4001" layer="51"/>
<rectangle x1="3.4501" y1="1.5999" x2="4.4999" y2="1.9001" layer="51"/>
<rectangle x1="3.4501" y1="2.0999" x2="4.4999" y2="2.4001" layer="51"/>
<rectangle x1="3.4501" y1="2.5999" x2="4.4999" y2="2.9001" layer="51"/>
<rectangle x1="2.5999" y1="3.4501" x2="2.9001" y2="4.4999" layer="51"/>
<rectangle x1="2.0999" y1="3.4501" x2="2.4001" y2="4.4999" layer="51"/>
<rectangle x1="1.5999" y1="3.4501" x2="1.9001" y2="4.4999" layer="51"/>
<rectangle x1="1.0999" y1="3.4501" x2="1.4001" y2="4.4999" layer="51"/>
<rectangle x1="0.5999" y1="3.4501" x2="0.9001" y2="4.4999" layer="51"/>
<rectangle x1="0.0999" y1="3.4501" x2="0.4001" y2="4.4999" layer="51"/>
<rectangle x1="-0.4001" y1="3.4501" x2="-0.0999" y2="4.4999" layer="51"/>
<rectangle x1="-0.9001" y1="3.4501" x2="-0.5999" y2="4.4999" layer="51"/>
<rectangle x1="-1.4001" y1="3.4501" x2="-1.0999" y2="4.4999" layer="51"/>
<rectangle x1="-1.9001" y1="3.4501" x2="-1.5999" y2="4.4999" layer="51"/>
<rectangle x1="-2.4001" y1="3.4501" x2="-2.0999" y2="4.4999" layer="51"/>
<rectangle x1="-2.9001" y1="3.4501" x2="-2.5999" y2="4.4999" layer="51"/>
</package>
<package name="SOIC127P1034X264-20N">
<smd name="1" x="-4.699" y="5.715" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="2" x="-4.699" y="4.445" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="3" x="-4.699" y="3.175" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="4" x="-4.699" y="1.905" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="5" x="-4.699" y="0.635" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="6" x="-4.699" y="-0.635" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="7" x="-4.699" y="-1.905" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="8" x="-4.699" y="-3.175" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="9" x="-4.699" y="-4.445" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="10" x="-4.699" y="-5.715" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="11" x="4.699" y="-5.715" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="12" x="4.699" y="-4.445" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="13" x="4.699" y="-3.175" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="14" x="4.699" y="-1.905" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="15" x="4.699" y="-0.635" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="16" x="4.699" y="0.635" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="17" x="4.699" y="1.905" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="18" x="4.699" y="3.175" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="19" x="4.699" y="4.445" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="20" x="4.699" y="5.715" dx="1.9812" dy="0.5588" layer="1"/>
<wire x1="-6.1976" y1="-5.5372" x2="-6.1976" y2="-5.8928" width="0.1524" layer="49"/>
<wire x1="-6.1976" y1="-5.8928" x2="-5.9436" y2="-5.8928" width="0.1524" layer="49"/>
<wire x1="-5.9436" y1="-5.8928" x2="-5.9436" y2="-5.5372" width="0.1524" layer="49"/>
<wire x1="6.1976" y1="5.8928" x2="6.1976" y2="5.5372" width="0.1524" layer="49"/>
<wire x1="6.1976" y1="5.5372" x2="5.9436" y2="5.5372" width="0.1524" layer="49"/>
<wire x1="5.9436" y1="5.5372" x2="5.9436" y2="5.8928" width="0.1524" layer="49"/>
<wire x1="-3.7846" y1="5.461" x2="-3.7846" y2="5.969" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="5.969" x2="-5.334" y2="5.969" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="5.969" x2="-5.334" y2="5.461" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="5.461" x2="-3.7846" y2="5.461" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="4.191" x2="-3.7846" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="4.699" x2="-5.334" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="4.699" x2="-5.334" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="4.191" x2="-3.7846" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="2.921" x2="-3.7846" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="3.429" x2="-5.334" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="3.429" x2="-5.334" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="2.921" x2="-3.7846" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="1.651" x2="-3.7846" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="2.159" x2="-5.334" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="2.159" x2="-5.334" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="1.651" x2="-3.7846" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="0.381" x2="-3.7846" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="0.889" x2="-5.334" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="0.889" x2="-5.334" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="0.381" x2="-3.7846" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-0.889" x2="-3.7846" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-0.381" x2="-5.334" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-0.381" x2="-5.334" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-0.889" x2="-3.7846" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-2.159" x2="-3.7846" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-1.651" x2="-5.334" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-1.651" x2="-5.334" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-2.159" x2="-3.7846" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-3.429" x2="-3.7846" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-2.921" x2="-5.334" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-2.921" x2="-5.334" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-3.429" x2="-3.7846" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-4.699" x2="-3.7846" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-4.191" x2="-5.334" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-4.191" x2="-5.334" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-4.699" x2="-3.7846" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-5.969" x2="-3.7846" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-5.461" x2="-5.334" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-5.461" x2="-5.334" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-5.969" x2="-3.7846" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-5.461" x2="3.7846" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-5.969" x2="5.334" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-5.969" x2="5.334" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-5.461" x2="3.7846" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-4.191" x2="3.7846" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-4.699" x2="5.334" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-4.699" x2="5.334" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-4.191" x2="3.7846" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-2.921" x2="3.7846" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-3.429" x2="5.334" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-3.429" x2="5.334" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-2.921" x2="3.7846" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-1.651" x2="3.7846" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-2.159" x2="5.334" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-2.159" x2="5.334" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-1.651" x2="3.7846" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-0.381" x2="3.7846" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-0.889" x2="5.334" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.889" x2="5.334" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.381" x2="3.7846" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="0.889" x2="3.7846" y2="0.381" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="0.381" x2="5.334" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.334" y1="0.381" x2="5.334" y2="0.889" width="0.1524" layer="51"/>
<wire x1="5.334" y1="0.889" x2="3.7846" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="2.159" x2="3.7846" y2="1.651" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="1.651" x2="5.334" y2="1.651" width="0.1524" layer="51"/>
<wire x1="5.334" y1="1.651" x2="5.334" y2="2.159" width="0.1524" layer="51"/>
<wire x1="5.334" y1="2.159" x2="3.7846" y2="2.159" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="3.429" x2="3.7846" y2="2.921" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="2.921" x2="5.334" y2="2.921" width="0.1524" layer="51"/>
<wire x1="5.334" y1="2.921" x2="5.334" y2="3.429" width="0.1524" layer="51"/>
<wire x1="5.334" y1="3.429" x2="3.7846" y2="3.429" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="4.699" x2="3.7846" y2="4.191" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="4.191" x2="5.334" y2="4.191" width="0.1524" layer="51"/>
<wire x1="5.334" y1="4.191" x2="5.334" y2="4.699" width="0.1524" layer="51"/>
<wire x1="5.334" y1="4.699" x2="3.7846" y2="4.699" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="5.969" x2="3.7846" y2="5.461" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="5.461" x2="5.334" y2="5.461" width="0.1524" layer="51"/>
<wire x1="5.334" y1="5.461" x2="5.334" y2="5.969" width="0.1524" layer="51"/>
<wire x1="5.334" y1="5.969" x2="3.7846" y2="5.969" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-6.5024" x2="3.7846" y2="-6.5024" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-6.5024" x2="3.7846" y2="6.5024" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="6.5024" x2="0.3048" y2="6.5024" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="6.5024" x2="-0.3048" y2="6.5024" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="6.5024" x2="-3.7846" y2="6.5024" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="6.5024" x2="-3.7846" y2="-6.5024" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="6.5024" x2="-0.3048" y2="6.5024" width="0" layer="51" curve="-180"/>
<text x="-5.5372" y="6.1468" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="5.9436" y1="-6.7564" x2="-5.9436" y2="-6.7564" width="0.1524" layer="39"/>
<wire x1="-5.9436" y1="-6.7564" x2="-5.9436" y2="6.7564" width="0.4064" layer="39"/>
<wire x1="-5.9436" y1="6.7564" x2="5.9436" y2="6.7564" width="0.4064" layer="39"/>
<wire x1="5.9436" y1="6.7564" x2="5.9436" y2="-6.7564" width="0.4064" layer="39"/>
<wire x1="3.7846" y1="6.3246" x2="3.7846" y2="6.5024" width="0.1524" layer="21"/>
<wire x1="-3.7846" y1="-6.3246" x2="-3.7846" y2="-6.5024" width="0.1524" layer="21"/>
<wire x1="-3.7846" y1="-6.5024" x2="3.7846" y2="-6.5024" width="0.1524" layer="21"/>
<wire x1="3.7846" y1="-6.5024" x2="3.7846" y2="-6.3246" width="0.1524" layer="21"/>
<wire x1="3.7846" y1="6.5024" x2="0.3048" y2="6.5024" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="6.5024" x2="-0.3048" y2="6.5024" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="6.5024" x2="-3.7846" y2="6.5024" width="0.1524" layer="21"/>
<wire x1="-3.7846" y1="6.5024" x2="-3.7846" y2="6.3246" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="6.5024" x2="-0.3048" y2="6.5024" width="0" layer="21" curve="-180"/>
<text x="-5.5372" y="6.1468" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-4.572" y="7.3406" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.8166" y="-9.3726" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="STM32F050C6T6A">
<wire x1="-25.4" y1="25.4" x2="22.86" y2="25.4" width="0.4064" layer="94"/>
<wire x1="25.4" y1="22.86" x2="25.4" y2="-25.4" width="0.4064" layer="94"/>
<wire x1="22.86" y1="-27.94" x2="-25.4" y2="-27.94" width="0.4064" layer="94"/>
<text x="-27.94" y="26.0985" size="1.778" layer="95">&gt;NAME</text>
<text x="-27.94" y="-30.48" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VBATT" x="-30.48" y="12.7" length="short"/>
<pin name="PC13" x="-30.48" y="10.16" length="short"/>
<pin name="PC14_OSC32_IN" x="-30.48" y="7.62" length="short"/>
<pin name="PC15_OSC32_OUT" x="-30.48" y="5.08" length="short"/>
<pin name="PF0_OSC_IN" x="-30.48" y="2.54" length="short"/>
<pin name="PF1_OSC_OUT" x="-30.48" y="0" length="short" direction="in"/>
<pin name="NRST" x="-30.48" y="-2.54" length="short"/>
<pin name="VSSA" x="-30.48" y="-5.08" length="short"/>
<pin name="VDDA" x="-30.48" y="-7.62" length="short"/>
<pin name="PA0" x="-30.48" y="-10.16" length="short"/>
<pin name="PA1" x="-30.48" y="-12.7" length="short"/>
<pin name="PA2" x="-30.48" y="-15.24" length="short"/>
<pin name="PA3" x="-15.24" y="-30.48" length="short" rot="R90"/>
<pin name="PA4" x="-12.7" y="-30.48" length="short" rot="R90"/>
<pin name="PA5" x="-10.16" y="-30.48" length="short" rot="R90"/>
<pin name="PA6" x="-7.62" y="-30.48" length="short" rot="R90"/>
<pin name="PA7" x="-5.08" y="-30.48" length="short" rot="R90"/>
<pin name="PB0" x="-2.54" y="-30.48" length="short" rot="R90"/>
<pin name="PB1" x="0" y="-30.48" length="short" rot="R90"/>
<pin name="PB2" x="2.54" y="-30.48" length="short" rot="R90"/>
<pin name="PB10" x="5.08" y="-30.48" length="short" rot="R90"/>
<pin name="PB11" x="7.62" y="-30.48" length="short" rot="R90"/>
<pin name="VSS" x="10.16" y="-30.48" length="short" direction="pwr" rot="R90"/>
<pin name="VDD" x="12.7" y="-30.48" length="short" direction="pwr" rot="R90"/>
<pin name="PB12" x="27.94" y="-15.24" length="short" rot="R180"/>
<pin name="PB13" x="27.94" y="-12.7" length="short" rot="R180"/>
<pin name="PB14" x="27.94" y="-10.16" length="short" rot="R180"/>
<pin name="PB15" x="27.94" y="-7.62" length="short" rot="R180"/>
<pin name="PA8" x="27.94" y="-5.08" length="short" rot="R180"/>
<pin name="PA9" x="27.94" y="-2.54" length="short" rot="R180"/>
<pin name="PA10" x="27.94" y="0" length="short" rot="R180"/>
<pin name="PA11" x="27.94" y="2.54" length="short" rot="R180"/>
<pin name="PA12" x="27.94" y="5.08" length="short" rot="R180"/>
<pin name="PA13" x="27.94" y="7.62" length="short" rot="R180"/>
<pin name="PF6" x="27.94" y="10.16" length="short" rot="R180"/>
<pin name="PF7" x="27.94" y="12.7" length="short" rot="R180"/>
<pin name="PA14" x="12.7" y="27.94" length="short" rot="R270"/>
<pin name="PA15" x="10.16" y="27.94" length="short" rot="R270"/>
<pin name="PB3" x="7.62" y="27.94" length="short" rot="R270"/>
<pin name="PB4" x="5.08" y="27.94" length="short" rot="R270"/>
<pin name="PB5" x="2.54" y="27.94" length="short" rot="R270"/>
<pin name="PB6" x="0" y="27.94" length="short" rot="R270"/>
<pin name="PB7" x="-2.54" y="27.94" length="short" rot="R270"/>
<pin name="BOOT0" x="-5.08" y="27.94" length="short" rot="R270"/>
<pin name="PB8" x="-7.62" y="27.94" length="short" rot="R270"/>
<pin name="PB9" x="-10.16" y="27.94" length="short" rot="R270"/>
<pin name="VSS_" x="-12.7" y="27.94" length="short" direction="pwr" rot="R270"/>
<pin name="VDD_" x="-15.24" y="27.94" length="short" direction="pwr" rot="R270"/>
<wire x1="-27.94" y1="-25.4" x2="-27.94" y2="22.86" width="0.4064" layer="94"/>
<wire x1="22.86" y1="25.4" x2="25.4" y2="22.86" width="0.254" layer="94"/>
<wire x1="-27.94" y1="22.86" x2="-25.4" y2="25.4" width="0.254" layer="94"/>
<wire x1="-27.94" y1="-25.4" x2="-25.4" y2="-27.94" width="0.254" layer="94"/>
<wire x1="22.86" y1="-27.94" x2="25.4" y2="-25.4" width="0.254" layer="94"/>
<circle x="-22.86" y="20.32" radius="1.27" width="0.254" layer="94"/>
</symbol>
<symbol name="MCP2200-I/SO">
<pin name="VDD" x="-20.32" y="20.32" length="middle" direction="pwr"/>
<pin name="VUSB" x="-20.32" y="17.78" length="middle" direction="pwr"/>
<pin name="RST*" x="-20.32" y="12.7" length="middle" direction="in"/>
<pin name="OSC1" x="-20.32" y="10.16" length="middle" direction="in"/>
<pin name="RX" x="-20.32" y="7.62" length="middle" direction="in"/>
<pin name="CTS*" x="-20.32" y="5.08" length="middle" direction="in"/>
<pin name="GP0/SSPND" x="-20.32" y="-2.54" length="middle"/>
<pin name="GP1/USBCFG" x="-20.32" y="-5.08" length="middle"/>
<pin name="GP2" x="-20.32" y="-7.62" length="middle"/>
<pin name="GP3" x="-20.32" y="-10.16" length="middle"/>
<pin name="GP4" x="-20.32" y="-12.7" length="middle"/>
<pin name="GP5" x="-20.32" y="-15.24" length="middle"/>
<pin name="GP6/RXLED" x="-20.32" y="-17.78" length="middle"/>
<pin name="GP7/TXLED" x="-20.32" y="-20.32" length="middle"/>
<pin name="VSS" x="-20.32" y="-27.94" length="middle" direction="pwr"/>
<pin name="D-" x="20.32" y="-25.4" length="middle" rot="R180"/>
<pin name="D+" x="20.32" y="-22.86" length="middle" rot="R180"/>
<pin name="TX" x="20.32" y="-2.54" length="middle" direction="out" rot="R180"/>
<pin name="RTS*" x="20.32" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="OSC2" x="20.32" y="15.24" length="middle" direction="out" rot="R180"/>
<wire x1="-15.24" y1="25.4" x2="-15.24" y2="-33.02" width="0.4064" layer="94"/>
<wire x1="-15.24" y1="-33.02" x2="15.24" y2="-33.02" width="0.4064" layer="94"/>
<wire x1="15.24" y1="-33.02" x2="15.24" y2="25.4" width="0.4064" layer="94"/>
<wire x1="15.24" y1="25.4" x2="-15.24" y2="25.4" width="0.4064" layer="94"/>
<text x="-4.7244" y="27.4066" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-6.9596" y="-35.941" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="STM32F050C6T6A">
<gates>
<gate name="G$1" symbol="STM32F050C6T6A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LQFP48">
<connects>
<connect gate="G$1" pin="BOOT0" pad="44"/>
<connect gate="G$1" pin="NRST" pad="7"/>
<connect gate="G$1" pin="PA0" pad="10"/>
<connect gate="G$1" pin="PA1" pad="11"/>
<connect gate="G$1" pin="PA10" pad="31"/>
<connect gate="G$1" pin="PA11" pad="32"/>
<connect gate="G$1" pin="PA12" pad="33"/>
<connect gate="G$1" pin="PA13" pad="34"/>
<connect gate="G$1" pin="PA14" pad="37"/>
<connect gate="G$1" pin="PA15" pad="38"/>
<connect gate="G$1" pin="PA2" pad="12"/>
<connect gate="G$1" pin="PA3" pad="13"/>
<connect gate="G$1" pin="PA4" pad="14"/>
<connect gate="G$1" pin="PA5" pad="15"/>
<connect gate="G$1" pin="PA6" pad="16"/>
<connect gate="G$1" pin="PA7" pad="17"/>
<connect gate="G$1" pin="PA8" pad="29"/>
<connect gate="G$1" pin="PA9" pad="30"/>
<connect gate="G$1" pin="PB0" pad="18"/>
<connect gate="G$1" pin="PB1" pad="19"/>
<connect gate="G$1" pin="PB10" pad="21"/>
<connect gate="G$1" pin="PB11" pad="22"/>
<connect gate="G$1" pin="PB12" pad="25"/>
<connect gate="G$1" pin="PB13" pad="26"/>
<connect gate="G$1" pin="PB14" pad="27"/>
<connect gate="G$1" pin="PB15" pad="28"/>
<connect gate="G$1" pin="PB2" pad="20"/>
<connect gate="G$1" pin="PB3" pad="39"/>
<connect gate="G$1" pin="PB4" pad="40"/>
<connect gate="G$1" pin="PB5" pad="41"/>
<connect gate="G$1" pin="PB6" pad="42"/>
<connect gate="G$1" pin="PB7" pad="43"/>
<connect gate="G$1" pin="PB8" pad="45"/>
<connect gate="G$1" pin="PB9" pad="46"/>
<connect gate="G$1" pin="PC13" pad="2"/>
<connect gate="G$1" pin="PC14_OSC32_IN" pad="3"/>
<connect gate="G$1" pin="PC15_OSC32_OUT" pad="4"/>
<connect gate="G$1" pin="PF0_OSC_IN" pad="5"/>
<connect gate="G$1" pin="PF1_OSC_OUT" pad="6"/>
<connect gate="G$1" pin="PF6" pad="35"/>
<connect gate="G$1" pin="PF7" pad="36"/>
<connect gate="G$1" pin="VBATT" pad="1"/>
<connect gate="G$1" pin="VDD" pad="24"/>
<connect gate="G$1" pin="VDDA" pad="9"/>
<connect gate="G$1" pin="VDD_" pad="48"/>
<connect gate="G$1" pin="VSS" pad="23"/>
<connect gate="G$1" pin="VSSA" pad="8"/>
<connect gate="G$1" pin="VSS_" pad="47"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MCP2200-I/SO">
<description>USB 2.0 to UART Protocol Converter with GPIO,20SOIC</description>
<gates>
<gate name="A" symbol="MCP2200-I/SO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC127P1034X264-20N">
<connects>
<connect gate="A" pin="CTS*" pad="13"/>
<connect gate="A" pin="D+" pad="19"/>
<connect gate="A" pin="D-" pad="18"/>
<connect gate="A" pin="GP0/SSPND" pad="16"/>
<connect gate="A" pin="GP1/USBCFG" pad="15"/>
<connect gate="A" pin="GP2" pad="14"/>
<connect gate="A" pin="GP3" pad="9"/>
<connect gate="A" pin="GP4" pad="8"/>
<connect gate="A" pin="GP5" pad="7"/>
<connect gate="A" pin="GP6/RXLED" pad="6"/>
<connect gate="A" pin="GP7/TXLED" pad="5"/>
<connect gate="A" pin="OSC1" pad="2"/>
<connect gate="A" pin="OSC2" pad="3"/>
<connect gate="A" pin="RST*" pad="4"/>
<connect gate="A" pin="RTS*" pad="11"/>
<connect gate="A" pin="RX" pad="12"/>
<connect gate="A" pin="TX" pad="10"/>
<connect gate="A" pin="VDD" pad="1"/>
<connect gate="A" pin="VSS" pad="20"/>
<connect gate="A" pin="VUSB" pad="17"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="MCP2200-I/SO" constant="no"/>
<attribute name="OC_FARNELL" value="1781148" constant="no"/>
<attribute name="OC_NEWARK" value="52R9947" constant="no"/>
<attribute name="PACKAGE" value="SOIC-20" constant="no"/>
<attribute name="SUPPLIER" value="Microchip" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" deviceset="A3L-LOC" device=""/>
<part name="U$1" library="equinox" deviceset="STM32F050C6T6A" device=""/>
<part name="U$2" library="equinox" deviceset="MCP2200-I/SO" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="U$1" gate="G$1" x="195.58" y="134.62"/>
<instance part="U$2" gate="A" x="76.2" y="213.36"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
