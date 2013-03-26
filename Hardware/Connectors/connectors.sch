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
<symbol name="A4L-LOC">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94" font="vector">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94" font="vector">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94" font="vector">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
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
<package name="EQUINOX_LOGO_SMALL">
<rectangle x1="1.0617" y1="-5.1817" x2="1.2141" y2="-5.1563" layer="200" rot="R180"/>
<rectangle x1="0.7315" y1="-5.1563" x2="1.3157" y2="-5.1309" layer="200" rot="R180"/>
<rectangle x1="0.7315" y1="-5.1309" x2="1.4173" y2="-5.1055" layer="200" rot="R180"/>
<rectangle x1="1.8491" y1="-5.1055" x2="2.3825" y2="-5.0801" layer="200" rot="R180"/>
<rectangle x1="0.7315" y1="-5.1055" x2="1.5443" y2="-5.0801" layer="200" rot="R180"/>
<rectangle x1="1.7729" y1="-5.0801" x2="2.4079" y2="-5.0547" layer="200" rot="R180"/>
<rectangle x1="0.6045" y1="-5.0801" x2="1.5951" y2="-5.0547" layer="200" rot="R180"/>
<rectangle x1="0.5029" y1="-5.0547" x2="2.4333" y2="-5.0293" layer="200" rot="R180"/>
<rectangle x1="0.4267" y1="-5.0293" x2="2.6873" y2="-5.0039" layer="200" rot="R180"/>
<rectangle x1="0.3759" y1="-5.0039" x2="2.7635" y2="-4.9785" layer="200" rot="R180"/>
<rectangle x1="0.3759" y1="-4.9785" x2="2.8905" y2="-4.9531" layer="200" rot="R180"/>
<rectangle x1="1.9253" y1="-4.9531" x2="3.1699" y2="-4.9277" layer="200" rot="R180"/>
<rectangle x1="0.3505" y1="-4.9531" x2="0.7569" y2="-4.9277" layer="200" rot="R180"/>
<rectangle x1="2.0777" y1="-4.9277" x2="3.1953" y2="-4.9023" layer="200" rot="R180"/>
<rectangle x1="0.3251" y1="-4.9277" x2="0.5283" y2="-4.9023" layer="200" rot="R180"/>
<rectangle x1="2.1285" y1="-4.9023" x2="3.1953" y2="-4.8769" layer="200" rot="R180"/>
<rectangle x1="-0.0051" y1="-4.9023" x2="0.2235" y2="-4.8769" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="-4.8769" x2="3.2207" y2="-4.8515" layer="200" rot="R180"/>
<rectangle x1="0.0457" y1="-4.8769" x2="0.0711" y2="-4.8515" layer="200" rot="R180"/>
<rectangle x1="2.5603" y1="-4.8515" x2="3.2715" y2="-4.8261" layer="200" rot="R180"/>
<rectangle x1="3.1699" y1="-4.8261" x2="3.3985" y2="-4.8007" layer="200" rot="R180"/>
<rectangle x1="2.6111" y1="-4.8261" x2="3.1191" y2="-4.8007" layer="200" rot="R180"/>
<rectangle x1="3.1699" y1="-4.8007" x2="3.4239" y2="-4.7753" layer="200" rot="R180"/>
<rectangle x1="2.6619" y1="-4.8007" x2="3.0937" y2="-4.7753" layer="200" rot="R180"/>
<rectangle x1="3.1699" y1="-4.7753" x2="3.4747" y2="-4.7499" layer="200" rot="R180"/>
<rectangle x1="2.7127" y1="-4.7753" x2="3.0937" y2="-4.7499" layer="200" rot="R180"/>
<rectangle x1="2.8905" y1="-4.7499" x2="3.5001" y2="-4.7245" layer="200" rot="R180"/>
<rectangle x1="3.0175" y1="-4.7245" x2="3.5255" y2="-4.6991" layer="200" rot="R180"/>
<rectangle x1="3.0429" y1="-4.6991" x2="3.5763" y2="-4.6737" layer="200" rot="R180"/>
<rectangle x1="3.0937" y1="-4.6737" x2="3.6271" y2="-4.6483" layer="200" rot="R180"/>
<rectangle x1="3.3223" y1="-4.6483" x2="3.6779" y2="-4.6229" layer="200" rot="R180"/>
<rectangle x1="3.3731" y1="-4.6229" x2="3.6779" y2="-4.5975" layer="200" rot="R180"/>
<rectangle x1="3.3985" y1="-4.5975" x2="3.6779" y2="-4.5721" layer="200" rot="R180"/>
<rectangle x1="3.4493" y1="-4.5721" x2="3.7033" y2="-4.5467" layer="200" rot="R180"/>
<rectangle x1="3.6525" y1="-4.5467" x2="3.6779" y2="-4.5213" layer="200" rot="R180"/>
<rectangle x1="3.7287" y1="-4.5213" x2="3.8303" y2="-4.4959" layer="200" rot="R180"/>
<rectangle x1="3.7541" y1="-4.4959" x2="3.9065" y2="-4.4705" layer="200" rot="R180"/>
<rectangle x1="3.9827" y1="-4.4197" x2="4.0843" y2="-4.3943" layer="200" rot="R180"/>
<rectangle x1="3.9827" y1="-4.3943" x2="4.0843" y2="-4.3689" layer="200" rot="R180"/>
<rectangle x1="4.0335" y1="-4.3689" x2="4.0589" y2="-4.3435" layer="200" rot="R180"/>
<rectangle x1="4.4399" y1="-4.3181" x2="4.5923" y2="-4.2927" layer="200" rot="R180"/>
<rectangle x1="4.4145" y1="-4.2927" x2="4.6431" y2="-4.2673" layer="200" rot="R180"/>
<rectangle x1="4.3891" y1="-4.2673" x2="4.6685" y2="-4.2419" layer="200" rot="R180"/>
<rectangle x1="4.2875" y1="-4.2419" x2="4.6939" y2="-4.2165" layer="200" rot="R180"/>
<rectangle x1="4.2621" y1="-4.2165" x2="4.7193" y2="-4.1911" layer="200" rot="R180"/>
<rectangle x1="4.2875" y1="-4.1911" x2="4.7701" y2="-4.1657" layer="200" rot="R180"/>
<rectangle x1="4.3383" y1="-4.1657" x2="4.7701" y2="-4.1403" layer="200" rot="R180"/>
<rectangle x1="4.4145" y1="-4.1403" x2="4.7955" y2="-4.1149" layer="200" rot="R180"/>
<rectangle x1="4.4399" y1="-4.1149" x2="4.7955" y2="-4.0895" layer="200" rot="R180"/>
<rectangle x1="4.4653" y1="-4.0895" x2="4.8209" y2="-4.0641" layer="200" rot="R180"/>
<rectangle x1="4.5161" y1="-4.0641" x2="4.8971" y2="-4.0387" layer="200" rot="R180"/>
<rectangle x1="5.1257" y1="-4.0387" x2="5.2273" y2="-4.0133" layer="200" rot="R180"/>
<rectangle x1="4.5923" y1="-4.0387" x2="4.9733" y2="-4.0133" layer="200" rot="R180"/>
<rectangle x1="5.1003" y1="-4.0133" x2="5.2781" y2="-3.9879" layer="200" rot="R180"/>
<rectangle x1="4.6177" y1="-4.0133" x2="4.9987" y2="-3.9879" layer="200" rot="R180"/>
<rectangle x1="5.0749" y1="-3.9879" x2="5.3035" y2="-3.9625" layer="200" rot="R180"/>
<rectangle x1="4.6177" y1="-3.9879" x2="5.0241" y2="-3.9625" layer="200" rot="R180"/>
<rectangle x1="4.6939" y1="-3.9625" x2="5.3035" y2="-3.9371" layer="200" rot="R180"/>
<rectangle x1="4.7701" y1="-3.9371" x2="5.3035" y2="-3.9117" layer="200" rot="R180"/>
<rectangle x1="4.7955" y1="-3.9117" x2="5.3289" y2="-3.8863" layer="200" rot="R180"/>
<rectangle x1="4.8209" y1="-3.8863" x2="5.4051" y2="-3.8609" layer="200" rot="R180"/>
<rectangle x1="4.8463" y1="-3.8609" x2="5.4813" y2="-3.8355" layer="200" rot="R180"/>
<rectangle x1="4.8971" y1="-3.8355" x2="5.4813" y2="-3.8101" layer="200" rot="R180"/>
<rectangle x1="4.9225" y1="-3.8101" x2="5.5067" y2="-3.7847" layer="200" rot="R180"/>
<rectangle x1="4.9733" y1="-3.7847" x2="5.5067" y2="-3.7593" layer="200" rot="R180"/>
<rectangle x1="4.9987" y1="-3.7593" x2="5.5321" y2="-3.7339" layer="200" rot="R180"/>
<rectangle x1="5.0241" y1="-3.7339" x2="5.5321" y2="-3.7085" layer="200" rot="R180"/>
<rectangle x1="5.0241" y1="-3.7085" x2="5.5575" y2="-3.6831" layer="200" rot="R180"/>
<rectangle x1="5.0495" y1="-3.6831" x2="5.7099" y2="-3.6577" layer="200" rot="R180"/>
<rectangle x1="5.1003" y1="-3.6577" x2="5.7607" y2="-3.6323" layer="200" rot="R180"/>
<rectangle x1="5.1257" y1="-3.6323" x2="5.7861" y2="-3.6069" layer="200" rot="R180"/>
<rectangle x1="5.1765" y1="-3.6069" x2="5.8115" y2="-3.5815" layer="200" rot="R180"/>
<rectangle x1="5.1765" y1="-3.5815" x2="5.8369" y2="-3.5561" layer="200" rot="R180"/>
<rectangle x1="5.2019" y1="-3.5561" x2="5.8369" y2="-3.5307" layer="200" rot="R180"/>
<rectangle x1="5.2527" y1="-3.5307" x2="5.8623" y2="-3.5053" layer="200" rot="R180"/>
<rectangle x1="5.2781" y1="-3.5053" x2="5.8877" y2="-3.4799" layer="200" rot="R180"/>
<rectangle x1="5.3035" y1="-3.4799" x2="5.9385" y2="-3.4545" layer="200" rot="R180"/>
<rectangle x1="5.3289" y1="-3.4545" x2="6.0655" y2="-3.4291" layer="200" rot="R180"/>
<rectangle x1="5.3797" y1="-3.4291" x2="6.0909" y2="-3.4037" layer="200" rot="R180"/>
<rectangle x1="5.4051" y1="-3.4037" x2="6.0909" y2="-3.3783" layer="200" rot="R180"/>
<rectangle x1="5.4305" y1="-3.3783" x2="6.0909" y2="-3.3529" layer="200" rot="R180"/>
<rectangle x1="5.4559" y1="-3.3529" x2="6.0909" y2="-3.3275" layer="200" rot="R180"/>
<rectangle x1="5.4813" y1="-3.3275" x2="6.0909" y2="-3.3021" layer="200" rot="R180"/>
<rectangle x1="5.5067" y1="-3.3021" x2="6.0655" y2="-3.2767" layer="200" rot="R180"/>
<rectangle x1="5.5321" y1="-3.2767" x2="6.0655" y2="-3.2513" layer="200" rot="R180"/>
<rectangle x1="5.5829" y1="-3.2513" x2="6.2687" y2="-3.2259" layer="200" rot="R180"/>
<rectangle x1="5.6083" y1="-3.2259" x2="6.3195" y2="-3.2005" layer="200" rot="R180"/>
<rectangle x1="5.6337" y1="-3.2005" x2="6.3449" y2="-3.1751" layer="200" rot="R180"/>
<rectangle x1="5.6591" y1="-3.1751" x2="6.3449" y2="-3.1497" layer="200" rot="R180"/>
<rectangle x1="5.6845" y1="-3.1497" x2="6.3449" y2="-3.1243" layer="200" rot="R180"/>
<rectangle x1="5.7099" y1="-3.1243" x2="6.3449" y2="-3.0989" layer="200" rot="R180"/>
<rectangle x1="5.7607" y1="-3.0989" x2="6.3703" y2="-3.0735" layer="200" rot="R180"/>
<rectangle x1="5.7861" y1="-3.0735" x2="6.3957" y2="-3.0481" layer="200" rot="R180"/>
<rectangle x1="5.8115" y1="-3.0481" x2="6.4211" y2="-3.0227" layer="200" rot="R180"/>
<rectangle x1="5.8115" y1="-3.0227" x2="6.4211" y2="-2.9973" layer="200" rot="R180"/>
<rectangle x1="5.8369" y1="-2.9973" x2="6.4465" y2="-2.9719" layer="200" rot="R180"/>
<rectangle x1="5.8623" y1="-2.9719" x2="6.4465" y2="-2.9465" layer="200" rot="R180"/>
<rectangle x1="5.8877" y1="-2.9465" x2="6.5989" y2="-2.9211" layer="200" rot="R180"/>
<rectangle x1="5.9131" y1="-2.9211" x2="6.6243" y2="-2.8957" layer="200" rot="R180"/>
<rectangle x1="5.9385" y1="-2.8957" x2="6.6497" y2="-2.8703" layer="200" rot="R180"/>
<rectangle x1="5.9385" y1="-2.8703" x2="6.6497" y2="-2.8449" layer="200" rot="R180"/>
<rectangle x1="5.9639" y1="-2.8449" x2="6.6497" y2="-2.8195" layer="200" rot="R180"/>
<rectangle x1="5.9893" y1="-2.8195" x2="6.6497" y2="-2.7941" layer="200" rot="R180"/>
<rectangle x1="6.0147" y1="-2.7941" x2="6.6751" y2="-2.7687" layer="200" rot="R180"/>
<rectangle x1="6.0401" y1="-2.7687" x2="6.7005" y2="-2.7433" layer="200" rot="R180"/>
<rectangle x1="6.0655" y1="-2.7433" x2="6.7005" y2="-2.7179" layer="200" rot="R180"/>
<rectangle x1="6.0909" y1="-2.7179" x2="6.7259" y2="-2.6925" layer="200" rot="R180"/>
<rectangle x1="6.0909" y1="-2.6925" x2="6.7513" y2="-2.6671" layer="200" rot="R180"/>
<rectangle x1="6.1163" y1="-2.6671" x2="6.7513" y2="-2.6417" layer="200" rot="R180"/>
<rectangle x1="6.1163" y1="-2.6417" x2="6.7513" y2="-2.6163" layer="200" rot="R180"/>
<rectangle x1="6.1417" y1="-2.6163" x2="6.7767" y2="-2.5909" layer="200" rot="R180"/>
<rectangle x1="6.1671" y1="-2.5909" x2="6.7767" y2="-2.5655" layer="200" rot="R180"/>
<rectangle x1="6.1925" y1="-2.5655" x2="6.7767" y2="-2.5401" layer="200" rot="R180"/>
<rectangle x1="6.1925" y1="-2.5401" x2="6.7767" y2="-2.5147" layer="200" rot="R180"/>
<rectangle x1="6.2179" y1="-2.5147" x2="6.7767" y2="-2.4893" layer="200" rot="R180"/>
<rectangle x1="6.2433" y1="-2.4893" x2="6.8021" y2="-2.4639" layer="200" rot="R180"/>
<rectangle x1="6.2687" y1="-2.4639" x2="6.8021" y2="-2.4385" layer="200" rot="R180"/>
<rectangle x1="6.2941" y1="-2.4385" x2="6.8275" y2="-2.4131" layer="200" rot="R180"/>
<rectangle x1="6.2941" y1="-2.4131" x2="6.8529" y2="-2.3877" layer="200" rot="R180"/>
<rectangle x1="6.3195" y1="-2.3877" x2="6.8783" y2="-2.3623" layer="200" rot="R180"/>
<rectangle x1="-3.8659" y1="-2.3877" x2="-3.8151" y2="-2.3623" layer="200" rot="R180"/>
<rectangle x1="6.3195" y1="-2.3623" x2="6.9037" y2="-2.3369" layer="200" rot="R180"/>
<rectangle x1="-3.8659" y1="-2.3623" x2="-3.8405" y2="-2.3369" layer="200" rot="R180"/>
<rectangle x1="6.3449" y1="-2.3369" x2="6.9291" y2="-2.3115" layer="200" rot="R180"/>
<rectangle x1="6.3703" y1="-2.3115" x2="6.9545" y2="-2.2861" layer="200" rot="R180"/>
<rectangle x1="6.3957" y1="-2.2861" x2="6.9799" y2="-2.2607" layer="200" rot="R180"/>
<rectangle x1="6.4211" y1="-2.2607" x2="7.0053" y2="-2.2353" layer="200" rot="R180"/>
<rectangle x1="6.4211" y1="-2.2353" x2="7.0053" y2="-2.2099" layer="200" rot="R180"/>
<rectangle x1="6.4465" y1="-2.2099" x2="7.0307" y2="-2.1845" layer="200" rot="R180"/>
<rectangle x1="6.4465" y1="-2.1845" x2="7.0307" y2="-2.1591" layer="200" rot="R180"/>
<rectangle x1="6.4973" y1="-2.1591" x2="7.0307" y2="-2.1337" layer="200" rot="R180"/>
<rectangle x1="6.5227" y1="-2.1337" x2="7.0307" y2="-2.1083" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="-2.1083" x2="7.1577" y2="-2.0829" layer="200" rot="R180"/>
<rectangle x1="6.5481" y1="-2.1083" x2="7.0307" y2="-2.0829" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="-2.0829" x2="7.1577" y2="-2.0575" layer="200" rot="R180"/>
<rectangle x1="6.5481" y1="-2.0829" x2="7.0307" y2="-2.0575" layer="200" rot="R180"/>
<rectangle x1="6.5735" y1="-2.0575" x2="7.1831" y2="-2.0321" layer="200" rot="R180"/>
<rectangle x1="6.5735" y1="-2.0321" x2="7.1831" y2="-2.0067" layer="200" rot="R180"/>
<rectangle x1="6.5735" y1="-2.0067" x2="7.1831" y2="-1.9813" layer="200" rot="R180"/>
<rectangle x1="6.5989" y1="-1.9813" x2="7.1577" y2="-1.9559" layer="200" rot="R180"/>
<rectangle x1="6.6243" y1="-1.9559" x2="7.1577" y2="-1.9305" layer="200" rot="R180"/>
<rectangle x1="6.6243" y1="-1.9305" x2="7.1577" y2="-1.9051" layer="200" rot="R180"/>
<rectangle x1="6.6497" y1="-1.9051" x2="7.1323" y2="-1.8797" layer="200" rot="R180"/>
<rectangle x1="6.6497" y1="-1.8797" x2="7.1323" y2="-1.8543" layer="200" rot="R180"/>
<rectangle x1="6.6751" y1="-1.8543" x2="7.1323" y2="-1.8289" layer="200" rot="R180"/>
<rectangle x1="6.6751" y1="-1.8289" x2="7.1323" y2="-1.8035" layer="200" rot="R180"/>
<rectangle x1="6.7005" y1="-1.8035" x2="7.1069" y2="-1.7781" layer="200" rot="R180"/>
<rectangle x1="6.7005" y1="-1.7781" x2="7.1069" y2="-1.7527" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="-1.7527" x2="7.1323" y2="-1.7273" layer="200" rot="R180"/>
<rectangle x1="6.7513" y1="-1.7273" x2="7.1577" y2="-1.7019" layer="200" rot="R180"/>
<rectangle x1="6.7767" y1="-1.7019" x2="7.1831" y2="-1.6765" layer="200" rot="R180"/>
<rectangle x1="-4.2723" y1="-1.7019" x2="-4.2469" y2="-1.6765" layer="200" rot="R180"/>
<rectangle x1="6.7767" y1="-1.6765" x2="7.2085" y2="-1.6511" layer="200" rot="R180"/>
<rectangle x1="-4.2977" y1="-1.6765" x2="-4.2215" y2="-1.6511" layer="200" rot="R180"/>
<rectangle x1="6.8021" y1="-1.6511" x2="7.2085" y2="-1.6257" layer="200" rot="R180"/>
<rectangle x1="-4.2977" y1="-1.6511" x2="-4.2215" y2="-1.6257" layer="200" rot="R180"/>
<rectangle x1="6.8021" y1="-1.6257" x2="7.2339" y2="-1.6003" layer="200" rot="R180"/>
<rectangle x1="-4.3231" y1="-1.6257" x2="-4.2215" y2="-1.6003" layer="200" rot="R180"/>
<rectangle x1="6.8021" y1="-1.6003" x2="7.2339" y2="-1.5749" layer="200" rot="R180"/>
<rectangle x1="-4.3231" y1="-1.6003" x2="-4.2215" y2="-1.5749" layer="200" rot="R180"/>
<rectangle x1="6.8275" y1="-1.5749" x2="7.2339" y2="-1.5495" layer="200" rot="R180"/>
<rectangle x1="-4.3231" y1="-1.5749" x2="-4.2469" y2="-1.5495" layer="200" rot="R180"/>
<rectangle x1="6.8275" y1="-1.5495" x2="7.2593" y2="-1.5241" layer="200" rot="R180"/>
<rectangle x1="-4.3231" y1="-1.5495" x2="-4.2723" y2="-1.5241" layer="200" rot="R180"/>
<rectangle x1="6.8529" y1="-1.5241" x2="7.2847" y2="-1.4987" layer="200" rot="R180"/>
<rectangle x1="-4.3739" y1="-1.5241" x2="-4.2977" y2="-1.4987" layer="200" rot="R180"/>
<rectangle x1="6.8783" y1="-1.4987" x2="7.3355" y2="-1.4733" layer="200" rot="R180"/>
<rectangle x1="-4.3993" y1="-1.4987" x2="-4.2977" y2="-1.4733" layer="200" rot="R180"/>
<rectangle x1="6.8783" y1="-1.4733" x2="7.3609" y2="-1.4479" layer="200" rot="R180"/>
<rectangle x1="-4.3993" y1="-1.4733" x2="-4.3231" y2="-1.4479" layer="200" rot="R180"/>
<rectangle x1="6.9037" y1="-1.4479" x2="7.3863" y2="-1.4225" layer="200" rot="R180"/>
<rectangle x1="-4.4247" y1="-1.4479" x2="-4.3231" y2="-1.4225" layer="200" rot="R180"/>
<rectangle x1="6.9037" y1="-1.4225" x2="7.3863" y2="-1.3971" layer="200" rot="R180"/>
<rectangle x1="-4.4247" y1="-1.4225" x2="-4.3231" y2="-1.3971" layer="200" rot="R180"/>
<rectangle x1="6.9037" y1="-1.3971" x2="7.4117" y2="-1.3717" layer="200" rot="R180"/>
<rectangle x1="-4.4501" y1="-1.3971" x2="-4.3231" y2="-1.3717" layer="200" rot="R180"/>
<rectangle x1="6.9291" y1="-1.3717" x2="7.4117" y2="-1.3463" layer="200" rot="R180"/>
<rectangle x1="-4.4755" y1="-1.3717" x2="-4.3231" y2="-1.3463" layer="200" rot="R180"/>
<rectangle x1="6.9291" y1="-1.3463" x2="7.4117" y2="-1.3209" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="-1.3463" x2="-4.3485" y2="-1.3209" layer="200" rot="R180"/>
<rectangle x1="6.9545" y1="-1.3209" x2="7.4117" y2="-1.2955" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="-1.3209" x2="-4.3739" y2="-1.2955" layer="200" rot="R180"/>
<rectangle x1="6.9799" y1="-1.2955" x2="7.4117" y2="-1.2701" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="-1.2955" x2="-4.3993" y2="-1.2701" layer="200" rot="R180"/>
<rectangle x1="6.9799" y1="-1.2701" x2="7.4117" y2="-1.2447" layer="200" rot="R180"/>
<rectangle x1="-4.5263" y1="-1.2701" x2="-4.3993" y2="-1.2447" layer="200" rot="R180"/>
<rectangle x1="7.0053" y1="-1.2447" x2="7.4117" y2="-1.2193" layer="200" rot="R180"/>
<rectangle x1="-4.5263" y1="-1.2447" x2="-4.3993" y2="-1.2193" layer="200" rot="R180"/>
<rectangle x1="7.0053" y1="-1.2193" x2="7.4117" y2="-1.1939" layer="200" rot="R180"/>
<rectangle x1="-4.6025" y1="-1.2193" x2="-4.4247" y2="-1.1939" layer="200" rot="R180"/>
<rectangle x1="7.0307" y1="-1.1939" x2="7.4371" y2="-1.1685" layer="200" rot="R180"/>
<rectangle x1="-4.6533" y1="-1.1939" x2="-4.4247" y2="-1.1685" layer="200" rot="R180"/>
<rectangle x1="7.0307" y1="-1.1685" x2="7.4371" y2="-1.1431" layer="200" rot="R180"/>
<rectangle x1="-4.6787" y1="-1.1685" x2="-4.4247" y2="-1.1431" layer="200" rot="R180"/>
<rectangle x1="7.0561" y1="-1.1431" x2="7.4625" y2="-1.1177" layer="200" rot="R180"/>
<rectangle x1="-4.6787" y1="-1.1431" x2="-4.4501" y2="-1.1177" layer="200" rot="R180"/>
<rectangle x1="7.0561" y1="-1.1177" x2="7.4625" y2="-1.0923" layer="200" rot="R180"/>
<rectangle x1="-4.7041" y1="-1.1177" x2="-4.4501" y2="-1.0923" layer="200" rot="R180"/>
<rectangle x1="7.0561" y1="-1.0923" x2="7.4879" y2="-1.0669" layer="200" rot="R180"/>
<rectangle x1="-4.7295" y1="-1.0923" x2="-4.4755" y2="-1.0669" layer="200" rot="R180"/>
<rectangle x1="7.0815" y1="-1.0669" x2="7.4879" y2="-1.0415" layer="200" rot="R180"/>
<rectangle x1="-4.7803" y1="-1.0669" x2="-4.4755" y2="-1.0415" layer="200" rot="R180"/>
<rectangle x1="7.0815" y1="-1.0415" x2="7.4879" y2="-1.0161" layer="200" rot="R180"/>
<rectangle x1="-4.8311" y1="-1.0415" x2="-4.4755" y2="-1.0161" layer="200" rot="R180"/>
<rectangle x1="7.0815" y1="-1.0161" x2="7.4879" y2="-0.9907" layer="200" rot="R180"/>
<rectangle x1="-4.8565" y1="-1.0161" x2="-4.5009" y2="-0.9907" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="-0.9907" x2="7.4879" y2="-0.9653" layer="200" rot="R180"/>
<rectangle x1="-4.8819" y1="-0.9907" x2="-4.5009" y2="-0.9653" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="-0.9653" x2="7.4879" y2="-0.9399" layer="200" rot="R180"/>
<rectangle x1="-4.9073" y1="-0.9653" x2="-4.5009" y2="-0.9399" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="-0.9399" x2="7.4879" y2="-0.9145" layer="200" rot="R180"/>
<rectangle x1="-4.9073" y1="-0.9399" x2="-4.5009" y2="-0.9145" layer="200" rot="R180"/>
<rectangle x1="7.1323" y1="-0.9145" x2="7.4879" y2="-0.8891" layer="200" rot="R180"/>
<rectangle x1="-4.9327" y1="-0.9145" x2="-4.5009" y2="-0.8891" layer="200" rot="R180"/>
<rectangle x1="7.1577" y1="-0.8891" x2="7.4879" y2="-0.8637" layer="200" rot="R180"/>
<rectangle x1="-4.9327" y1="-0.8891" x2="-4.5263" y2="-0.8637" layer="200" rot="R180"/>
<rectangle x1="7.1577" y1="-0.8637" x2="7.4879" y2="-0.8383" layer="200" rot="R180"/>
<rectangle x1="-4.9581" y1="-0.8637" x2="-4.5263" y2="-0.8383" layer="200" rot="R180"/>
<rectangle x1="7.1831" y1="-0.8383" x2="7.4879" y2="-0.8129" layer="200" rot="R180"/>
<rectangle x1="-4.9835" y1="-0.8383" x2="-4.5263" y2="-0.8129" layer="200" rot="R180"/>
<rectangle x1="7.1831" y1="-0.8129" x2="7.4879" y2="-0.7875" layer="200" rot="R180"/>
<rectangle x1="-4.9835" y1="-0.8129" x2="-4.5517" y2="-0.7875" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.7875" x2="7.4879" y2="-0.7621" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="-0.7875" x2="-4.5517" y2="-0.7621" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.7621" x2="7.5133" y2="-0.7367" layer="200" rot="R180"/>
<rectangle x1="-5.0343" y1="-0.7621" x2="-4.5771" y2="-0.7367" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.7367" x2="7.5133" y2="-0.7113" layer="200" rot="R180"/>
<rectangle x1="-5.0597" y1="-0.7367" x2="-4.5771" y2="-0.7113" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.7113" x2="7.5387" y2="-0.6859" layer="200" rot="R180"/>
<rectangle x1="-5.1105" y1="-0.7113" x2="-4.6025" y2="-0.6859" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.6859" x2="7.5641" y2="-0.6605" layer="200" rot="R180"/>
<rectangle x1="-5.1359" y1="-0.6859" x2="-4.6025" y2="-0.6605" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.6605" x2="7.5641" y2="-0.6351" layer="200" rot="R180"/>
<rectangle x1="-5.1613" y1="-0.6605" x2="-4.6025" y2="-0.6351" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.6351" x2="7.5895" y2="-0.6097" layer="200" rot="R180"/>
<rectangle x1="-5.1613" y1="-0.6351" x2="-4.6025" y2="-0.6097" layer="200" rot="R180"/>
<rectangle x1="7.2339" y1="-0.6097" x2="7.5895" y2="-0.5843" layer="200" rot="R180"/>
<rectangle x1="-5.1867" y1="-0.6097" x2="-4.6025" y2="-0.5843" layer="200" rot="R180"/>
<rectangle x1="7.2339" y1="-0.5843" x2="7.5895" y2="-0.5589" layer="200" rot="R180"/>
<rectangle x1="-5.2121" y1="-0.5843" x2="-4.6025" y2="-0.5589" layer="200" rot="R180"/>
<rectangle x1="7.2593" y1="-0.5589" x2="7.5641" y2="-0.5335" layer="200" rot="R180"/>
<rectangle x1="-5.2121" y1="-0.5589" x2="-4.6279" y2="-0.5335" layer="200" rot="R180"/>
<rectangle x1="7.2847" y1="-0.5335" x2="7.5387" y2="-0.5081" layer="200" rot="R180"/>
<rectangle x1="-5.2375" y1="-0.5335" x2="-4.6279" y2="-0.5081" layer="200" rot="R180"/>
<rectangle x1="7.2847" y1="-0.5081" x2="7.5133" y2="-0.4827" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="-0.5081" x2="-4.6533" y2="-0.4827" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.4827" x2="7.4879" y2="-0.4573" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="-0.4827" x2="-4.6533" y2="-0.4573" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.4573" x2="7.5133" y2="-0.4319" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="-0.4573" x2="-4.6787" y2="-0.4319" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.4319" x2="7.5387" y2="-0.4065" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="-0.4319" x2="-4.6787" y2="-0.4065" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.4065" x2="7.5387" y2="-0.3811" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="-0.4065" x2="-4.6787" y2="-0.3811" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.3811" x2="7.5641" y2="-0.3557" layer="200" rot="R180"/>
<rectangle x1="-5.3137" y1="-0.3811" x2="-4.6787" y2="-0.3557" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.3557" x2="7.5895" y2="-0.3303" layer="200" rot="R180"/>
<rectangle x1="-5.3137" y1="-0.3557" x2="-4.6787" y2="-0.3303" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.3303" x2="7.6403" y2="-0.3049" layer="200" rot="R180"/>
<rectangle x1="-5.3391" y1="-0.3303" x2="-4.7041" y2="-0.3049" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.3049" x2="7.6657" y2="-0.2795" layer="200" rot="R180"/>
<rectangle x1="-5.3391" y1="-0.3049" x2="-4.7041" y2="-0.2795" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.2795" x2="7.6657" y2="-0.2541" layer="200" rot="R180"/>
<rectangle x1="-5.3645" y1="-0.2795" x2="-4.7041" y2="-0.2541" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.2541" x2="7.6911" y2="-0.2287" layer="200" rot="R180"/>
<rectangle x1="-5.3645" y1="-0.2541" x2="-4.7041" y2="-0.2287" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.2287" x2="7.6911" y2="-0.2033" layer="200" rot="R180"/>
<rectangle x1="-5.3899" y1="-0.2287" x2="-4.7041" y2="-0.2033" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.2033" x2="7.6911" y2="-0.1779" layer="200" rot="R180"/>
<rectangle x1="-5.4153" y1="-0.2033" x2="-4.7295" y2="-0.1779" layer="200" rot="R180"/>
<rectangle x1="7.2847" y1="-0.1779" x2="7.6911" y2="-0.1525" layer="200" rot="R180"/>
<rectangle x1="-5.4153" y1="-0.1779" x2="-4.7295" y2="-0.1525" layer="200" rot="R180"/>
<rectangle x1="3.0937" y1="-0.1525" x2="7.6911" y2="-0.1271" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="-0.1525" x2="-4.7295" y2="-0.1271" layer="200" rot="R180"/>
<rectangle x1="3.0429" y1="-0.1271" x2="7.6911" y2="-0.1017" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="-0.1271" x2="-4.7295" y2="-0.1017" layer="200" rot="R180"/>
<rectangle x1="2.9413" y1="-0.1017" x2="7.6911" y2="-0.0763" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="-0.1017" x2="-4.7549" y2="-0.0763" layer="200" rot="R180"/>
<rectangle x1="2.8397" y1="-0.0763" x2="7.6911" y2="-0.0509" layer="200" rot="R180"/>
<rectangle x1="-5.4661" y1="-0.0763" x2="-4.7549" y2="-0.0509" layer="200" rot="R180"/>
<rectangle x1="2.7889" y1="-0.0509" x2="7.7165" y2="-0.0255" layer="200" rot="R180"/>
<rectangle x1="-5.4661" y1="-0.0509" x2="-4.7803" y2="-0.0255" layer="200" rot="R180"/>
<rectangle x1="2.7381" y1="-0.0255" x2="7.7419" y2="-0.0001" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="-0.0255" x2="-4.7803" y2="-0.0001" layer="200" rot="R180"/>
<rectangle x1="2.6873" y1="-0.0001" x2="7.7673" y2="0.0253" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="-0.0001" x2="-4.7803" y2="0.0253" layer="200" rot="R180"/>
<rectangle x1="2.6111" y1="0.0253" x2="7.7927" y2="0.0507" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="0.0253" x2="-4.7803" y2="0.0507" layer="200" rot="R180"/>
<rectangle x1="2.5603" y1="0.0507" x2="7.8181" y2="0.0761" layer="200" rot="R180"/>
<rectangle x1="-5.5169" y1="0.0507" x2="-4.8057" y2="0.0761" layer="200" rot="R180"/>
<rectangle x1="2.5095" y1="0.0761" x2="7.8181" y2="0.1015" layer="200" rot="R180"/>
<rectangle x1="-5.5169" y1="0.0761" x2="-4.8057" y2="0.1015" layer="200" rot="R180"/>
<rectangle x1="2.4841" y1="0.1015" x2="7.8181" y2="0.1269" layer="200" rot="R180"/>
<rectangle x1="-5.5423" y1="0.1015" x2="-4.8057" y2="0.1269" layer="200" rot="R180"/>
<rectangle x1="2.4587" y1="0.1269" x2="7.8181" y2="0.1523" layer="200" rot="R180"/>
<rectangle x1="-5.5423" y1="0.1269" x2="-4.8057" y2="0.1523" layer="200" rot="R180"/>
<rectangle x1="2.4333" y1="0.1523" x2="7.8181" y2="0.1777" layer="200" rot="R180"/>
<rectangle x1="-5.5677" y1="0.1523" x2="-4.8057" y2="0.1777" layer="200" rot="R180"/>
<rectangle x1="2.4333" y1="0.1777" x2="7.7927" y2="0.2031" layer="200" rot="R180"/>
<rectangle x1="-5.5677" y1="0.1777" x2="-4.8057" y2="0.2031" layer="200" rot="R180"/>
<rectangle x1="2.4079" y1="0.2031" x2="7.7673" y2="0.2285" layer="200" rot="R180"/>
<rectangle x1="-5.5677" y1="0.2031" x2="-4.8057" y2="0.2285" layer="200" rot="R180"/>
<rectangle x1="2.3571" y1="0.2285" x2="7.7673" y2="0.2539" layer="200" rot="R180"/>
<rectangle x1="-5.5931" y1="0.2285" x2="-4.8057" y2="0.2539" layer="200" rot="R180"/>
<rectangle x1="7.3609" y1="0.2539" x2="7.7927" y2="0.2793" layer="200" rot="R180"/>
<rectangle x1="2.3317" y1="0.2539" x2="7.3101" y2="0.2793" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="0.2539" x2="-4.8057" y2="0.2793" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="0.2793" x2="7.7927" y2="0.3047" layer="200" rot="R180"/>
<rectangle x1="2.3063" y1="0.2793" x2="3.6271" y2="0.3047" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="0.2793" x2="-4.8311" y2="0.3047" layer="200" rot="R180"/>
<rectangle x1="7.4371" y1="0.3047" x2="7.7927" y2="0.3301" layer="200" rot="R180"/>
<rectangle x1="2.3063" y1="0.3047" x2="3.3477" y2="0.3301" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="0.3047" x2="-4.8311" y2="0.3301" layer="200" rot="R180"/>
<rectangle x1="7.4625" y1="0.3301" x2="7.7927" y2="0.3555" layer="200" rot="R180"/>
<rectangle x1="2.3063" y1="0.3301" x2="3.1953" y2="0.3555" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="0.3301" x2="-4.8311" y2="0.3555" layer="200" rot="R180"/>
<rectangle x1="7.4625" y1="0.3555" x2="7.7927" y2="0.3809" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="0.3555" x2="3.1699" y2="0.3809" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="0.3555" x2="-4.8311" y2="0.3809" layer="200" rot="R180"/>
<rectangle x1="7.4625" y1="0.3809" x2="7.7673" y2="0.4063" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="0.3809" x2="3.0429" y2="0.4063" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="0.3809" x2="-4.8311" y2="0.4063" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.4063" x2="7.7419" y2="0.4317" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="0.4063" x2="2.9921" y2="0.4317" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="0.4063" x2="-4.8311" y2="0.4317" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.4317" x2="7.7419" y2="0.4571" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="0.4317" x2="2.9667" y2="0.4571" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.4317" x2="-4.8311" y2="0.4571" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.4571" x2="7.7165" y2="0.4825" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.4571" x2="2.8905" y2="0.4825" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.4571" x2="-4.8311" y2="0.4825" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.4825" x2="7.7165" y2="0.5079" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.4825" x2="2.8143" y2="0.5079" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.4825" x2="-4.8565" y2="0.5079" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.5079" x2="7.7165" y2="0.5333" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.5079" x2="2.7635" y2="0.5333" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.5079" x2="-4.8565" y2="0.5333" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.5333" x2="7.7165" y2="0.5587" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.5333" x2="2.7381" y2="0.5587" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.5333" x2="-4.8565" y2="0.5587" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.5587" x2="7.7165" y2="0.5841" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.5587" x2="2.7127" y2="0.5841" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.5587" x2="-4.8565" y2="0.5841" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.5841" x2="7.7165" y2="0.6095" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.5841" x2="2.6619" y2="0.6095" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.5841" x2="-4.8565" y2="0.6095" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.6095" x2="7.7165" y2="0.6349" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.6095" x2="2.6365" y2="0.6349" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.6095" x2="-4.8565" y2="0.6349" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.6349" x2="7.7165" y2="0.6603" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.6349" x2="2.6111" y2="0.6603" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.6349" x2="-4.8819" y2="0.6603" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.6603" x2="7.7419" y2="0.6857" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.6603" x2="2.6619" y2="0.6857" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.6603" x2="-4.8819" y2="0.6857" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.6857" x2="7.7419" y2="0.7111" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.6857" x2="2.7635" y2="0.7111" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.6857" x2="-4.8819" y2="0.7111" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.7111" x2="7.7673" y2="0.7365" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.7111" x2="2.7635" y2="0.7365" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.7111" x2="-4.8819" y2="0.7365" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.7365" x2="7.8181" y2="0.7619" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.7365" x2="2.7889" y2="0.7619" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.7365" x2="-4.8819" y2="0.7619" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.7619" x2="7.8435" y2="0.7873" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.7619" x2="2.7889" y2="0.7873" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.7619" x2="-4.8819" y2="0.7873" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.7873" x2="7.8435" y2="0.8127" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.7873" x2="2.7635" y2="0.8127" layer="200" rot="R180"/>
<rectangle x1="-5.6947" y1="0.7873" x2="-4.8819" y2="0.8127" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.8127" x2="7.8689" y2="0.8381" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.8127" x2="2.7889" y2="0.8381" layer="200" rot="R180"/>
<rectangle x1="-5.6947" y1="0.8127" x2="-4.8819" y2="0.8381" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.8381" x2="7.8689" y2="0.8635" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.8381" x2="2.7889" y2="0.8635" layer="200" rot="R180"/>
<rectangle x1="-5.6947" y1="0.8381" x2="-4.8819" y2="0.8635" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.8635" x2="7.8689" y2="0.8889" layer="200" rot="R180"/>
<rectangle x1="2.8651" y1="0.8635" x2="2.9667" y2="0.8889" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.8635" x2="2.8397" y2="0.8889" layer="200" rot="R180"/>
<rectangle x1="-5.6947" y1="0.8635" x2="-4.8819" y2="0.8889" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.8889" x2="7.8689" y2="0.9143" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.8889" x2="3.0175" y2="0.9143" layer="200" rot="R180"/>
<rectangle x1="-5.6947" y1="0.8889" x2="-4.8819" y2="0.9143" layer="200" rot="R180"/>
<rectangle x1="7.4625" y1="0.9143" x2="7.8689" y2="0.9397" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.9143" x2="3.0683" y2="0.9397" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="0.9143" x2="-4.8819" y2="0.9397" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="0.9397" x2="7.8689" y2="0.9651" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.9397" x2="7.2339" y2="0.9651" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="0.9397" x2="-4.8819" y2="0.9651" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.9651" x2="7.8689" y2="0.9905" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="0.9651" x2="-4.8819" y2="0.9905" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.9905" x2="7.8689" y2="1.0159" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="0.9905" x2="-4.8819" y2="1.0159" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.0159" x2="7.8689" y2="1.0413" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="1.0159" x2="-4.8819" y2="1.0413" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.0413" x2="7.8689" y2="1.0667" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="1.0413" x2="-4.8819" y2="1.0667" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.0667" x2="7.8689" y2="1.0921" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="1.0667" x2="-4.9073" y2="1.0921" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.0921" x2="7.8689" y2="1.1175" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="1.0921" x2="-4.9073" y2="1.1175" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.1175" x2="7.8689" y2="1.1429" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="1.1175" x2="-4.9073" y2="1.1429" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.1429" x2="7.8435" y2="1.1683" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="1.1429" x2="-4.9073" y2="1.1683" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.1683" x2="7.8181" y2="1.1937" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="1.1683" x2="-4.9073" y2="1.1937" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.1937" x2="7.8181" y2="1.2191" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="1.1937" x2="-4.9073" y2="1.2191" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.2191" x2="7.7927" y2="1.2445" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="1.2191" x2="-4.9073" y2="1.2445" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.2445" x2="7.7927" y2="1.2699" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="1.2445" x2="-4.9073" y2="1.2699" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.2699" x2="7.7927" y2="1.2953" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.2699" x2="-4.9073" y2="1.2953" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.2953" x2="7.7927" y2="1.3207" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.2953" x2="-4.9073" y2="1.3207" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.3207" x2="7.7927" y2="1.3461" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.3207" x2="-4.9073" y2="1.3461" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="1.3461" x2="7.7927" y2="1.3715" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.3461" x2="7.2847" y2="1.3715" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.3461" x2="-4.9073" y2="1.3715" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="1.3715" x2="7.7927" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="6.4465" y1="1.3715" x2="6.7513" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="5.8623" y1="1.3715" x2="5.8877" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="5.6845" y1="1.3715" x2="5.7099" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="4.7955" y1="1.3715" x2="5.6083" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.3715" x2="3.5001" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.3715" x2="-4.9073" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="1.3969" x2="7.7927" y2="1.4223" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.3969" x2="3.0429" y2="1.4223" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.3969" x2="-4.9073" y2="1.4223" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.4223" x2="7.7927" y2="1.4477" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.4223" x2="2.8143" y2="1.4477" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.4223" x2="-4.9073" y2="1.4477" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.4477" x2="7.7927" y2="1.4731" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.4477" x2="2.7889" y2="1.4731" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.4477" x2="-4.9073" y2="1.4731" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.4731" x2="7.7673" y2="1.4985" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.4731" x2="2.7889" y2="1.4985" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.4731" x2="-4.9073" y2="1.4985" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.4985" x2="7.7673" y2="1.5239" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.4985" x2="2.7635" y2="1.5239" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.4985" x2="-4.9073" y2="1.5239" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.5239" x2="7.7673" y2="1.5493" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.5239" x2="2.7381" y2="1.5493" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.5239" x2="-4.9073" y2="1.5493" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.5493" x2="7.7673" y2="1.5747" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.5493" x2="2.7381" y2="1.5747" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.5493" x2="-4.9073" y2="1.5747" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.5747" x2="7.7673" y2="1.6001" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.5747" x2="2.7381" y2="1.6001" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.5747" x2="-4.9073" y2="1.6001" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.6001" x2="7.7927" y2="1.6255" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.6001" x2="2.7381" y2="1.6255" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.6001" x2="-4.8819" y2="1.6255" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.6255" x2="7.7927" y2="1.6509" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.6255" x2="2.7635" y2="1.6509" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.6255" x2="-4.8819" y2="1.6509" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.6509" x2="7.7927" y2="1.6763" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.6509" x2="2.7635" y2="1.6763" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.6509" x2="-4.8819" y2="1.6763" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.6763" x2="7.7927" y2="1.7017" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.6763" x2="2.7889" y2="1.7017" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.6763" x2="-4.8819" y2="1.7017" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.7017" x2="7.8181" y2="1.7271" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.7017" x2="2.8397" y2="1.7271" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.7017" x2="-4.8819" y2="1.7271" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.7271" x2="7.8181" y2="1.7525" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.7271" x2="2.8905" y2="1.7525" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.7271" x2="-4.8819" y2="1.7525" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.7525" x2="7.7927" y2="1.7779" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.7525" x2="2.9413" y2="1.7779" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.7525" x2="-4.8819" y2="1.7779" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.7779" x2="7.7927" y2="1.8033" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="1.7779" x2="2.9667" y2="1.8033" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.7779" x2="-4.8819" y2="1.8033" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.8033" x2="7.7927" y2="1.8287" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="1.8033" x2="2.9921" y2="1.8287" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.8033" x2="-4.8819" y2="1.8287" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.8287" x2="7.7927" y2="1.8541" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="1.8287" x2="3.0683" y2="1.8541" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.8287" x2="-4.8819" y2="1.8541" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="1.8541" x2="7.7927" y2="1.8795" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="1.8541" x2="3.1699" y2="1.8795" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.8541" x2="-4.8819" y2="1.8795" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="1.8795" x2="7.7673" y2="1.9049" layer="200" rot="R180"/>
<rectangle x1="2.3063" y1="1.8795" x2="3.3477" y2="1.9049" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.8795" x2="-4.8819" y2="1.9049" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="1.9049" x2="7.7419" y2="1.9303" layer="200" rot="R180"/>
<rectangle x1="2.3063" y1="1.9049" x2="3.5509" y2="1.9303" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.9049" x2="-4.8819" y2="1.9303" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="1.9303" x2="7.7419" y2="1.9557" layer="200" rot="R180"/>
<rectangle x1="2.3317" y1="1.9303" x2="6.9545" y2="1.9557" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.9303" x2="-4.8819" y2="1.9557" layer="200" rot="R180"/>
<rectangle x1="7.4625" y1="1.9557" x2="7.7673" y2="1.9811" layer="200" rot="R180"/>
<rectangle x1="2.3571" y1="1.9557" x2="7.3101" y2="1.9811" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.9557" x2="-4.8565" y2="1.9811" layer="200" rot="R180"/>
<rectangle x1="2.3825" y1="1.9811" x2="7.7927" y2="2.0065" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.9811" x2="-4.8565" y2="2.0065" layer="200" rot="R180"/>
<rectangle x1="2.4079" y1="2.0065" x2="7.7927" y2="2.0319" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="2.0065" x2="-4.8565" y2="2.0319" layer="200" rot="R180"/>
<rectangle x1="2.4333" y1="2.0319" x2="7.7927" y2="2.0573" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="2.0319" x2="-4.8565" y2="2.0573" layer="200" rot="R180"/>
<rectangle x1="2.4333" y1="2.0573" x2="7.7927" y2="2.0827" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="2.0573" x2="-4.8311" y2="2.0827" layer="200" rot="R180"/>
<rectangle x1="2.4587" y1="2.0827" x2="7.8181" y2="2.1081" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.0827" x2="-4.8311" y2="2.1081" layer="200" rot="R180"/>
<rectangle x1="2.4841" y1="2.1081" x2="7.8181" y2="2.1335" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.1081" x2="-4.8311" y2="2.1335" layer="200" rot="R180"/>
<rectangle x1="2.5095" y1="2.1335" x2="7.8181" y2="2.1589" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.1335" x2="-4.8311" y2="2.1589" layer="200" rot="R180"/>
<rectangle x1="2.5349" y1="2.1589" x2="7.8181" y2="2.1843" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.1589" x2="-4.8057" y2="2.1843" layer="200" rot="R180"/>
<rectangle x1="2.5857" y1="2.1843" x2="7.8181" y2="2.2097" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.1843" x2="-4.8057" y2="2.2097" layer="200" rot="R180"/>
<rectangle x1="2.6111" y1="2.2097" x2="7.8435" y2="2.2351" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.2097" x2="-4.8057" y2="2.2351" layer="200" rot="R180"/>
<rectangle x1="2.6619" y1="2.2351" x2="7.8435" y2="2.2605" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.2351" x2="-4.8057" y2="2.2605" layer="200" rot="R180"/>
<rectangle x1="2.7127" y1="2.2605" x2="7.8435" y2="2.2859" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.2605" x2="-4.8057" y2="2.2859" layer="200" rot="R180"/>
<rectangle x1="2.7889" y1="2.2859" x2="7.8435" y2="2.3113" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.2859" x2="-4.8057" y2="2.3113" layer="200" rot="R180"/>
<rectangle x1="2.8905" y1="2.3113" x2="7.8435" y2="2.3367" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.3113" x2="-4.8057" y2="2.3367" layer="200" rot="R180"/>
<rectangle x1="2.9921" y1="2.3367" x2="7.8435" y2="2.3621" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.3367" x2="-4.8057" y2="2.3621" layer="200" rot="R180"/>
<rectangle x1="7.7927" y1="2.3621" x2="7.8435" y2="2.3875" layer="200" rot="R180"/>
<rectangle x1="7.3863" y1="2.3621" x2="7.7419" y2="2.3875" layer="200" rot="R180"/>
<rectangle x1="3.1191" y1="2.3621" x2="7.0561" y2="2.3875" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.3621" x2="-4.8057" y2="2.3875" layer="200" rot="R180"/>
<rectangle x1="7.3863" y1="2.3875" x2="7.7165" y2="2.4129" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.3875" x2="-4.8057" y2="2.4129" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="2.4129" x2="7.7165" y2="2.4383" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.4129" x2="-4.7803" y2="2.4383" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="2.4383" x2="7.7165" y2="2.4637" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.4383" x2="-4.7803" y2="2.4637" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="2.4637" x2="7.7165" y2="2.4891" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.4637" x2="-4.7803" y2="2.4891" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="2.4891" x2="7.7419" y2="2.5145" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.4891" x2="-4.7803" y2="2.5145" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="2.5145" x2="7.7419" y2="2.5399" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.5145" x2="-4.7549" y2="2.5399" layer="200" rot="R180"/>
<rectangle x1="7.3863" y1="2.5399" x2="7.7419" y2="2.5653" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.5399" x2="-4.7549" y2="2.5653" layer="200" rot="R180"/>
<rectangle x1="7.3863" y1="2.5653" x2="7.7419" y2="2.5907" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.5653" x2="-4.7549" y2="2.5907" layer="200" rot="R180"/>
<rectangle x1="7.3863" y1="2.5907" x2="7.7419" y2="2.6161" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.5907" x2="-4.7295" y2="2.6161" layer="200" rot="R180"/>
<rectangle x1="7.3863" y1="2.6161" x2="7.7419" y2="2.6415" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.6161" x2="-4.7295" y2="2.6415" layer="200" rot="R180"/>
<rectangle x1="7.3609" y1="2.6415" x2="7.7165" y2="2.6669" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.6415" x2="-4.7041" y2="2.6669" layer="200" rot="R180"/>
<rectangle x1="7.3609" y1="2.6669" x2="7.6911" y2="2.6923" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.6669" x2="-4.7041" y2="2.6923" layer="200" rot="R180"/>
<rectangle x1="7.3355" y1="2.6923" x2="7.6911" y2="2.7177" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.6923" x2="-4.7041" y2="2.7177" layer="200" rot="R180"/>
<rectangle x1="7.3355" y1="2.7177" x2="7.6657" y2="2.7431" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.7177" x2="-4.7041" y2="2.7431" layer="200" rot="R180"/>
<rectangle x1="7.3355" y1="2.7431" x2="7.6657" y2="2.7685" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.7431" x2="-4.7041" y2="2.7685" layer="200" rot="R180"/>
<rectangle x1="7.3355" y1="2.7685" x2="7.6657" y2="2.7939" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.7685" x2="-4.7041" y2="2.7939" layer="200" rot="R180"/>
<rectangle x1="7.3355" y1="2.7939" x2="7.6657" y2="2.8193" layer="200" rot="R180"/>
<rectangle x1="-5.8217" y1="2.7939" x2="-4.6787" y2="2.8193" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="2.8193" x2="7.6403" y2="2.8447" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.8193" x2="-4.6787" y2="2.8447" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="2.8447" x2="7.6403" y2="2.8701" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.8447" x2="-4.6787" y2="2.8701" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="2.8701" x2="7.6149" y2="2.8955" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.8701" x2="-4.6787" y2="2.8955" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="2.8955" x2="7.6149" y2="2.9209" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.8955" x2="-4.6533" y2="2.9209" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="2.9209" x2="7.5895" y2="2.9463" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.9209" x2="-4.6533" y2="2.9463" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="2.9463" x2="7.5895" y2="2.9717" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.9463" x2="-4.6279" y2="2.9717" layer="200" rot="R180"/>
<rectangle x1="7.2847" y1="2.9717" x2="7.5641" y2="2.9971" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.9717" x2="-4.6279" y2="2.9971" layer="200" rot="R180"/>
<rectangle x1="7.2847" y1="2.9971" x2="7.5387" y2="3.0225" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.9971" x2="-4.6279" y2="3.0225" layer="200" rot="R180"/>
<rectangle x1="7.2847" y1="3.0225" x2="7.5133" y2="3.0479" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.0225" x2="-4.6025" y2="3.0479" layer="200" rot="R180"/>
<rectangle x1="7.2593" y1="3.0479" x2="7.5133" y2="3.0733" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.0479" x2="-4.6025" y2="3.0733" layer="200" rot="R180"/>
<rectangle x1="7.2593" y1="3.0733" x2="7.4879" y2="3.0987" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.0733" x2="-4.6025" y2="3.0987" layer="200" rot="R180"/>
<rectangle x1="7.2339" y1="3.0987" x2="7.4625" y2="3.1241" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.0987" x2="-4.6025" y2="3.1241" layer="200" rot="R180"/>
<rectangle x1="7.2339" y1="3.1241" x2="7.4625" y2="3.1495" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.1241" x2="-4.5771" y2="3.1495" layer="200" rot="R180"/>
<rectangle x1="7.2339" y1="3.1495" x2="7.4625" y2="3.1749" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.1495" x2="-4.5771" y2="3.1749" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="3.1749" x2="7.4371" y2="3.2003" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.1749" x2="-4.5771" y2="3.2003" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="3.2003" x2="7.4371" y2="3.2257" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.2003" x2="-4.5517" y2="3.2257" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="3.2257" x2="7.4371" y2="3.2511" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.2257" x2="-4.5517" y2="3.2511" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="3.2511" x2="7.4117" y2="3.2765" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.2511" x2="-4.5263" y2="3.2765" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="3.2765" x2="7.4117" y2="3.3019" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.2765" x2="-4.5009" y2="3.3019" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="3.3019" x2="7.4117" y2="3.3273" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.3019" x2="-4.5009" y2="3.3273" layer="200" rot="R180"/>
<rectangle x1="7.1831" y1="3.3273" x2="7.4117" y2="3.3527" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.3273" x2="-4.4755" y2="3.3527" layer="200" rot="R180"/>
<rectangle x1="7.1831" y1="3.3527" x2="7.3863" y2="3.3781" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.3527" x2="-4.4755" y2="3.3781" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="3.3781" x2="7.4371" y2="3.4035" layer="200" rot="R180"/>
<rectangle x1="7.1577" y1="3.3781" x2="7.3355" y2="3.4035" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.3781" x2="-4.4755" y2="3.4035" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="3.4035" x2="7.4625" y2="3.4289" layer="200" rot="R180"/>
<rectangle x1="7.1323" y1="3.4035" x2="7.3355" y2="3.4289" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.4035" x2="-4.4755" y2="3.4289" layer="200" rot="R180"/>
<rectangle x1="7.1323" y1="3.4289" x2="7.3101" y2="3.4543" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.4289" x2="-4.4501" y2="3.4543" layer="200" rot="R180"/>
<rectangle x1="7.1323" y1="3.4543" x2="7.3101" y2="3.4797" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.4543" x2="-4.4247" y2="3.4797" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="3.4797" x2="7.3101" y2="3.5051" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.4797" x2="-4.4247" y2="3.5051" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="3.5051" x2="7.2847" y2="3.5305" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.5051" x2="-4.3993" y2="3.5305" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="3.5305" x2="7.2847" y2="3.5559" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.5305" x2="-4.3993" y2="3.5559" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="3.5559" x2="7.2593" y2="3.5813" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="3.5559" x2="-4.3993" y2="3.5813" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="3.5813" x2="7.2593" y2="3.6067" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="3.5813" x2="-4.3739" y2="3.6067" layer="200" rot="R180"/>
<rectangle x1="7.0815" y1="3.6067" x2="7.2593" y2="3.6321" layer="200" rot="R180"/>
<rectangle x1="-5.6947" y1="3.6067" x2="-4.3739" y2="3.6321" layer="200" rot="R180"/>
<rectangle x1="7.0815" y1="3.6321" x2="7.2593" y2="3.6575" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="3.6321" x2="-4.3485" y2="3.6575" layer="200" rot="R180"/>
<rectangle x1="7.0561" y1="3.6575" x2="7.2593" y2="3.6829" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="3.6575" x2="-4.3485" y2="3.6829" layer="200" rot="R180"/>
<rectangle x1="7.0561" y1="3.6829" x2="7.2593" y2="3.7083" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="3.6829" x2="-4.3231" y2="3.7083" layer="200" rot="R180"/>
<rectangle x1="7.0307" y1="3.7083" x2="7.2339" y2="3.7337" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="3.7083" x2="-4.2977" y2="3.7337" layer="200" rot="R180"/>
<rectangle x1="7.0307" y1="3.7337" x2="7.2339" y2="3.7591" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.7337" x2="-4.2977" y2="3.7591" layer="200" rot="R180"/>
<rectangle x1="7.0053" y1="3.7591" x2="7.2339" y2="3.7845" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.7591" x2="-4.2723" y2="3.7845" layer="200" rot="R180"/>
<rectangle x1="7.0053" y1="3.7845" x2="7.2339" y2="3.8099" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.7845" x2="-4.2723" y2="3.8099" layer="200" rot="R180"/>
<rectangle x1="7.0053" y1="3.8099" x2="7.2593" y2="3.8353" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.8099" x2="-4.2469" y2="3.8353" layer="200" rot="R180"/>
<rectangle x1="6.9799" y1="3.8353" x2="7.2593" y2="3.8607" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.8353" x2="-4.2469" y2="3.8607" layer="200" rot="R180"/>
<rectangle x1="6.9799" y1="3.8607" x2="7.2593" y2="3.8861" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.8607" x2="-4.2215" y2="3.8861" layer="200" rot="R180"/>
<rectangle x1="6.9545" y1="3.8861" x2="7.2593" y2="3.9115" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.8861" x2="-4.2215" y2="3.9115" layer="200" rot="R180"/>
<rectangle x1="7.1831" y1="3.9115" x2="7.2593" y2="3.9369" layer="200" rot="R180"/>
<rectangle x1="6.9291" y1="3.9115" x2="7.1577" y2="3.9369" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.9115" x2="-4.1961" y2="3.9369" layer="200" rot="R180"/>
<rectangle x1="6.9291" y1="3.9369" x2="7.1577" y2="3.9623" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="3.9369" x2="-4.1961" y2="3.9623" layer="200" rot="R180"/>
<rectangle x1="6.9291" y1="3.9623" x2="7.1577" y2="3.9877" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.9623" x2="-4.1961" y2="3.9877" layer="200" rot="R180"/>
<rectangle x1="6.9037" y1="3.9877" x2="7.1577" y2="4.0131" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.9877" x2="-4.1707" y2="4.0131" layer="200" rot="R180"/>
<rectangle x1="6.9037" y1="4.0131" x2="7.1323" y2="4.0385" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="4.0131" x2="-4.1453" y2="4.0385" layer="200" rot="R180"/>
<rectangle x1="6.9037" y1="4.0385" x2="7.1323" y2="4.0639" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="4.0385" x2="-4.1453" y2="4.0639" layer="200" rot="R180"/>
<rectangle x1="6.8783" y1="4.0639" x2="7.1323" y2="4.0893" layer="200" rot="R180"/>
<rectangle x1="-5.5931" y1="4.0639" x2="-4.1199" y2="4.0893" layer="200" rot="R180"/>
<rectangle x1="6.8783" y1="4.0893" x2="7.1069" y2="4.1147" layer="200" rot="R180"/>
<rectangle x1="-5.5677" y1="4.0893" x2="-4.0945" y2="4.1147" layer="200" rot="R180"/>
<rectangle x1="6.8529" y1="4.1147" x2="7.0561" y2="4.1401" layer="200" rot="R180"/>
<rectangle x1="-5.5677" y1="4.1147" x2="-4.0691" y2="4.1401" layer="200" rot="R180"/>
<rectangle x1="6.8275" y1="4.1401" x2="7.0307" y2="4.1655" layer="200" rot="R180"/>
<rectangle x1="-5.5677" y1="4.1401" x2="-4.0691" y2="4.1655" layer="200" rot="R180"/>
<rectangle x1="6.8021" y1="4.1655" x2="7.0307" y2="4.1909" layer="200" rot="R180"/>
<rectangle x1="-5.5423" y1="4.1655" x2="-4.0437" y2="4.1909" layer="200" rot="R180"/>
<rectangle x1="6.8021" y1="4.1909" x2="7.0053" y2="4.2163" layer="200" rot="R180"/>
<rectangle x1="-5.5423" y1="4.1909" x2="-4.0437" y2="4.2163" layer="200" rot="R180"/>
<rectangle x1="6.8021" y1="4.2163" x2="7.0053" y2="4.2417" layer="200" rot="R180"/>
<rectangle x1="-5.5423" y1="4.2163" x2="-4.0183" y2="4.2417" layer="200" rot="R180"/>
<rectangle x1="6.7767" y1="4.2417" x2="6.9545" y2="4.2671" layer="200" rot="R180"/>
<rectangle x1="-5.5169" y1="4.2417" x2="-3.9929" y2="4.2671" layer="200" rot="R180"/>
<rectangle x1="6.7513" y1="4.2671" x2="6.9291" y2="4.2925" layer="200" rot="R180"/>
<rectangle x1="-5.5169" y1="4.2671" x2="-3.9421" y2="4.2925" layer="200" rot="R180"/>
<rectangle x1="7.0307" y1="4.2925" x2="7.0561" y2="4.3179" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="4.2925" x2="6.9037" y2="4.3179" layer="200" rot="R180"/>
<rectangle x1="-2.0879" y1="4.2925" x2="-1.9101" y2="4.3179" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="4.2925" x2="-3.9167" y2="4.3179" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="4.3179" x2="6.9037" y2="4.3433" layer="200" rot="R180"/>
<rectangle x1="-2.2911" y1="4.3179" x2="-1.7323" y2="4.3433" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="4.3179" x2="-3.9167" y2="4.3433" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="4.3433" x2="6.9037" y2="4.3687" layer="200" rot="R180"/>
<rectangle x1="-2.5197" y1="4.3433" x2="-1.5291" y2="4.3687" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="4.3433" x2="-3.9167" y2="4.3687" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="4.3687" x2="6.8783" y2="4.3941" layer="200" rot="R180"/>
<rectangle x1="-2.5959" y1="4.3687" x2="-1.4275" y2="4.3941" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="4.3687" x2="-3.8913" y2="4.3941" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="4.3941" x2="6.8783" y2="4.4195" layer="200" rot="R180"/>
<rectangle x1="-2.6721" y1="4.3941" x2="-1.2751" y2="4.4195" layer="200" rot="R180"/>
<rectangle x1="-5.4661" y1="4.3941" x2="-3.8659" y2="4.4195" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="4.4195" x2="6.8529" y2="4.4449" layer="200" rot="R180"/>
<rectangle x1="-2.7483" y1="4.4195" x2="-1.1481" y2="4.4449" layer="200" rot="R180"/>
<rectangle x1="-5.4661" y1="4.4195" x2="-3.8659" y2="4.4449" layer="200" rot="R180"/>
<rectangle x1="6.7005" y1="4.4449" x2="6.8021" y2="4.4703" layer="200" rot="R180"/>
<rectangle x1="-2.8499" y1="4.4449" x2="-1.0719" y2="4.4703" layer="200" rot="R180"/>
<rectangle x1="-5.4661" y1="4.4449" x2="-3.8405" y2="4.4703" layer="200" rot="R180"/>
<rectangle x1="6.6751" y1="4.4703" x2="6.7767" y2="4.4957" layer="200" rot="R180"/>
<rectangle x1="-2.9007" y1="4.4703" x2="-0.9957" y2="4.4957" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="4.4703" x2="-3.7897" y2="4.4957" layer="200" rot="R180"/>
<rectangle x1="6.6243" y1="4.4957" x2="6.7767" y2="4.5211" layer="200" rot="R180"/>
<rectangle x1="-2.9769" y1="4.4957" x2="-0.9195" y2="4.5211" layer="200" rot="R180"/>
<rectangle x1="-3.2563" y1="4.4957" x2="-3.2055" y2="4.5211" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="4.4957" x2="-3.7897" y2="4.5211" layer="200" rot="R180"/>
<rectangle x1="6.6243" y1="4.5211" x2="6.7513" y2="4.5465" layer="200" rot="R180"/>
<rectangle x1="-3.0277" y1="4.5211" x2="-0.8687" y2="4.5465" layer="200" rot="R180"/>
<rectangle x1="-3.2563" y1="4.5211" x2="-3.2055" y2="4.5465" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="4.5211" x2="-3.7643" y2="4.5465" layer="200" rot="R180"/>
<rectangle x1="6.5989" y1="4.5465" x2="6.7513" y2="4.5719" layer="200" rot="R180"/>
<rectangle x1="-3.0785" y1="4.5465" x2="-0.7671" y2="4.5719" layer="200" rot="R180"/>
<rectangle x1="-3.2563" y1="4.5465" x2="-3.1801" y2="4.5719" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="4.5465" x2="-3.7389" y2="4.5719" layer="200" rot="R180"/>
<rectangle x1="6.5989" y1="4.5719" x2="6.7513" y2="4.5973" layer="200" rot="R180"/>
<rectangle x1="-3.2563" y1="4.5719" x2="-0.6909" y2="4.5973" layer="200" rot="R180"/>
<rectangle x1="-5.4153" y1="4.5719" x2="-3.7389" y2="4.5973" layer="200" rot="R180"/>
<rectangle x1="6.5989" y1="4.5973" x2="6.7513" y2="4.6227" layer="200" rot="R180"/>
<rectangle x1="-3.2563" y1="4.5973" x2="-0.6401" y2="4.6227" layer="200" rot="R180"/>
<rectangle x1="-5.4153" y1="4.5973" x2="-3.7135" y2="4.6227" layer="200" rot="R180"/>
<rectangle x1="6.5735" y1="4.6227" x2="6.7513" y2="4.6481" layer="200" rot="R180"/>
<rectangle x1="-3.2309" y1="4.6227" x2="-0.6147" y2="4.6481" layer="200" rot="R180"/>
<rectangle x1="-5.3899" y1="4.6227" x2="-3.6881" y2="4.6481" layer="200" rot="R180"/>
<rectangle x1="6.5735" y1="4.6481" x2="6.7513" y2="4.6735" layer="200" rot="R180"/>
<rectangle x1="-3.2309" y1="4.6481" x2="-0.6147" y2="4.6735" layer="200" rot="R180"/>
<rectangle x1="-5.3899" y1="4.6481" x2="-3.6627" y2="4.6735" layer="200" rot="R180"/>
<rectangle x1="6.5481" y1="4.6735" x2="6.7513" y2="4.6989" layer="200" rot="R180"/>
<rectangle x1="-3.2309" y1="4.6735" x2="-0.5893" y2="4.6989" layer="200" rot="R180"/>
<rectangle x1="-3.4087" y1="4.6735" x2="-3.3325" y2="4.6989" layer="200" rot="R180"/>
<rectangle x1="-5.3899" y1="4.6735" x2="-3.6373" y2="4.6989" layer="200" rot="R180"/>
<rectangle x1="6.5481" y1="4.6989" x2="6.7259" y2="4.7243" layer="200" rot="R180"/>
<rectangle x1="-3.2309" y1="4.6989" x2="-0.5639" y2="4.7243" layer="200" rot="R180"/>
<rectangle x1="-3.4341" y1="4.6989" x2="-3.2817" y2="4.7243" layer="200" rot="R180"/>
<rectangle x1="-5.3899" y1="4.6989" x2="-3.5865" y2="4.7243" layer="200" rot="R180"/>
<rectangle x1="6.5227" y1="4.7243" x2="6.7259" y2="4.7497" layer="200" rot="R180"/>
<rectangle x1="-3.4595" y1="4.7243" x2="-0.5385" y2="4.7497" layer="200" rot="R180"/>
<rectangle x1="-5.3645" y1="4.7243" x2="-3.5611" y2="4.7497" layer="200" rot="R180"/>
<rectangle x1="6.4973" y1="4.7497" x2="6.7005" y2="4.7751" layer="200" rot="R180"/>
<rectangle x1="-3.4849" y1="4.7497" x2="-0.4877" y2="4.7751" layer="200" rot="R180"/>
<rectangle x1="-5.3645" y1="4.7497" x2="-3.5357" y2="4.7751" layer="200" rot="R180"/>
<rectangle x1="6.4719" y1="4.7751" x2="6.6751" y2="4.8005" layer="200" rot="R180"/>
<rectangle x1="-5.3645" y1="4.7751" x2="-0.4623" y2="4.8005" layer="200" rot="R180"/>
<rectangle x1="6.4465" y1="4.8005" x2="6.6497" y2="4.8259" layer="200" rot="R180"/>
<rectangle x1="-5.3645" y1="4.8005" x2="-0.4115" y2="4.8259" layer="200" rot="R180"/>
<rectangle x1="6.4465" y1="4.8259" x2="6.6243" y2="4.8513" layer="200" rot="R180"/>
<rectangle x1="-5.3391" y1="4.8259" x2="-0.3353" y2="4.8513" layer="200" rot="R180"/>
<rectangle x1="6.4211" y1="4.8513" x2="6.5989" y2="4.8767" layer="200" rot="R180"/>
<rectangle x1="-5.3391" y1="4.8513" x2="-0.2845" y2="4.8767" layer="200" rot="R180"/>
<rectangle x1="6.4211" y1="4.8767" x2="6.5989" y2="4.9021" layer="200" rot="R180"/>
<rectangle x1="-5.3137" y1="4.8767" x2="-0.2591" y2="4.9021" layer="200" rot="R180"/>
<rectangle x1="6.3957" y1="4.9021" x2="6.5735" y2="4.9275" layer="200" rot="R180"/>
<rectangle x1="-5.3137" y1="4.9021" x2="-0.2083" y2="4.9275" layer="200" rot="R180"/>
<rectangle x1="6.3703" y1="4.9275" x2="6.5735" y2="4.9529" layer="200" rot="R180"/>
<rectangle x1="-5.3137" y1="4.9275" x2="-0.1829" y2="4.9529" layer="200" rot="R180"/>
<rectangle x1="6.3449" y1="4.9529" x2="6.5227" y2="4.9783" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="4.9529" x2="-0.1575" y2="4.9783" layer="200" rot="R180"/>
<rectangle x1="6.3195" y1="4.9783" x2="6.4719" y2="5.0037" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="4.9783" x2="-0.1321" y2="5.0037" layer="200" rot="R180"/>
<rectangle x1="6.2941" y1="5.0037" x2="6.4465" y2="5.0291" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="5.0037" x2="-0.1067" y2="5.0291" layer="200" rot="R180"/>
<rectangle x1="6.2941" y1="5.0291" x2="6.4465" y2="5.0545" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="5.0291" x2="-0.1067" y2="5.0545" layer="200" rot="R180"/>
<rectangle x1="6.2687" y1="5.0545" x2="6.4211" y2="5.0799" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.0545" x2="-0.0813" y2="5.0799" layer="200" rot="R180"/>
<rectangle x1="6.2433" y1="5.0799" x2="6.4211" y2="5.1053" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.0799" x2="-0.0559" y2="5.1053" layer="200" rot="R180"/>
<rectangle x1="6.2433" y1="5.1053" x2="6.3957" y2="5.1307" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.1053" x2="-0.0559" y2="5.1307" layer="200" rot="R180"/>
<rectangle x1="6.2179" y1="5.1307" x2="6.3703" y2="5.1561" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.1307" x2="-0.0305" y2="5.1561" layer="200" rot="R180"/>
<rectangle x1="6.1925" y1="5.1561" x2="6.3449" y2="5.1815" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.1561" x2="-0.0051" y2="5.1815" layer="200" rot="R180"/>
<rectangle x1="6.1671" y1="5.1815" x2="6.3195" y2="5.2069" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.1815" x2="0.0203" y2="5.2069" layer="200" rot="R180"/>
<rectangle x1="6.1671" y1="5.2069" x2="6.2941" y2="5.2323" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.2069" x2="0.0457" y2="5.2323" layer="200" rot="R180"/>
<rectangle x1="6.1417" y1="5.2323" x2="6.2941" y2="5.2577" layer="200" rot="R180"/>
<rectangle x1="-5.2375" y1="5.2323" x2="0.0711" y2="5.2577" layer="200" rot="R180"/>
<rectangle x1="6.1163" y1="5.2577" x2="6.2687" y2="5.2831" layer="200" rot="R180"/>
<rectangle x1="-5.2375" y1="5.2577" x2="0.1219" y2="5.2831" layer="200" rot="R180"/>
<rectangle x1="6.0909" y1="5.2831" x2="6.2433" y2="5.3085" layer="200" rot="R180"/>
<rectangle x1="-5.2375" y1="5.2831" x2="0.1473" y2="5.3085" layer="200" rot="R180"/>
<rectangle x1="6.0655" y1="5.3085" x2="6.2179" y2="5.3339" layer="200" rot="R180"/>
<rectangle x1="-5.2121" y1="5.3085" x2="0.1727" y2="5.3339" layer="200" rot="R180"/>
<rectangle x1="6.0401" y1="5.3339" x2="6.1925" y2="5.3593" layer="200" rot="R180"/>
<rectangle x1="-5.1867" y1="5.3339" x2="0.1981" y2="5.3593" layer="200" rot="R180"/>
<rectangle x1="6.0147" y1="5.3593" x2="6.1671" y2="5.3847" layer="200" rot="R180"/>
<rectangle x1="-5.1867" y1="5.3593" x2="0.2235" y2="5.3847" layer="200" rot="R180"/>
<rectangle x1="5.9893" y1="5.3847" x2="6.1417" y2="5.4101" layer="200" rot="R180"/>
<rectangle x1="-5.1613" y1="5.3847" x2="0.2235" y2="5.4101" layer="200" rot="R180"/>
<rectangle x1="5.9639" y1="5.4101" x2="6.1163" y2="5.4355" layer="200" rot="R180"/>
<rectangle x1="-5.1359" y1="5.4101" x2="0.2489" y2="5.4355" layer="200" rot="R180"/>
<rectangle x1="5.9639" y1="5.4355" x2="6.1163" y2="5.4609" layer="200" rot="R180"/>
<rectangle x1="-5.1359" y1="5.4355" x2="0.2743" y2="5.4609" layer="200" rot="R180"/>
<rectangle x1="5.9385" y1="5.4609" x2="6.0909" y2="5.4863" layer="200" rot="R180"/>
<rectangle x1="-5.1105" y1="5.4609" x2="0.2997" y2="5.4863" layer="200" rot="R180"/>
<rectangle x1="5.9131" y1="5.4863" x2="6.0655" y2="5.5117" layer="200" rot="R180"/>
<rectangle x1="-5.0851" y1="5.4863" x2="0.2997" y2="5.5117" layer="200" rot="R180"/>
<rectangle x1="5.9131" y1="5.5117" x2="6.0401" y2="5.5371" layer="200" rot="R180"/>
<rectangle x1="-5.0851" y1="5.5117" x2="0.3251" y2="5.5371" layer="200" rot="R180"/>
<rectangle x1="5.8877" y1="5.5371" x2="5.9893" y2="5.5625" layer="200" rot="R180"/>
<rectangle x1="-5.0597" y1="5.5371" x2="0.3505" y2="5.5625" layer="200" rot="R180"/>
<rectangle x1="5.8369" y1="5.5625" x2="5.9385" y2="5.5879" layer="200" rot="R180"/>
<rectangle x1="-5.0597" y1="5.5625" x2="0.3505" y2="5.5879" layer="200" rot="R180"/>
<rectangle x1="5.8115" y1="5.5879" x2="5.9131" y2="5.6133" layer="200" rot="R180"/>
<rectangle x1="-5.0597" y1="5.5879" x2="0.3759" y2="5.6133" layer="200" rot="R180"/>
<rectangle x1="5.7861" y1="5.6133" x2="5.9131" y2="5.6387" layer="200" rot="R180"/>
<rectangle x1="-5.0343" y1="5.6133" x2="0.4013" y2="5.6387" layer="200" rot="R180"/>
<rectangle x1="5.7607" y1="5.6387" x2="5.8877" y2="5.6641" layer="200" rot="R180"/>
<rectangle x1="-5.0343" y1="5.6387" x2="0.4267" y2="5.6641" layer="200" rot="R180"/>
<rectangle x1="5.7353" y1="5.6641" x2="5.8877" y2="5.6895" layer="200" rot="R180"/>
<rectangle x1="-5.0343" y1="5.6641" x2="0.4267" y2="5.6895" layer="200" rot="R180"/>
<rectangle x1="5.6845" y1="5.6895" x2="5.8623" y2="5.7149" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="5.6895" x2="0.4521" y2="5.7149" layer="200" rot="R180"/>
<rectangle x1="5.6591" y1="5.7149" x2="5.8369" y2="5.7403" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="5.7149" x2="0.4521" y2="5.7403" layer="200" rot="R180"/>
<rectangle x1="5.6337" y1="5.7403" x2="5.7607" y2="5.7657" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="5.7403" x2="0.4775" y2="5.7657" layer="200" rot="R180"/>
<rectangle x1="5.5829" y1="5.7657" x2="5.7353" y2="5.7911" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="5.7657" x2="0.5029" y2="5.7911" layer="200" rot="R180"/>
<rectangle x1="5.5575" y1="5.7911" x2="5.7353" y2="5.8165" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="5.7911" x2="0.5029" y2="5.8165" layer="200" rot="R180"/>
<rectangle x1="5.5321" y1="5.8165" x2="5.7099" y2="5.8419" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="5.8165" x2="0.5029" y2="5.8419" layer="200" rot="R180"/>
<rectangle x1="5.5067" y1="5.8419" x2="5.7099" y2="5.8673" layer="200" rot="R180"/>
<rectangle x1="-4.9835" y1="5.8419" x2="0.5283" y2="5.8673" layer="200" rot="R180"/>
<rectangle x1="5.4813" y1="5.8673" x2="5.6845" y2="5.8927" layer="200" rot="R180"/>
<rectangle x1="-4.9835" y1="5.8673" x2="0.5283" y2="5.8927" layer="200" rot="R180"/>
<rectangle x1="5.4559" y1="5.8927" x2="5.6337" y2="5.9181" layer="200" rot="R180"/>
<rectangle x1="-4.9581" y1="5.8927" x2="0.5283" y2="5.9181" layer="200" rot="R180"/>
<rectangle x1="5.4305" y1="5.9181" x2="5.6083" y2="5.9435" layer="200" rot="R180"/>
<rectangle x1="-4.9581" y1="5.9181" x2="0.5537" y2="5.9435" layer="200" rot="R180"/>
<rectangle x1="5.4051" y1="5.9435" x2="5.6083" y2="5.9689" layer="200" rot="R180"/>
<rectangle x1="-4.9581" y1="5.9435" x2="0.5537" y2="5.9689" layer="200" rot="R180"/>
<rectangle x1="5.3797" y1="5.9689" x2="5.5829" y2="5.9943" layer="200" rot="R180"/>
<rectangle x1="-4.9581" y1="5.9689" x2="0.5537" y2="5.9943" layer="200" rot="R180"/>
<rectangle x1="5.3543" y1="5.9943" x2="5.5067" y2="6.0197" layer="200" rot="R180"/>
<rectangle x1="-4.9327" y1="5.9943" x2="0.5791" y2="6.0197" layer="200" rot="R180"/>
<rectangle x1="5.3035" y1="6.0197" x2="5.4813" y2="6.0451" layer="200" rot="R180"/>
<rectangle x1="-4.9327" y1="6.0197" x2="0.5791" y2="6.0451" layer="200" rot="R180"/>
<rectangle x1="5.2781" y1="6.0451" x2="5.4813" y2="6.0705" layer="200" rot="R180"/>
<rectangle x1="-4.9073" y1="6.0451" x2="0.5791" y2="6.0705" layer="200" rot="R180"/>
<rectangle x1="5.2273" y1="6.0705" x2="5.4559" y2="6.0959" layer="200" rot="R180"/>
<rectangle x1="-4.9073" y1="6.0705" x2="0.6045" y2="6.0959" layer="200" rot="R180"/>
<rectangle x1="5.2019" y1="6.0959" x2="5.4305" y2="6.1213" layer="200" rot="R180"/>
<rectangle x1="-4.8819" y1="6.0959" x2="0.6045" y2="6.1213" layer="200" rot="R180"/>
<rectangle x1="5.1511" y1="6.1213" x2="5.4051" y2="6.1467" layer="200" rot="R180"/>
<rectangle x1="-4.8819" y1="6.1213" x2="0.6045" y2="6.1467" layer="200" rot="R180"/>
<rectangle x1="5.1257" y1="6.1467" x2="5.3797" y2="6.1721" layer="200" rot="R180"/>
<rectangle x1="-4.8819" y1="6.1467" x2="0.6045" y2="6.1721" layer="200" rot="R180"/>
<rectangle x1="5.0749" y1="6.1721" x2="5.3289" y2="6.1975" layer="200" rot="R180"/>
<rectangle x1="-4.8565" y1="6.1721" x2="0.6299" y2="6.1975" layer="200" rot="R180"/>
<rectangle x1="5.0495" y1="6.1975" x2="5.3035" y2="6.2229" layer="200" rot="R180"/>
<rectangle x1="-4.8565" y1="6.1975" x2="0.6299" y2="6.2229" layer="200" rot="R180"/>
<rectangle x1="5.0241" y1="6.2229" x2="5.2781" y2="6.2483" layer="200" rot="R180"/>
<rectangle x1="-4.8311" y1="6.2229" x2="0.6299" y2="6.2483" layer="200" rot="R180"/>
<rectangle x1="4.9987" y1="6.2483" x2="5.2527" y2="6.2737" layer="200" rot="R180"/>
<rectangle x1="-4.8311" y1="6.2483" x2="0.6299" y2="6.2737" layer="200" rot="R180"/>
<rectangle x1="4.9733" y1="6.2737" x2="5.2273" y2="6.2991" layer="200" rot="R180"/>
<rectangle x1="-4.8057" y1="6.2737" x2="0.6553" y2="6.2991" layer="200" rot="R180"/>
<rectangle x1="4.9225" y1="6.2991" x2="5.2019" y2="6.3245" layer="200" rot="R180"/>
<rectangle x1="-4.8057" y1="6.2991" x2="0.6553" y2="6.3245" layer="200" rot="R180"/>
<rectangle x1="4.8717" y1="6.3245" x2="5.1765" y2="6.3499" layer="200" rot="R180"/>
<rectangle x1="-4.7803" y1="6.3245" x2="0.6553" y2="6.3499" layer="200" rot="R180"/>
<rectangle x1="4.8463" y1="6.3499" x2="5.1511" y2="6.3753" layer="200" rot="R180"/>
<rectangle x1="-4.7803" y1="6.3499" x2="0.6553" y2="6.3753" layer="200" rot="R180"/>
<rectangle x1="4.8209" y1="6.3753" x2="5.1257" y2="6.4007" layer="200" rot="R180"/>
<rectangle x1="-4.7549" y1="6.3753" x2="0.6553" y2="6.4007" layer="200" rot="R180"/>
<rectangle x1="4.7701" y1="6.4007" x2="5.1003" y2="6.4261" layer="200" rot="R180"/>
<rectangle x1="-4.7549" y1="6.4007" x2="0.6553" y2="6.4261" layer="200" rot="R180"/>
<rectangle x1="4.7447" y1="6.4261" x2="5.0749" y2="6.4515" layer="200" rot="R180"/>
<rectangle x1="-4.7295" y1="6.4261" x2="0.6553" y2="6.4515" layer="200" rot="R180"/>
<rectangle x1="4.6939" y1="6.4515" x2="5.0495" y2="6.4769" layer="200" rot="R180"/>
<rectangle x1="-4.7041" y1="6.4515" x2="0.6807" y2="6.4769" layer="200" rot="R180"/>
<rectangle x1="4.6685" y1="6.4769" x2="4.9733" y2="6.5023" layer="200" rot="R180"/>
<rectangle x1="-4.7041" y1="6.4769" x2="0.6807" y2="6.5023" layer="200" rot="R180"/>
<rectangle x1="4.6431" y1="6.5023" x2="4.8717" y2="6.5277" layer="200" rot="R180"/>
<rectangle x1="-4.6787" y1="6.5023" x2="0.6807" y2="6.5277" layer="200" rot="R180"/>
<rectangle x1="4.5923" y1="6.5277" x2="4.8717" y2="6.5531" layer="200" rot="R180"/>
<rectangle x1="-4.6787" y1="6.5277" x2="0.6807" y2="6.5531" layer="200" rot="R180"/>
<rectangle x1="4.5415" y1="6.5531" x2="4.8717" y2="6.5785" layer="200" rot="R180"/>
<rectangle x1="-4.6533" y1="6.5531" x2="0.7061" y2="6.5785" layer="200" rot="R180"/>
<rectangle x1="4.4653" y1="6.5785" x2="4.8717" y2="6.6039" layer="200" rot="R180"/>
<rectangle x1="-4.6533" y1="6.5785" x2="0.7061" y2="6.6039" layer="200" rot="R180"/>
<rectangle x1="4.7955" y1="6.6039" x2="4.8717" y2="6.6293" layer="200" rot="R180"/>
<rectangle x1="4.4145" y1="6.6039" x2="4.7447" y2="6.6293" layer="200" rot="R180"/>
<rectangle x1="-4.6279" y1="6.6039" x2="0.7061" y2="6.6293" layer="200" rot="R180"/>
<rectangle x1="4.3637" y1="6.6293" x2="4.7193" y2="6.6547" layer="200" rot="R180"/>
<rectangle x1="-4.6025" y1="6.6293" x2="0.7315" y2="6.6547" layer="200" rot="R180"/>
<rectangle x1="4.3383" y1="6.6547" x2="4.6939" y2="6.6801" layer="200" rot="R180"/>
<rectangle x1="-4.5771" y1="6.6547" x2="0.7315" y2="6.6801" layer="200" rot="R180"/>
<rectangle x1="4.2621" y1="6.6801" x2="4.6939" y2="6.7055" layer="200" rot="R180"/>
<rectangle x1="-4.5517" y1="6.6801" x2="0.7315" y2="6.7055" layer="200" rot="R180"/>
<rectangle x1="4.2367" y1="6.7055" x2="4.6431" y2="6.7309" layer="200" rot="R180"/>
<rectangle x1="-4.5263" y1="6.7055" x2="0.7315" y2="6.7309" layer="200" rot="R180"/>
<rectangle x1="4.1859" y1="6.7309" x2="4.5923" y2="6.7563" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="6.7309" x2="0.7061" y2="6.7563" layer="200" rot="R180"/>
<rectangle x1="4.1605" y1="6.7563" x2="4.5669" y2="6.7817" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="6.7563" x2="0.7061" y2="6.7817" layer="200" rot="R180"/>
<rectangle x1="4.0589" y1="6.7817" x2="4.5161" y2="6.8071" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="6.7817" x2="0.6807" y2="6.8071" layer="200" rot="R180"/>
<rectangle x1="4.0081" y1="6.8071" x2="4.4653" y2="6.8325" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="6.8071" x2="0.6807" y2="6.8325" layer="200" rot="R180"/>
<rectangle x1="3.9827" y1="6.8325" x2="4.4399" y2="6.8579" layer="200" rot="R180"/>
<rectangle x1="-4.4755" y1="6.8325" x2="0.7061" y2="6.8579" layer="200" rot="R180"/>
<rectangle x1="3.9319" y1="6.8579" x2="4.4145" y2="6.8833" layer="200" rot="R180"/>
<rectangle x1="-4.4755" y1="6.8579" x2="0.7315" y2="6.8833" layer="200" rot="R180"/>
<rectangle x1="3.8557" y1="6.8833" x2="4.4145" y2="6.9087" layer="200" rot="R180"/>
<rectangle x1="-4.4501" y1="6.8833" x2="0.7569" y2="6.9087" layer="200" rot="R180"/>
<rectangle x1="3.8049" y1="6.9087" x2="4.3891" y2="6.9341" layer="200" rot="R180"/>
<rectangle x1="-4.4247" y1="6.9087" x2="0.7569" y2="6.9341" layer="200" rot="R180"/>
<rectangle x1="3.7541" y1="6.9341" x2="4.3637" y2="6.9595" layer="200" rot="R180"/>
<rectangle x1="-4.4247" y1="6.9341" x2="0.7569" y2="6.9595" layer="200" rot="R180"/>
<rectangle x1="3.6779" y1="6.9595" x2="4.3637" y2="6.9849" layer="200" rot="R180"/>
<rectangle x1="-4.4247" y1="6.9595" x2="0.7315" y2="6.9849" layer="200" rot="R180"/>
<rectangle x1="3.6271" y1="6.9849" x2="4.3383" y2="7.0103" layer="200" rot="R180"/>
<rectangle x1="-4.3993" y1="6.9849" x2="0.7061" y2="7.0103" layer="200" rot="R180"/>
<rectangle x1="3.5763" y1="7.0103" x2="4.3129" y2="7.0357" layer="200" rot="R180"/>
<rectangle x1="-4.3739" y1="7.0103" x2="0.7061" y2="7.0357" layer="200" rot="R180"/>
<rectangle x1="3.4493" y1="7.0357" x2="4.2621" y2="7.0611" layer="200" rot="R180"/>
<rectangle x1="-4.3739" y1="7.0357" x2="0.6807" y2="7.0611" layer="200" rot="R180"/>
<rectangle x1="3.3477" y1="7.0611" x2="4.2367" y2="7.0865" layer="200" rot="R180"/>
<rectangle x1="-4.3739" y1="7.0611" x2="0.7061" y2="7.0865" layer="200" rot="R180"/>
<rectangle x1="3.2969" y1="7.0865" x2="4.2367" y2="7.1119" layer="200" rot="R180"/>
<rectangle x1="-4.3485" y1="7.0865" x2="0.7061" y2="7.1119" layer="200" rot="R180"/>
<rectangle x1="3.2461" y1="7.1119" x2="4.2113" y2="7.1373" layer="200" rot="R180"/>
<rectangle x1="-4.3485" y1="7.1119" x2="0.7061" y2="7.1373" layer="200" rot="R180"/>
<rectangle x1="3.1445" y1="7.1373" x2="4.2113" y2="7.1627" layer="200" rot="R180"/>
<rectangle x1="-4.3231" y1="7.1373" x2="0.7061" y2="7.1627" layer="200" rot="R180"/>
<rectangle x1="3.0175" y1="7.1627" x2="4.1859" y2="7.1881" layer="200" rot="R180"/>
<rectangle x1="-4.2977" y1="7.1627" x2="0.7061" y2="7.1881" layer="200" rot="R180"/>
<rectangle x1="2.9413" y1="7.1881" x2="4.1605" y2="7.2135" layer="200" rot="R180"/>
<rectangle x1="-4.2723" y1="7.1881" x2="0.7315" y2="7.2135" layer="200" rot="R180"/>
<rectangle x1="4.0081" y1="7.2135" x2="4.1097" y2="7.2389" layer="200" rot="R180"/>
<rectangle x1="2.8397" y1="7.2135" x2="3.9319" y2="7.2389" layer="200" rot="R180"/>
<rectangle x1="-4.2723" y1="7.2135" x2="0.7569" y2="7.2389" layer="200" rot="R180"/>
<rectangle x1="2.6873" y1="7.2389" x2="3.9319" y2="7.2643" layer="200" rot="R180"/>
<rectangle x1="-4.2469" y1="7.2389" x2="0.7823" y2="7.2643" layer="200" rot="R180"/>
<rectangle x1="2.5603" y1="7.2643" x2="3.9573" y2="7.2897" layer="200" rot="R180"/>
<rectangle x1="-4.2469" y1="7.2643" x2="0.7823" y2="7.2897" layer="200" rot="R180"/>
<rectangle x1="2.4079" y1="7.2897" x2="3.9827" y2="7.3151" layer="200" rot="R180"/>
<rectangle x1="-4.2215" y1="7.2897" x2="0.8331" y2="7.3151" layer="200" rot="R180"/>
<rectangle x1="3.8557" y1="7.3151" x2="3.9573" y2="7.3405" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="7.3151" x2="3.7541" y2="7.3405" layer="200" rot="R180"/>
<rectangle x1="-4.2215" y1="7.3151" x2="0.9601" y2="7.3405" layer="200" rot="R180"/>
<rectangle x1="2.0777" y1="7.3405" x2="3.7541" y2="7.3659" layer="200" rot="R180"/>
<rectangle x1="-4.1961" y1="7.3405" x2="1.1633" y2="7.3659" layer="200" rot="R180"/>
<rectangle x1="-4.1961" y1="7.3659" x2="3.7541" y2="7.3913" layer="200" rot="R180"/>
<rectangle x1="-4.1707" y1="7.3913" x2="3.7541" y2="7.4167" layer="200" rot="R180"/>
<rectangle x1="-4.1707" y1="7.4167" x2="3.7287" y2="7.4421" layer="200" rot="R180"/>
<rectangle x1="-4.1453" y1="7.4421" x2="3.7287" y2="7.4675" layer="200" rot="R180"/>
<rectangle x1="-4.1453" y1="7.4675" x2="3.6779" y2="7.4929" layer="200" rot="R180"/>
<rectangle x1="-4.1199" y1="7.4929" x2="3.6525" y2="7.5183" layer="200" rot="R180"/>
<rectangle x1="-4.0945" y1="7.5183" x2="3.6017" y2="7.5437" layer="200" rot="R180"/>
<rectangle x1="-4.0691" y1="7.5437" x2="3.5763" y2="7.5691" layer="200" rot="R180"/>
<rectangle x1="-4.0437" y1="7.5691" x2="3.5509" y2="7.5945" layer="200" rot="R180"/>
<rectangle x1="-4.0437" y1="7.5945" x2="3.5001" y2="7.6199" layer="200" rot="R180"/>
<rectangle x1="-4.0183" y1="7.6199" x2="3.4747" y2="7.6453" layer="200" rot="R180"/>
<rectangle x1="-3.9929" y1="7.6453" x2="3.4239" y2="7.6707" layer="200" rot="R180"/>
<rectangle x1="-3.9929" y1="7.6707" x2="3.3985" y2="7.6961" layer="200" rot="R180"/>
<rectangle x1="-3.9675" y1="7.6961" x2="3.3477" y2="7.7215" layer="200" rot="R180"/>
<rectangle x1="-3.9421" y1="7.7215" x2="3.2969" y2="7.7469" layer="200" rot="R180"/>
<rectangle x1="-3.9167" y1="7.7469" x2="3.2715" y2="7.7723" layer="200" rot="R180"/>
<rectangle x1="-3.8913" y1="7.7723" x2="3.2207" y2="7.7977" layer="200" rot="R180"/>
<rectangle x1="-3.8659" y1="7.7977" x2="3.1953" y2="7.8231" layer="200" rot="R180"/>
<rectangle x1="-3.8405" y1="7.8231" x2="3.1191" y2="7.8485" layer="200" rot="R180"/>
<rectangle x1="-3.8405" y1="7.8485" x2="2.9921" y2="7.8739" layer="200" rot="R180"/>
<rectangle x1="-3.8151" y1="7.8739" x2="2.8651" y2="7.8993" layer="200" rot="R180"/>
<rectangle x1="-3.8151" y1="7.8993" x2="2.7127" y2="7.9247" layer="200" rot="R180"/>
<rectangle x1="-3.7897" y1="7.9247" x2="2.6619" y2="7.9501" layer="200" rot="R180"/>
<rectangle x1="-3.7897" y1="7.9501" x2="2.6111" y2="7.9755" layer="200" rot="R180"/>
<rectangle x1="-3.7643" y1="7.9755" x2="2.5857" y2="8.0009" layer="200" rot="R180"/>
<rectangle x1="-3.7389" y1="8.0009" x2="2.5603" y2="8.0263" layer="200" rot="R180"/>
<rectangle x1="2.4079" y1="8.0263" x2="2.5349" y2="8.0517" layer="200" rot="R180"/>
<rectangle x1="-3.7135" y1="8.0263" x2="2.2809" y2="8.0517" layer="200" rot="R180"/>
<rectangle x1="2.4333" y1="8.0517" x2="2.4841" y2="8.0771" layer="200" rot="R180"/>
<rectangle x1="-3.7135" y1="8.0517" x2="2.2555" y2="8.0771" layer="200" rot="R180"/>
<rectangle x1="-3.6627" y1="8.0771" x2="2.2047" y2="8.1025" layer="200" rot="R180"/>
<rectangle x1="-3.6627" y1="8.1025" x2="2.1539" y2="8.1279" layer="200" rot="R180"/>
<rectangle x1="-3.6373" y1="8.1279" x2="2.1031" y2="8.1533" layer="200" rot="R180"/>
<rectangle x1="-3.6119" y1="8.1533" x2="2.0269" y2="8.1787" layer="200" rot="R180"/>
<rectangle x1="-3.5865" y1="8.1787" x2="1.9253" y2="8.2041" layer="200" rot="R180"/>
<rectangle x1="-3.5611" y1="8.2041" x2="1.8237" y2="8.2295" layer="200" rot="R180"/>
<rectangle x1="-3.5357" y1="8.2295" x2="1.6713" y2="8.2549" layer="200" rot="R180"/>
<rectangle x1="1.5189" y1="8.2549" x2="1.5443" y2="8.2803" layer="200" rot="R180"/>
<rectangle x1="-3.4849" y1="8.2549" x2="1.4935" y2="8.2803" layer="200" rot="R180"/>
<rectangle x1="-3.4595" y1="8.2803" x2="1.3919" y2="8.3057" layer="200" rot="R180"/>
<rectangle x1="-3.4341" y1="8.3057" x2="1.2903" y2="8.3311" layer="200" rot="R180"/>
<rectangle x1="-3.4087" y1="8.3311" x2="1.2395" y2="8.3565" layer="200" rot="R180"/>
<rectangle x1="-3.4087" y1="8.3565" x2="1.2141" y2="8.3819" layer="200" rot="R180"/>
<rectangle x1="-3.3833" y1="8.3819" x2="1.1887" y2="8.4073" layer="200" rot="R180"/>
<rectangle x1="-3.3579" y1="8.4073" x2="1.1379" y2="8.4327" layer="200" rot="R180"/>
<rectangle x1="-3.3579" y1="8.4327" x2="1.0617" y2="8.4581" layer="200" rot="R180"/>
<rectangle x1="-3.3071" y1="8.4581" x2="0.9855" y2="8.4835" layer="200" rot="R180"/>
<rectangle x1="-3.2817" y1="8.4835" x2="0.8585" y2="8.5089" layer="200" rot="R180"/>
<rectangle x1="-3.2563" y1="8.5089" x2="0.8331" y2="8.5343" layer="200" rot="R180"/>
<rectangle x1="-3.2309" y1="8.5343" x2="0.7823" y2="8.5597" layer="200" rot="R180"/>
<rectangle x1="-3.2055" y1="8.5597" x2="0.7569" y2="8.5851" layer="200" rot="R180"/>
<rectangle x1="-3.1801" y1="8.5851" x2="0.7061" y2="8.6105" layer="200" rot="R180"/>
<rectangle x1="-3.1547" y1="8.6105" x2="0.6299" y2="8.6359" layer="200" rot="R180"/>
<rectangle x1="-3.1039" y1="8.6359" x2="0.6045" y2="8.6613" layer="200" rot="R180"/>
<rectangle x1="-3.0531" y1="8.6613" x2="0.5791" y2="8.6867" layer="200" rot="R180"/>
<rectangle x1="-3.0277" y1="8.6867" x2="0.5283" y2="8.7121" layer="200" rot="R180"/>
<rectangle x1="-3.0023" y1="8.7121" x2="0.4775" y2="8.7375" layer="200" rot="R180"/>
<rectangle x1="-2.9515" y1="8.7375" x2="0.4013" y2="8.7629" layer="200" rot="R180"/>
<rectangle x1="-2.9007" y1="8.7629" x2="0.3505" y2="8.7883" layer="200" rot="R180"/>
<rectangle x1="-2.8499" y1="8.7883" x2="0.2743" y2="8.8137" layer="200" rot="R180"/>
<rectangle x1="-2.7991" y1="8.8137" x2="0.2235" y2="8.8391" layer="200" rot="R180"/>
<rectangle x1="-2.7483" y1="8.8391" x2="0.1981" y2="8.8645" layer="200" rot="R180"/>
<rectangle x1="-2.6721" y1="8.8645" x2="0.1219" y2="8.8899" layer="200" rot="R180"/>
<rectangle x1="-2.6467" y1="8.8899" x2="0.0711" y2="8.9153" layer="200" rot="R180"/>
<rectangle x1="-2.5959" y1="8.9153" x2="-0.0559" y2="8.9407" layer="200" rot="R180"/>
<rectangle x1="-2.5705" y1="8.9407" x2="-0.1321" y2="8.9661" layer="200" rot="R180"/>
<rectangle x1="-2.5705" y1="8.9661" x2="-0.1829" y2="8.9915" layer="200" rot="R180"/>
<rectangle x1="-2.5197" y1="8.9915" x2="-0.1829" y2="9.0169" layer="200" rot="R180"/>
<rectangle x1="-2.4181" y1="9.0169" x2="-0.2591" y2="9.0423" layer="200" rot="R180"/>
<rectangle x1="-2.3673" y1="9.0423" x2="-0.3353" y2="9.0677" layer="200" rot="R180"/>
<rectangle x1="-2.2657" y1="9.0677" x2="-0.4877" y2="9.0931" layer="200" rot="R180"/>
<rectangle x1="-2.1387" y1="9.0931" x2="-0.5639" y2="9.1185" layer="200" rot="R180"/>
<rectangle x1="-2.0625" y1="9.1185" x2="-0.6147" y2="9.1439" layer="200" rot="R180"/>
<rectangle x1="-1.9609" y1="9.1439" x2="-0.6655" y2="9.1693" layer="200" rot="R180"/>
<rectangle x1="-1.8593" y1="9.1693" x2="-0.7417" y2="9.1947" layer="200" rot="R180"/>
<rectangle x1="-1.6307" y1="9.1947" x2="-0.8941" y2="9.2201" layer="200" rot="R180"/>
<rectangle x1="-1.3005" y1="9.2201" x2="-1.0211" y2="9.2455" layer="200" rot="R180"/>
<rectangle x1="-1.4275" y1="9.2201" x2="-1.4021" y2="9.2455" layer="200" rot="R180"/>
<rectangle x1="-1.5799" y1="9.2201" x2="-1.4529" y2="9.2455" layer="200" rot="R180"/>
</package>
<package name="KYCON_KLVDX_2020_B">
<pad name="3" x="1.1" y="3.17" drill="0.8128" diameter="2" shape="long" rot="R180"/>
<pad name="1" x="-6.42" y="7.35" drill="0.8128" diameter="2" shape="long" rot="R90"/>
<pad name="2" x="-1.73" y="0.35" drill="0.8128" diameter="2" shape="long"/>
<text x="-6.35" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.715" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<wire x1="0" y1="0" x2="0" y2="0.8" width="0.127" layer="46"/>
<wire x1="0" y1="0.8" x2="-3.5" y2="0.8" width="0.127" layer="46"/>
<wire x1="0" y1="0" x2="-3.5" y2="0" width="0.127" layer="46"/>
<wire x1="-3.5" y1="0" x2="-3.5" y2="0.8" width="0.127" layer="46"/>
<wire x1="2.8" y1="2.8" x2="2.8" y2="3.6" width="0.127" layer="46"/>
<wire x1="2.8" y1="3.6" x2="-0.7" y2="3.6" width="0.127" layer="46"/>
<wire x1="2.8" y1="2.8" x2="-0.7" y2="2.8" width="0.127" layer="46"/>
<wire x1="-0.7" y1="2.8" x2="-0.7" y2="3.6" width="0.127" layer="46"/>
<wire x1="-6.84" y1="5.6" x2="-6.04" y2="5.6" width="0.127" layer="46"/>
<wire x1="-6.04" y1="5.6" x2="-6.04" y2="9.1" width="0.127" layer="46"/>
<wire x1="-6.84" y1="5.6" x2="-6.84" y2="9.1" width="0.127" layer="46"/>
<wire x1="-6.84" y1="9.1" x2="-6.04" y2="9.1" width="0.127" layer="46"/>
<wire x1="4" y1="-1" x2="-6" y2="-1" width="0.127" layer="24"/>
<wire x1="-6" y1="-1" x2="-6" y2="10" width="0.127" layer="24"/>
<wire x1="-6" y1="10" x2="4" y2="10" width="0.127" layer="24"/>
<wire x1="4" y1="10" x2="4" y2="-1" width="0.127" layer="24"/>
<circle x="-1" y="5" radius="3.60555" width="0.127" layer="24"/>
<circle x="-1" y="5" radius="0.63639375" width="0.127" layer="24"/>
</package>
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
<package name="LCD_16X2_R2">
<description>info@huaxinjin.com


1602C-1</description>
<wire x1="4.3" y1="31.35" x2="75.7" y2="31.35" width="0.2032" layer="21"/>
<wire x1="75.7" y1="31.35" x2="75.7" y2="4.65" width="0.2032" layer="21"/>
<wire x1="75.7" y1="4.65" x2="4.3" y2="4.65" width="0.2032" layer="21"/>
<wire x1="4.3" y1="4.65" x2="4.3" y2="31.35" width="0.2032" layer="21"/>
<wire x1="7.85" y1="26" x2="72.15" y2="26" width="0.2032" layer="21"/>
<wire x1="72.15" y1="26" x2="72.15" y2="10" width="0.2032" layer="21"/>
<wire x1="72.15" y1="10" x2="7.85" y2="10" width="0.2032" layer="21"/>
<wire x1="7.85" y1="10" x2="7.85" y2="26" width="0.2032" layer="21"/>
<pad name="1" x="8" y="2.5" drill="1" diameter="1.6764"/>
<pad name="2" x="10.54" y="2.5" drill="1" diameter="1.6764"/>
<pad name="3" x="13.08" y="2.5" drill="1" diameter="1.6764"/>
<pad name="4" x="15.62" y="2.5" drill="1" diameter="1.6764"/>
<pad name="5" x="18.16" y="2.5" drill="1" diameter="1.6764"/>
<pad name="6" x="20.7" y="2.5" drill="1" diameter="1.6764"/>
<pad name="7" x="23.24" y="2.5" drill="1" diameter="1.6764"/>
<pad name="8" x="25.78" y="2.5" drill="1" diameter="1.6764"/>
<pad name="9" x="28.32" y="2.5" drill="1" diameter="1.6764"/>
<pad name="10" x="30.86" y="2.5" drill="1" diameter="1.6764"/>
<pad name="11" x="33.4" y="2.5" drill="1" diameter="1.6764"/>
<pad name="12" x="35.94" y="2.5" drill="1" diameter="1.6764"/>
<pad name="13" x="38.48" y="2.5" drill="1" diameter="1.6764"/>
<pad name="14" x="41.02" y="2.5" drill="1" diameter="1.6764"/>
<pad name="15" x="43.56" y="2.5" drill="1" diameter="1.6764"/>
<pad name="16" x="46.01" y="2.5" drill="1" diameter="1.6764"/>
<text x="2.81" y="36.555" size="1.27" layer="25">&gt;NAME</text>
<text x="35.545" y="36.555" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="11.06" y1="18.24" x2="14.01" y2="22.59" layer="21"/>
<rectangle x1="11.06" y1="13.09" x2="14.01" y2="17.44" layer="21"/>
<rectangle x1="14.71" y1="18.24" x2="17.66" y2="22.59" layer="21"/>
<rectangle x1="14.71" y1="13.09" x2="17.66" y2="17.44" layer="21"/>
<rectangle x1="18.36" y1="18.24" x2="21.31" y2="22.59" layer="21"/>
<rectangle x1="18.36" y1="13.09" x2="21.31" y2="17.44" layer="21"/>
<rectangle x1="22.01" y1="18.24" x2="24.96" y2="22.59" layer="21"/>
<rectangle x1="22.01" y1="13.09" x2="24.96" y2="17.44" layer="21"/>
<rectangle x1="25.66" y1="18.24" x2="28.61" y2="22.59" layer="21"/>
<rectangle x1="25.66" y1="13.09" x2="28.61" y2="17.44" layer="21"/>
<rectangle x1="29.31" y1="18.24" x2="32.26" y2="22.59" layer="21"/>
<rectangle x1="29.31" y1="13.09" x2="32.26" y2="17.44" layer="21"/>
<rectangle x1="32.96" y1="18.24" x2="35.91" y2="22.59" layer="21"/>
<rectangle x1="32.96" y1="13.09" x2="35.91" y2="17.44" layer="21"/>
<rectangle x1="36.61" y1="18.24" x2="39.56" y2="22.59" layer="21"/>
<rectangle x1="36.61" y1="13.09" x2="39.56" y2="17.44" layer="21"/>
<rectangle x1="40.26" y1="18.24" x2="43.21" y2="22.59" layer="21"/>
<rectangle x1="40.26" y1="13.09" x2="43.21" y2="17.44" layer="21"/>
<rectangle x1="43.91" y1="18.24" x2="46.86" y2="22.59" layer="21"/>
<rectangle x1="43.91" y1="13.09" x2="46.86" y2="17.44" layer="21"/>
<rectangle x1="47.56" y1="18.24" x2="50.51" y2="22.59" layer="21"/>
<rectangle x1="47.56" y1="13.09" x2="50.51" y2="17.44" layer="21"/>
<rectangle x1="51.21" y1="18.24" x2="54.16" y2="22.59" layer="21"/>
<rectangle x1="51.21" y1="13.09" x2="54.16" y2="17.44" layer="21"/>
<rectangle x1="54.86" y1="18.24" x2="57.81" y2="22.59" layer="21"/>
<rectangle x1="54.86" y1="13.09" x2="57.81" y2="17.44" layer="21"/>
<rectangle x1="58.51" y1="18.24" x2="61.46" y2="22.59" layer="21"/>
<rectangle x1="58.51" y1="13.09" x2="61.46" y2="17.44" layer="21"/>
<rectangle x1="62.16" y1="18.24" x2="65.11" y2="22.59" layer="21"/>
<rectangle x1="62.16" y1="13.09" x2="65.11" y2="17.44" layer="21"/>
<rectangle x1="65.81" y1="18.24" x2="68.76" y2="22.59" layer="21"/>
<rectangle x1="65.81" y1="13.09" x2="68.76" y2="17.44" layer="21"/>
<wire x1="0" y1="0" x2="80" y2="0" width="0.127" layer="21"/>
<wire x1="80" y1="0" x2="80" y2="36" width="0.127" layer="21"/>
<wire x1="80" y1="36" x2="0" y2="36" width="0.127" layer="21"/>
<wire x1="0" y1="36" x2="0" y2="0" width="0.127" layer="21"/>
<hole x="2.5" y="2.5" drill="3.2"/>
<hole x="2.5" y="33.5" drill="3.2"/>
<hole x="77.5" y="33.5" drill="3.2"/>
<hole x="77.5" y="2.5" drill="3.2"/>
</package>
</packages>
<symbols>
<symbol name="EQUINOX_LOGO_SMALL">
<rectangle x1="1.0617" y1="-5.1817" x2="1.2141" y2="-5.1563" layer="200" rot="R180"/>
<rectangle x1="0.7315" y1="-5.1563" x2="1.3157" y2="-5.1309" layer="200" rot="R180"/>
<rectangle x1="0.7315" y1="-5.1309" x2="1.4173" y2="-5.1055" layer="200" rot="R180"/>
<rectangle x1="1.8491" y1="-5.1055" x2="2.3825" y2="-5.0801" layer="200" rot="R180"/>
<rectangle x1="0.7315" y1="-5.1055" x2="1.5443" y2="-5.0801" layer="200" rot="R180"/>
<rectangle x1="1.7729" y1="-5.0801" x2="2.4079" y2="-5.0547" layer="200" rot="R180"/>
<rectangle x1="0.6045" y1="-5.0801" x2="1.5951" y2="-5.0547" layer="200" rot="R180"/>
<rectangle x1="0.5029" y1="-5.0547" x2="2.4333" y2="-5.0293" layer="200" rot="R180"/>
<rectangle x1="0.4267" y1="-5.0293" x2="2.6873" y2="-5.0039" layer="200" rot="R180"/>
<rectangle x1="0.3759" y1="-5.0039" x2="2.7635" y2="-4.9785" layer="200" rot="R180"/>
<rectangle x1="0.3759" y1="-4.9785" x2="2.8905" y2="-4.9531" layer="200" rot="R180"/>
<rectangle x1="1.9253" y1="-4.9531" x2="3.1699" y2="-4.9277" layer="200" rot="R180"/>
<rectangle x1="0.3505" y1="-4.9531" x2="0.7569" y2="-4.9277" layer="200" rot="R180"/>
<rectangle x1="2.0777" y1="-4.9277" x2="3.1953" y2="-4.9023" layer="200" rot="R180"/>
<rectangle x1="0.3251" y1="-4.9277" x2="0.5283" y2="-4.9023" layer="200" rot="R180"/>
<rectangle x1="2.1285" y1="-4.9023" x2="3.1953" y2="-4.8769" layer="200" rot="R180"/>
<rectangle x1="-0.0051" y1="-4.9023" x2="0.2235" y2="-4.8769" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="-4.8769" x2="3.2207" y2="-4.8515" layer="200" rot="R180"/>
<rectangle x1="0.0457" y1="-4.8769" x2="0.0711" y2="-4.8515" layer="200" rot="R180"/>
<rectangle x1="2.5603" y1="-4.8515" x2="3.2715" y2="-4.8261" layer="200" rot="R180"/>
<rectangle x1="3.1699" y1="-4.8261" x2="3.3985" y2="-4.8007" layer="200" rot="R180"/>
<rectangle x1="2.6111" y1="-4.8261" x2="3.1191" y2="-4.8007" layer="200" rot="R180"/>
<rectangle x1="3.1699" y1="-4.8007" x2="3.4239" y2="-4.7753" layer="200" rot="R180"/>
<rectangle x1="2.6619" y1="-4.8007" x2="3.0937" y2="-4.7753" layer="200" rot="R180"/>
<rectangle x1="3.1699" y1="-4.7753" x2="3.4747" y2="-4.7499" layer="200" rot="R180"/>
<rectangle x1="2.7127" y1="-4.7753" x2="3.0937" y2="-4.7499" layer="200" rot="R180"/>
<rectangle x1="2.8905" y1="-4.7499" x2="3.5001" y2="-4.7245" layer="200" rot="R180"/>
<rectangle x1="3.0175" y1="-4.7245" x2="3.5255" y2="-4.6991" layer="200" rot="R180"/>
<rectangle x1="3.0429" y1="-4.6991" x2="3.5763" y2="-4.6737" layer="200" rot="R180"/>
<rectangle x1="3.0937" y1="-4.6737" x2="3.6271" y2="-4.6483" layer="200" rot="R180"/>
<rectangle x1="3.3223" y1="-4.6483" x2="3.6779" y2="-4.6229" layer="200" rot="R180"/>
<rectangle x1="3.3731" y1="-4.6229" x2="3.6779" y2="-4.5975" layer="200" rot="R180"/>
<rectangle x1="3.3985" y1="-4.5975" x2="3.6779" y2="-4.5721" layer="200" rot="R180"/>
<rectangle x1="3.4493" y1="-4.5721" x2="3.7033" y2="-4.5467" layer="200" rot="R180"/>
<rectangle x1="3.6525" y1="-4.5467" x2="3.6779" y2="-4.5213" layer="200" rot="R180"/>
<rectangle x1="3.7287" y1="-4.5213" x2="3.8303" y2="-4.4959" layer="200" rot="R180"/>
<rectangle x1="3.7541" y1="-4.4959" x2="3.9065" y2="-4.4705" layer="200" rot="R180"/>
<rectangle x1="3.9827" y1="-4.4197" x2="4.0843" y2="-4.3943" layer="200" rot="R180"/>
<rectangle x1="3.9827" y1="-4.3943" x2="4.0843" y2="-4.3689" layer="200" rot="R180"/>
<rectangle x1="4.0335" y1="-4.3689" x2="4.0589" y2="-4.3435" layer="200" rot="R180"/>
<rectangle x1="4.4399" y1="-4.3181" x2="4.5923" y2="-4.2927" layer="200" rot="R180"/>
<rectangle x1="4.4145" y1="-4.2927" x2="4.6431" y2="-4.2673" layer="200" rot="R180"/>
<rectangle x1="4.3891" y1="-4.2673" x2="4.6685" y2="-4.2419" layer="200" rot="R180"/>
<rectangle x1="4.2875" y1="-4.2419" x2="4.6939" y2="-4.2165" layer="200" rot="R180"/>
<rectangle x1="4.2621" y1="-4.2165" x2="4.7193" y2="-4.1911" layer="200" rot="R180"/>
<rectangle x1="4.2875" y1="-4.1911" x2="4.7701" y2="-4.1657" layer="200" rot="R180"/>
<rectangle x1="4.3383" y1="-4.1657" x2="4.7701" y2="-4.1403" layer="200" rot="R180"/>
<rectangle x1="4.4145" y1="-4.1403" x2="4.7955" y2="-4.1149" layer="200" rot="R180"/>
<rectangle x1="4.4399" y1="-4.1149" x2="4.7955" y2="-4.0895" layer="200" rot="R180"/>
<rectangle x1="4.4653" y1="-4.0895" x2="4.8209" y2="-4.0641" layer="200" rot="R180"/>
<rectangle x1="4.5161" y1="-4.0641" x2="4.8971" y2="-4.0387" layer="200" rot="R180"/>
<rectangle x1="5.1257" y1="-4.0387" x2="5.2273" y2="-4.0133" layer="200" rot="R180"/>
<rectangle x1="4.5923" y1="-4.0387" x2="4.9733" y2="-4.0133" layer="200" rot="R180"/>
<rectangle x1="5.1003" y1="-4.0133" x2="5.2781" y2="-3.9879" layer="200" rot="R180"/>
<rectangle x1="4.6177" y1="-4.0133" x2="4.9987" y2="-3.9879" layer="200" rot="R180"/>
<rectangle x1="5.0749" y1="-3.9879" x2="5.3035" y2="-3.9625" layer="200" rot="R180"/>
<rectangle x1="4.6177" y1="-3.9879" x2="5.0241" y2="-3.9625" layer="200" rot="R180"/>
<rectangle x1="4.6939" y1="-3.9625" x2="5.3035" y2="-3.9371" layer="200" rot="R180"/>
<rectangle x1="4.7701" y1="-3.9371" x2="5.3035" y2="-3.9117" layer="200" rot="R180"/>
<rectangle x1="4.7955" y1="-3.9117" x2="5.3289" y2="-3.8863" layer="200" rot="R180"/>
<rectangle x1="4.8209" y1="-3.8863" x2="5.4051" y2="-3.8609" layer="200" rot="R180"/>
<rectangle x1="4.8463" y1="-3.8609" x2="5.4813" y2="-3.8355" layer="200" rot="R180"/>
<rectangle x1="4.8971" y1="-3.8355" x2="5.4813" y2="-3.8101" layer="200" rot="R180"/>
<rectangle x1="4.9225" y1="-3.8101" x2="5.5067" y2="-3.7847" layer="200" rot="R180"/>
<rectangle x1="4.9733" y1="-3.7847" x2="5.5067" y2="-3.7593" layer="200" rot="R180"/>
<rectangle x1="4.9987" y1="-3.7593" x2="5.5321" y2="-3.7339" layer="200" rot="R180"/>
<rectangle x1="5.0241" y1="-3.7339" x2="5.5321" y2="-3.7085" layer="200" rot="R180"/>
<rectangle x1="5.0241" y1="-3.7085" x2="5.5575" y2="-3.6831" layer="200" rot="R180"/>
<rectangle x1="5.0495" y1="-3.6831" x2="5.7099" y2="-3.6577" layer="200" rot="R180"/>
<rectangle x1="5.1003" y1="-3.6577" x2="5.7607" y2="-3.6323" layer="200" rot="R180"/>
<rectangle x1="5.1257" y1="-3.6323" x2="5.7861" y2="-3.6069" layer="200" rot="R180"/>
<rectangle x1="5.1765" y1="-3.6069" x2="5.8115" y2="-3.5815" layer="200" rot="R180"/>
<rectangle x1="5.1765" y1="-3.5815" x2="5.8369" y2="-3.5561" layer="200" rot="R180"/>
<rectangle x1="5.2019" y1="-3.5561" x2="5.8369" y2="-3.5307" layer="200" rot="R180"/>
<rectangle x1="5.2527" y1="-3.5307" x2="5.8623" y2="-3.5053" layer="200" rot="R180"/>
<rectangle x1="5.2781" y1="-3.5053" x2="5.8877" y2="-3.4799" layer="200" rot="R180"/>
<rectangle x1="5.3035" y1="-3.4799" x2="5.9385" y2="-3.4545" layer="200" rot="R180"/>
<rectangle x1="5.3289" y1="-3.4545" x2="6.0655" y2="-3.4291" layer="200" rot="R180"/>
<rectangle x1="5.3797" y1="-3.4291" x2="6.0909" y2="-3.4037" layer="200" rot="R180"/>
<rectangle x1="5.4051" y1="-3.4037" x2="6.0909" y2="-3.3783" layer="200" rot="R180"/>
<rectangle x1="5.4305" y1="-3.3783" x2="6.0909" y2="-3.3529" layer="200" rot="R180"/>
<rectangle x1="5.4559" y1="-3.3529" x2="6.0909" y2="-3.3275" layer="200" rot="R180"/>
<rectangle x1="5.4813" y1="-3.3275" x2="6.0909" y2="-3.3021" layer="200" rot="R180"/>
<rectangle x1="5.5067" y1="-3.3021" x2="6.0655" y2="-3.2767" layer="200" rot="R180"/>
<rectangle x1="5.5321" y1="-3.2767" x2="6.0655" y2="-3.2513" layer="200" rot="R180"/>
<rectangle x1="5.5829" y1="-3.2513" x2="6.2687" y2="-3.2259" layer="200" rot="R180"/>
<rectangle x1="5.6083" y1="-3.2259" x2="6.3195" y2="-3.2005" layer="200" rot="R180"/>
<rectangle x1="5.6337" y1="-3.2005" x2="6.3449" y2="-3.1751" layer="200" rot="R180"/>
<rectangle x1="5.6591" y1="-3.1751" x2="6.3449" y2="-3.1497" layer="200" rot="R180"/>
<rectangle x1="5.6845" y1="-3.1497" x2="6.3449" y2="-3.1243" layer="200" rot="R180"/>
<rectangle x1="5.7099" y1="-3.1243" x2="6.3449" y2="-3.0989" layer="200" rot="R180"/>
<rectangle x1="5.7607" y1="-3.0989" x2="6.3703" y2="-3.0735" layer="200" rot="R180"/>
<rectangle x1="5.7861" y1="-3.0735" x2="6.3957" y2="-3.0481" layer="200" rot="R180"/>
<rectangle x1="5.8115" y1="-3.0481" x2="6.4211" y2="-3.0227" layer="200" rot="R180"/>
<rectangle x1="5.8115" y1="-3.0227" x2="6.4211" y2="-2.9973" layer="200" rot="R180"/>
<rectangle x1="5.8369" y1="-2.9973" x2="6.4465" y2="-2.9719" layer="200" rot="R180"/>
<rectangle x1="5.8623" y1="-2.9719" x2="6.4465" y2="-2.9465" layer="200" rot="R180"/>
<rectangle x1="5.8877" y1="-2.9465" x2="6.5989" y2="-2.9211" layer="200" rot="R180"/>
<rectangle x1="5.9131" y1="-2.9211" x2="6.6243" y2="-2.8957" layer="200" rot="R180"/>
<rectangle x1="5.9385" y1="-2.8957" x2="6.6497" y2="-2.8703" layer="200" rot="R180"/>
<rectangle x1="5.9385" y1="-2.8703" x2="6.6497" y2="-2.8449" layer="200" rot="R180"/>
<rectangle x1="5.9639" y1="-2.8449" x2="6.6497" y2="-2.8195" layer="200" rot="R180"/>
<rectangle x1="5.9893" y1="-2.8195" x2="6.6497" y2="-2.7941" layer="200" rot="R180"/>
<rectangle x1="6.0147" y1="-2.7941" x2="6.6751" y2="-2.7687" layer="200" rot="R180"/>
<rectangle x1="6.0401" y1="-2.7687" x2="6.7005" y2="-2.7433" layer="200" rot="R180"/>
<rectangle x1="6.0655" y1="-2.7433" x2="6.7005" y2="-2.7179" layer="200" rot="R180"/>
<rectangle x1="6.0909" y1="-2.7179" x2="6.7259" y2="-2.6925" layer="200" rot="R180"/>
<rectangle x1="6.0909" y1="-2.6925" x2="6.7513" y2="-2.6671" layer="200" rot="R180"/>
<rectangle x1="6.1163" y1="-2.6671" x2="6.7513" y2="-2.6417" layer="200" rot="R180"/>
<rectangle x1="6.1163" y1="-2.6417" x2="6.7513" y2="-2.6163" layer="200" rot="R180"/>
<rectangle x1="6.1417" y1="-2.6163" x2="6.7767" y2="-2.5909" layer="200" rot="R180"/>
<rectangle x1="6.1671" y1="-2.5909" x2="6.7767" y2="-2.5655" layer="200" rot="R180"/>
<rectangle x1="6.1925" y1="-2.5655" x2="6.7767" y2="-2.5401" layer="200" rot="R180"/>
<rectangle x1="6.1925" y1="-2.5401" x2="6.7767" y2="-2.5147" layer="200" rot="R180"/>
<rectangle x1="6.2179" y1="-2.5147" x2="6.7767" y2="-2.4893" layer="200" rot="R180"/>
<rectangle x1="6.2433" y1="-2.4893" x2="6.8021" y2="-2.4639" layer="200" rot="R180"/>
<rectangle x1="6.2687" y1="-2.4639" x2="6.8021" y2="-2.4385" layer="200" rot="R180"/>
<rectangle x1="6.2941" y1="-2.4385" x2="6.8275" y2="-2.4131" layer="200" rot="R180"/>
<rectangle x1="6.2941" y1="-2.4131" x2="6.8529" y2="-2.3877" layer="200" rot="R180"/>
<rectangle x1="6.3195" y1="-2.3877" x2="6.8783" y2="-2.3623" layer="200" rot="R180"/>
<rectangle x1="-3.8659" y1="-2.3877" x2="-3.8151" y2="-2.3623" layer="200" rot="R180"/>
<rectangle x1="6.3195" y1="-2.3623" x2="6.9037" y2="-2.3369" layer="200" rot="R180"/>
<rectangle x1="-3.8659" y1="-2.3623" x2="-3.8405" y2="-2.3369" layer="200" rot="R180"/>
<rectangle x1="6.3449" y1="-2.3369" x2="6.9291" y2="-2.3115" layer="200" rot="R180"/>
<rectangle x1="6.3703" y1="-2.3115" x2="6.9545" y2="-2.2861" layer="200" rot="R180"/>
<rectangle x1="6.3957" y1="-2.2861" x2="6.9799" y2="-2.2607" layer="200" rot="R180"/>
<rectangle x1="6.4211" y1="-2.2607" x2="7.0053" y2="-2.2353" layer="200" rot="R180"/>
<rectangle x1="6.4211" y1="-2.2353" x2="7.0053" y2="-2.2099" layer="200" rot="R180"/>
<rectangle x1="6.4465" y1="-2.2099" x2="7.0307" y2="-2.1845" layer="200" rot="R180"/>
<rectangle x1="6.4465" y1="-2.1845" x2="7.0307" y2="-2.1591" layer="200" rot="R180"/>
<rectangle x1="6.4973" y1="-2.1591" x2="7.0307" y2="-2.1337" layer="200" rot="R180"/>
<rectangle x1="6.5227" y1="-2.1337" x2="7.0307" y2="-2.1083" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="-2.1083" x2="7.1577" y2="-2.0829" layer="200" rot="R180"/>
<rectangle x1="6.5481" y1="-2.1083" x2="7.0307" y2="-2.0829" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="-2.0829" x2="7.1577" y2="-2.0575" layer="200" rot="R180"/>
<rectangle x1="6.5481" y1="-2.0829" x2="7.0307" y2="-2.0575" layer="200" rot="R180"/>
<rectangle x1="6.5735" y1="-2.0575" x2="7.1831" y2="-2.0321" layer="200" rot="R180"/>
<rectangle x1="6.5735" y1="-2.0321" x2="7.1831" y2="-2.0067" layer="200" rot="R180"/>
<rectangle x1="6.5735" y1="-2.0067" x2="7.1831" y2="-1.9813" layer="200" rot="R180"/>
<rectangle x1="6.5989" y1="-1.9813" x2="7.1577" y2="-1.9559" layer="200" rot="R180"/>
<rectangle x1="6.6243" y1="-1.9559" x2="7.1577" y2="-1.9305" layer="200" rot="R180"/>
<rectangle x1="6.6243" y1="-1.9305" x2="7.1577" y2="-1.9051" layer="200" rot="R180"/>
<rectangle x1="6.6497" y1="-1.9051" x2="7.1323" y2="-1.8797" layer="200" rot="R180"/>
<rectangle x1="6.6497" y1="-1.8797" x2="7.1323" y2="-1.8543" layer="200" rot="R180"/>
<rectangle x1="6.6751" y1="-1.8543" x2="7.1323" y2="-1.8289" layer="200" rot="R180"/>
<rectangle x1="6.6751" y1="-1.8289" x2="7.1323" y2="-1.8035" layer="200" rot="R180"/>
<rectangle x1="6.7005" y1="-1.8035" x2="7.1069" y2="-1.7781" layer="200" rot="R180"/>
<rectangle x1="6.7005" y1="-1.7781" x2="7.1069" y2="-1.7527" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="-1.7527" x2="7.1323" y2="-1.7273" layer="200" rot="R180"/>
<rectangle x1="6.7513" y1="-1.7273" x2="7.1577" y2="-1.7019" layer="200" rot="R180"/>
<rectangle x1="6.7767" y1="-1.7019" x2="7.1831" y2="-1.6765" layer="200" rot="R180"/>
<rectangle x1="-4.2723" y1="-1.7019" x2="-4.2469" y2="-1.6765" layer="200" rot="R180"/>
<rectangle x1="6.7767" y1="-1.6765" x2="7.2085" y2="-1.6511" layer="200" rot="R180"/>
<rectangle x1="-4.2977" y1="-1.6765" x2="-4.2215" y2="-1.6511" layer="200" rot="R180"/>
<rectangle x1="6.8021" y1="-1.6511" x2="7.2085" y2="-1.6257" layer="200" rot="R180"/>
<rectangle x1="-4.2977" y1="-1.6511" x2="-4.2215" y2="-1.6257" layer="200" rot="R180"/>
<rectangle x1="6.8021" y1="-1.6257" x2="7.2339" y2="-1.6003" layer="200" rot="R180"/>
<rectangle x1="-4.3231" y1="-1.6257" x2="-4.2215" y2="-1.6003" layer="200" rot="R180"/>
<rectangle x1="6.8021" y1="-1.6003" x2="7.2339" y2="-1.5749" layer="200" rot="R180"/>
<rectangle x1="-4.3231" y1="-1.6003" x2="-4.2215" y2="-1.5749" layer="200" rot="R180"/>
<rectangle x1="6.8275" y1="-1.5749" x2="7.2339" y2="-1.5495" layer="200" rot="R180"/>
<rectangle x1="-4.3231" y1="-1.5749" x2="-4.2469" y2="-1.5495" layer="200" rot="R180"/>
<rectangle x1="6.8275" y1="-1.5495" x2="7.2593" y2="-1.5241" layer="200" rot="R180"/>
<rectangle x1="-4.3231" y1="-1.5495" x2="-4.2723" y2="-1.5241" layer="200" rot="R180"/>
<rectangle x1="6.8529" y1="-1.5241" x2="7.2847" y2="-1.4987" layer="200" rot="R180"/>
<rectangle x1="-4.3739" y1="-1.5241" x2="-4.2977" y2="-1.4987" layer="200" rot="R180"/>
<rectangle x1="6.8783" y1="-1.4987" x2="7.3355" y2="-1.4733" layer="200" rot="R180"/>
<rectangle x1="-4.3993" y1="-1.4987" x2="-4.2977" y2="-1.4733" layer="200" rot="R180"/>
<rectangle x1="6.8783" y1="-1.4733" x2="7.3609" y2="-1.4479" layer="200" rot="R180"/>
<rectangle x1="-4.3993" y1="-1.4733" x2="-4.3231" y2="-1.4479" layer="200" rot="R180"/>
<rectangle x1="6.9037" y1="-1.4479" x2="7.3863" y2="-1.4225" layer="200" rot="R180"/>
<rectangle x1="-4.4247" y1="-1.4479" x2="-4.3231" y2="-1.4225" layer="200" rot="R180"/>
<rectangle x1="6.9037" y1="-1.4225" x2="7.3863" y2="-1.3971" layer="200" rot="R180"/>
<rectangle x1="-4.4247" y1="-1.4225" x2="-4.3231" y2="-1.3971" layer="200" rot="R180"/>
<rectangle x1="6.9037" y1="-1.3971" x2="7.4117" y2="-1.3717" layer="200" rot="R180"/>
<rectangle x1="-4.4501" y1="-1.3971" x2="-4.3231" y2="-1.3717" layer="200" rot="R180"/>
<rectangle x1="6.9291" y1="-1.3717" x2="7.4117" y2="-1.3463" layer="200" rot="R180"/>
<rectangle x1="-4.4755" y1="-1.3717" x2="-4.3231" y2="-1.3463" layer="200" rot="R180"/>
<rectangle x1="6.9291" y1="-1.3463" x2="7.4117" y2="-1.3209" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="-1.3463" x2="-4.3485" y2="-1.3209" layer="200" rot="R180"/>
<rectangle x1="6.9545" y1="-1.3209" x2="7.4117" y2="-1.2955" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="-1.3209" x2="-4.3739" y2="-1.2955" layer="200" rot="R180"/>
<rectangle x1="6.9799" y1="-1.2955" x2="7.4117" y2="-1.2701" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="-1.2955" x2="-4.3993" y2="-1.2701" layer="200" rot="R180"/>
<rectangle x1="6.9799" y1="-1.2701" x2="7.4117" y2="-1.2447" layer="200" rot="R180"/>
<rectangle x1="-4.5263" y1="-1.2701" x2="-4.3993" y2="-1.2447" layer="200" rot="R180"/>
<rectangle x1="7.0053" y1="-1.2447" x2="7.4117" y2="-1.2193" layer="200" rot="R180"/>
<rectangle x1="-4.5263" y1="-1.2447" x2="-4.3993" y2="-1.2193" layer="200" rot="R180"/>
<rectangle x1="7.0053" y1="-1.2193" x2="7.4117" y2="-1.1939" layer="200" rot="R180"/>
<rectangle x1="-4.6025" y1="-1.2193" x2="-4.4247" y2="-1.1939" layer="200" rot="R180"/>
<rectangle x1="7.0307" y1="-1.1939" x2="7.4371" y2="-1.1685" layer="200" rot="R180"/>
<rectangle x1="-4.6533" y1="-1.1939" x2="-4.4247" y2="-1.1685" layer="200" rot="R180"/>
<rectangle x1="7.0307" y1="-1.1685" x2="7.4371" y2="-1.1431" layer="200" rot="R180"/>
<rectangle x1="-4.6787" y1="-1.1685" x2="-4.4247" y2="-1.1431" layer="200" rot="R180"/>
<rectangle x1="7.0561" y1="-1.1431" x2="7.4625" y2="-1.1177" layer="200" rot="R180"/>
<rectangle x1="-4.6787" y1="-1.1431" x2="-4.4501" y2="-1.1177" layer="200" rot="R180"/>
<rectangle x1="7.0561" y1="-1.1177" x2="7.4625" y2="-1.0923" layer="200" rot="R180"/>
<rectangle x1="-4.7041" y1="-1.1177" x2="-4.4501" y2="-1.0923" layer="200" rot="R180"/>
<rectangle x1="7.0561" y1="-1.0923" x2="7.4879" y2="-1.0669" layer="200" rot="R180"/>
<rectangle x1="-4.7295" y1="-1.0923" x2="-4.4755" y2="-1.0669" layer="200" rot="R180"/>
<rectangle x1="7.0815" y1="-1.0669" x2="7.4879" y2="-1.0415" layer="200" rot="R180"/>
<rectangle x1="-4.7803" y1="-1.0669" x2="-4.4755" y2="-1.0415" layer="200" rot="R180"/>
<rectangle x1="7.0815" y1="-1.0415" x2="7.4879" y2="-1.0161" layer="200" rot="R180"/>
<rectangle x1="-4.8311" y1="-1.0415" x2="-4.4755" y2="-1.0161" layer="200" rot="R180"/>
<rectangle x1="7.0815" y1="-1.0161" x2="7.4879" y2="-0.9907" layer="200" rot="R180"/>
<rectangle x1="-4.8565" y1="-1.0161" x2="-4.5009" y2="-0.9907" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="-0.9907" x2="7.4879" y2="-0.9653" layer="200" rot="R180"/>
<rectangle x1="-4.8819" y1="-0.9907" x2="-4.5009" y2="-0.9653" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="-0.9653" x2="7.4879" y2="-0.9399" layer="200" rot="R180"/>
<rectangle x1="-4.9073" y1="-0.9653" x2="-4.5009" y2="-0.9399" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="-0.9399" x2="7.4879" y2="-0.9145" layer="200" rot="R180"/>
<rectangle x1="-4.9073" y1="-0.9399" x2="-4.5009" y2="-0.9145" layer="200" rot="R180"/>
<rectangle x1="7.1323" y1="-0.9145" x2="7.4879" y2="-0.8891" layer="200" rot="R180"/>
<rectangle x1="-4.9327" y1="-0.9145" x2="-4.5009" y2="-0.8891" layer="200" rot="R180"/>
<rectangle x1="7.1577" y1="-0.8891" x2="7.4879" y2="-0.8637" layer="200" rot="R180"/>
<rectangle x1="-4.9327" y1="-0.8891" x2="-4.5263" y2="-0.8637" layer="200" rot="R180"/>
<rectangle x1="7.1577" y1="-0.8637" x2="7.4879" y2="-0.8383" layer="200" rot="R180"/>
<rectangle x1="-4.9581" y1="-0.8637" x2="-4.5263" y2="-0.8383" layer="200" rot="R180"/>
<rectangle x1="7.1831" y1="-0.8383" x2="7.4879" y2="-0.8129" layer="200" rot="R180"/>
<rectangle x1="-4.9835" y1="-0.8383" x2="-4.5263" y2="-0.8129" layer="200" rot="R180"/>
<rectangle x1="7.1831" y1="-0.8129" x2="7.4879" y2="-0.7875" layer="200" rot="R180"/>
<rectangle x1="-4.9835" y1="-0.8129" x2="-4.5517" y2="-0.7875" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.7875" x2="7.4879" y2="-0.7621" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="-0.7875" x2="-4.5517" y2="-0.7621" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.7621" x2="7.5133" y2="-0.7367" layer="200" rot="R180"/>
<rectangle x1="-5.0343" y1="-0.7621" x2="-4.5771" y2="-0.7367" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.7367" x2="7.5133" y2="-0.7113" layer="200" rot="R180"/>
<rectangle x1="-5.0597" y1="-0.7367" x2="-4.5771" y2="-0.7113" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.7113" x2="7.5387" y2="-0.6859" layer="200" rot="R180"/>
<rectangle x1="-5.1105" y1="-0.7113" x2="-4.6025" y2="-0.6859" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.6859" x2="7.5641" y2="-0.6605" layer="200" rot="R180"/>
<rectangle x1="-5.1359" y1="-0.6859" x2="-4.6025" y2="-0.6605" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.6605" x2="7.5641" y2="-0.6351" layer="200" rot="R180"/>
<rectangle x1="-5.1613" y1="-0.6605" x2="-4.6025" y2="-0.6351" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="-0.6351" x2="7.5895" y2="-0.6097" layer="200" rot="R180"/>
<rectangle x1="-5.1613" y1="-0.6351" x2="-4.6025" y2="-0.6097" layer="200" rot="R180"/>
<rectangle x1="7.2339" y1="-0.6097" x2="7.5895" y2="-0.5843" layer="200" rot="R180"/>
<rectangle x1="-5.1867" y1="-0.6097" x2="-4.6025" y2="-0.5843" layer="200" rot="R180"/>
<rectangle x1="7.2339" y1="-0.5843" x2="7.5895" y2="-0.5589" layer="200" rot="R180"/>
<rectangle x1="-5.2121" y1="-0.5843" x2="-4.6025" y2="-0.5589" layer="200" rot="R180"/>
<rectangle x1="7.2593" y1="-0.5589" x2="7.5641" y2="-0.5335" layer="200" rot="R180"/>
<rectangle x1="-5.2121" y1="-0.5589" x2="-4.6279" y2="-0.5335" layer="200" rot="R180"/>
<rectangle x1="7.2847" y1="-0.5335" x2="7.5387" y2="-0.5081" layer="200" rot="R180"/>
<rectangle x1="-5.2375" y1="-0.5335" x2="-4.6279" y2="-0.5081" layer="200" rot="R180"/>
<rectangle x1="7.2847" y1="-0.5081" x2="7.5133" y2="-0.4827" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="-0.5081" x2="-4.6533" y2="-0.4827" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.4827" x2="7.4879" y2="-0.4573" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="-0.4827" x2="-4.6533" y2="-0.4573" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.4573" x2="7.5133" y2="-0.4319" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="-0.4573" x2="-4.6787" y2="-0.4319" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.4319" x2="7.5387" y2="-0.4065" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="-0.4319" x2="-4.6787" y2="-0.4065" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.4065" x2="7.5387" y2="-0.3811" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="-0.4065" x2="-4.6787" y2="-0.3811" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.3811" x2="7.5641" y2="-0.3557" layer="200" rot="R180"/>
<rectangle x1="-5.3137" y1="-0.3811" x2="-4.6787" y2="-0.3557" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.3557" x2="7.5895" y2="-0.3303" layer="200" rot="R180"/>
<rectangle x1="-5.3137" y1="-0.3557" x2="-4.6787" y2="-0.3303" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.3303" x2="7.6403" y2="-0.3049" layer="200" rot="R180"/>
<rectangle x1="-5.3391" y1="-0.3303" x2="-4.7041" y2="-0.3049" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.3049" x2="7.6657" y2="-0.2795" layer="200" rot="R180"/>
<rectangle x1="-5.3391" y1="-0.3049" x2="-4.7041" y2="-0.2795" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.2795" x2="7.6657" y2="-0.2541" layer="200" rot="R180"/>
<rectangle x1="-5.3645" y1="-0.2795" x2="-4.7041" y2="-0.2541" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.2541" x2="7.6911" y2="-0.2287" layer="200" rot="R180"/>
<rectangle x1="-5.3645" y1="-0.2541" x2="-4.7041" y2="-0.2287" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.2287" x2="7.6911" y2="-0.2033" layer="200" rot="R180"/>
<rectangle x1="-5.3899" y1="-0.2287" x2="-4.7041" y2="-0.2033" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="-0.2033" x2="7.6911" y2="-0.1779" layer="200" rot="R180"/>
<rectangle x1="-5.4153" y1="-0.2033" x2="-4.7295" y2="-0.1779" layer="200" rot="R180"/>
<rectangle x1="7.2847" y1="-0.1779" x2="7.6911" y2="-0.1525" layer="200" rot="R180"/>
<rectangle x1="-5.4153" y1="-0.1779" x2="-4.7295" y2="-0.1525" layer="200" rot="R180"/>
<rectangle x1="3.0937" y1="-0.1525" x2="7.6911" y2="-0.1271" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="-0.1525" x2="-4.7295" y2="-0.1271" layer="200" rot="R180"/>
<rectangle x1="3.0429" y1="-0.1271" x2="7.6911" y2="-0.1017" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="-0.1271" x2="-4.7295" y2="-0.1017" layer="200" rot="R180"/>
<rectangle x1="2.9413" y1="-0.1017" x2="7.6911" y2="-0.0763" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="-0.1017" x2="-4.7549" y2="-0.0763" layer="200" rot="R180"/>
<rectangle x1="2.8397" y1="-0.0763" x2="7.6911" y2="-0.0509" layer="200" rot="R180"/>
<rectangle x1="-5.4661" y1="-0.0763" x2="-4.7549" y2="-0.0509" layer="200" rot="R180"/>
<rectangle x1="2.7889" y1="-0.0509" x2="7.7165" y2="-0.0255" layer="200" rot="R180"/>
<rectangle x1="-5.4661" y1="-0.0509" x2="-4.7803" y2="-0.0255" layer="200" rot="R180"/>
<rectangle x1="2.7381" y1="-0.0255" x2="7.7419" y2="-0.0001" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="-0.0255" x2="-4.7803" y2="-0.0001" layer="200" rot="R180"/>
<rectangle x1="2.6873" y1="-0.0001" x2="7.7673" y2="0.0253" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="-0.0001" x2="-4.7803" y2="0.0253" layer="200" rot="R180"/>
<rectangle x1="2.6111" y1="0.0253" x2="7.7927" y2="0.0507" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="0.0253" x2="-4.7803" y2="0.0507" layer="200" rot="R180"/>
<rectangle x1="2.5603" y1="0.0507" x2="7.8181" y2="0.0761" layer="200" rot="R180"/>
<rectangle x1="-5.5169" y1="0.0507" x2="-4.8057" y2="0.0761" layer="200" rot="R180"/>
<rectangle x1="2.5095" y1="0.0761" x2="7.8181" y2="0.1015" layer="200" rot="R180"/>
<rectangle x1="-5.5169" y1="0.0761" x2="-4.8057" y2="0.1015" layer="200" rot="R180"/>
<rectangle x1="2.4841" y1="0.1015" x2="7.8181" y2="0.1269" layer="200" rot="R180"/>
<rectangle x1="-5.5423" y1="0.1015" x2="-4.8057" y2="0.1269" layer="200" rot="R180"/>
<rectangle x1="2.4587" y1="0.1269" x2="7.8181" y2="0.1523" layer="200" rot="R180"/>
<rectangle x1="-5.5423" y1="0.1269" x2="-4.8057" y2="0.1523" layer="200" rot="R180"/>
<rectangle x1="2.4333" y1="0.1523" x2="7.8181" y2="0.1777" layer="200" rot="R180"/>
<rectangle x1="-5.5677" y1="0.1523" x2="-4.8057" y2="0.1777" layer="200" rot="R180"/>
<rectangle x1="2.4333" y1="0.1777" x2="7.7927" y2="0.2031" layer="200" rot="R180"/>
<rectangle x1="-5.5677" y1="0.1777" x2="-4.8057" y2="0.2031" layer="200" rot="R180"/>
<rectangle x1="2.4079" y1="0.2031" x2="7.7673" y2="0.2285" layer="200" rot="R180"/>
<rectangle x1="-5.5677" y1="0.2031" x2="-4.8057" y2="0.2285" layer="200" rot="R180"/>
<rectangle x1="2.3571" y1="0.2285" x2="7.7673" y2="0.2539" layer="200" rot="R180"/>
<rectangle x1="-5.5931" y1="0.2285" x2="-4.8057" y2="0.2539" layer="200" rot="R180"/>
<rectangle x1="7.3609" y1="0.2539" x2="7.7927" y2="0.2793" layer="200" rot="R180"/>
<rectangle x1="2.3317" y1="0.2539" x2="7.3101" y2="0.2793" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="0.2539" x2="-4.8057" y2="0.2793" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="0.2793" x2="7.7927" y2="0.3047" layer="200" rot="R180"/>
<rectangle x1="2.3063" y1="0.2793" x2="3.6271" y2="0.3047" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="0.2793" x2="-4.8311" y2="0.3047" layer="200" rot="R180"/>
<rectangle x1="7.4371" y1="0.3047" x2="7.7927" y2="0.3301" layer="200" rot="R180"/>
<rectangle x1="2.3063" y1="0.3047" x2="3.3477" y2="0.3301" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="0.3047" x2="-4.8311" y2="0.3301" layer="200" rot="R180"/>
<rectangle x1="7.4625" y1="0.3301" x2="7.7927" y2="0.3555" layer="200" rot="R180"/>
<rectangle x1="2.3063" y1="0.3301" x2="3.1953" y2="0.3555" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="0.3301" x2="-4.8311" y2="0.3555" layer="200" rot="R180"/>
<rectangle x1="7.4625" y1="0.3555" x2="7.7927" y2="0.3809" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="0.3555" x2="3.1699" y2="0.3809" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="0.3555" x2="-4.8311" y2="0.3809" layer="200" rot="R180"/>
<rectangle x1="7.4625" y1="0.3809" x2="7.7673" y2="0.4063" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="0.3809" x2="3.0429" y2="0.4063" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="0.3809" x2="-4.8311" y2="0.4063" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.4063" x2="7.7419" y2="0.4317" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="0.4063" x2="2.9921" y2="0.4317" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="0.4063" x2="-4.8311" y2="0.4317" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.4317" x2="7.7419" y2="0.4571" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="0.4317" x2="2.9667" y2="0.4571" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.4317" x2="-4.8311" y2="0.4571" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.4571" x2="7.7165" y2="0.4825" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.4571" x2="2.8905" y2="0.4825" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.4571" x2="-4.8311" y2="0.4825" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.4825" x2="7.7165" y2="0.5079" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.4825" x2="2.8143" y2="0.5079" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.4825" x2="-4.8565" y2="0.5079" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.5079" x2="7.7165" y2="0.5333" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.5079" x2="2.7635" y2="0.5333" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.5079" x2="-4.8565" y2="0.5333" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.5333" x2="7.7165" y2="0.5587" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.5333" x2="2.7381" y2="0.5587" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.5333" x2="-4.8565" y2="0.5587" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.5587" x2="7.7165" y2="0.5841" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.5587" x2="2.7127" y2="0.5841" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.5587" x2="-4.8565" y2="0.5841" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.5841" x2="7.7165" y2="0.6095" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.5841" x2="2.6619" y2="0.6095" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.5841" x2="-4.8565" y2="0.6095" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.6095" x2="7.7165" y2="0.6349" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.6095" x2="2.6365" y2="0.6349" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.6095" x2="-4.8565" y2="0.6349" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.6349" x2="7.7165" y2="0.6603" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.6349" x2="2.6111" y2="0.6603" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.6349" x2="-4.8819" y2="0.6603" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.6603" x2="7.7419" y2="0.6857" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.6603" x2="2.6619" y2="0.6857" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.6603" x2="-4.8819" y2="0.6857" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.6857" x2="7.7419" y2="0.7111" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.6857" x2="2.7635" y2="0.7111" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.6857" x2="-4.8819" y2="0.7111" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.7111" x2="7.7673" y2="0.7365" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.7111" x2="2.7635" y2="0.7365" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.7111" x2="-4.8819" y2="0.7365" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.7365" x2="7.8181" y2="0.7619" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.7365" x2="2.7889" y2="0.7619" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.7365" x2="-4.8819" y2="0.7619" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.7619" x2="7.8435" y2="0.7873" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.7619" x2="2.7889" y2="0.7873" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="0.7619" x2="-4.8819" y2="0.7873" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.7873" x2="7.8435" y2="0.8127" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.7873" x2="2.7635" y2="0.8127" layer="200" rot="R180"/>
<rectangle x1="-5.6947" y1="0.7873" x2="-4.8819" y2="0.8127" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.8127" x2="7.8689" y2="0.8381" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.8127" x2="2.7889" y2="0.8381" layer="200" rot="R180"/>
<rectangle x1="-5.6947" y1="0.8127" x2="-4.8819" y2="0.8381" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="0.8381" x2="7.8689" y2="0.8635" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.8381" x2="2.7889" y2="0.8635" layer="200" rot="R180"/>
<rectangle x1="-5.6947" y1="0.8381" x2="-4.8819" y2="0.8635" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.8635" x2="7.8689" y2="0.8889" layer="200" rot="R180"/>
<rectangle x1="2.8651" y1="0.8635" x2="2.9667" y2="0.8889" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.8635" x2="2.8397" y2="0.8889" layer="200" rot="R180"/>
<rectangle x1="-5.6947" y1="0.8635" x2="-4.8819" y2="0.8889" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="0.8889" x2="7.8689" y2="0.9143" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.8889" x2="3.0175" y2="0.9143" layer="200" rot="R180"/>
<rectangle x1="-5.6947" y1="0.8889" x2="-4.8819" y2="0.9143" layer="200" rot="R180"/>
<rectangle x1="7.4625" y1="0.9143" x2="7.8689" y2="0.9397" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.9143" x2="3.0683" y2="0.9397" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="0.9143" x2="-4.8819" y2="0.9397" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="0.9397" x2="7.8689" y2="0.9651" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.9397" x2="7.2339" y2="0.9651" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="0.9397" x2="-4.8819" y2="0.9651" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.9651" x2="7.8689" y2="0.9905" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="0.9651" x2="-4.8819" y2="0.9905" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="0.9905" x2="7.8689" y2="1.0159" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="0.9905" x2="-4.8819" y2="1.0159" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.0159" x2="7.8689" y2="1.0413" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="1.0159" x2="-4.8819" y2="1.0413" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.0413" x2="7.8689" y2="1.0667" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="1.0413" x2="-4.8819" y2="1.0667" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.0667" x2="7.8689" y2="1.0921" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="1.0667" x2="-4.9073" y2="1.0921" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.0921" x2="7.8689" y2="1.1175" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="1.0921" x2="-4.9073" y2="1.1175" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.1175" x2="7.8689" y2="1.1429" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="1.1175" x2="-4.9073" y2="1.1429" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.1429" x2="7.8435" y2="1.1683" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="1.1429" x2="-4.9073" y2="1.1683" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.1683" x2="7.8181" y2="1.1937" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="1.1683" x2="-4.9073" y2="1.1937" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.1937" x2="7.8181" y2="1.2191" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="1.1937" x2="-4.9073" y2="1.2191" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.2191" x2="7.7927" y2="1.2445" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="1.2191" x2="-4.9073" y2="1.2445" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.2445" x2="7.7927" y2="1.2699" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="1.2445" x2="-4.9073" y2="1.2699" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.2699" x2="7.7927" y2="1.2953" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.2699" x2="-4.9073" y2="1.2953" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.2953" x2="7.7927" y2="1.3207" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.2953" x2="-4.9073" y2="1.3207" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.3207" x2="7.7927" y2="1.3461" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.3207" x2="-4.9073" y2="1.3461" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="1.3461" x2="7.7927" y2="1.3715" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.3461" x2="7.2847" y2="1.3715" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.3461" x2="-4.9073" y2="1.3715" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="1.3715" x2="7.7927" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="6.4465" y1="1.3715" x2="6.7513" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="5.8623" y1="1.3715" x2="5.8877" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="5.6845" y1="1.3715" x2="5.7099" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="4.7955" y1="1.3715" x2="5.6083" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.3715" x2="3.5001" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.3715" x2="-4.9073" y2="1.3969" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="1.3969" x2="7.7927" y2="1.4223" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.3969" x2="3.0429" y2="1.4223" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.3969" x2="-4.9073" y2="1.4223" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.4223" x2="7.7927" y2="1.4477" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.4223" x2="2.8143" y2="1.4477" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.4223" x2="-4.9073" y2="1.4477" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.4477" x2="7.7927" y2="1.4731" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.4477" x2="2.7889" y2="1.4731" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.4477" x2="-4.9073" y2="1.4731" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.4731" x2="7.7673" y2="1.4985" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.4731" x2="2.7889" y2="1.4985" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.4731" x2="-4.9073" y2="1.4985" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.4985" x2="7.7673" y2="1.5239" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.4985" x2="2.7635" y2="1.5239" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.4985" x2="-4.9073" y2="1.5239" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.5239" x2="7.7673" y2="1.5493" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.5239" x2="2.7381" y2="1.5493" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.5239" x2="-4.9073" y2="1.5493" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.5493" x2="7.7673" y2="1.5747" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.5493" x2="2.7381" y2="1.5747" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.5493" x2="-4.9073" y2="1.5747" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.5747" x2="7.7673" y2="1.6001" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.5747" x2="2.7381" y2="1.6001" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="1.5747" x2="-4.9073" y2="1.6001" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.6001" x2="7.7927" y2="1.6255" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.6001" x2="2.7381" y2="1.6255" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.6001" x2="-4.8819" y2="1.6255" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.6255" x2="7.7927" y2="1.6509" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.6255" x2="2.7635" y2="1.6509" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.6255" x2="-4.8819" y2="1.6509" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.6509" x2="7.7927" y2="1.6763" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.6509" x2="2.7635" y2="1.6763" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.6509" x2="-4.8819" y2="1.6763" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.6763" x2="7.7927" y2="1.7017" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.6763" x2="2.7889" y2="1.7017" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.6763" x2="-4.8819" y2="1.7017" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.7017" x2="7.8181" y2="1.7271" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.7017" x2="2.8397" y2="1.7271" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.7017" x2="-4.8819" y2="1.7271" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.7271" x2="7.8181" y2="1.7525" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.7271" x2="2.8905" y2="1.7525" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.7271" x2="-4.8819" y2="1.7525" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.7525" x2="7.7927" y2="1.7779" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="1.7525" x2="2.9413" y2="1.7779" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.7525" x2="-4.8819" y2="1.7779" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.7779" x2="7.7927" y2="1.8033" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="1.7779" x2="2.9667" y2="1.8033" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.7779" x2="-4.8819" y2="1.8033" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.8033" x2="7.7927" y2="1.8287" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="1.8033" x2="2.9921" y2="1.8287" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.8033" x2="-4.8819" y2="1.8287" layer="200" rot="R180"/>
<rectangle x1="7.5133" y1="1.8287" x2="7.7927" y2="1.8541" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="1.8287" x2="3.0683" y2="1.8541" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.8287" x2="-4.8819" y2="1.8541" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="1.8541" x2="7.7927" y2="1.8795" layer="200" rot="R180"/>
<rectangle x1="2.2809" y1="1.8541" x2="3.1699" y2="1.8795" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.8541" x2="-4.8819" y2="1.8795" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="1.8795" x2="7.7673" y2="1.9049" layer="200" rot="R180"/>
<rectangle x1="2.3063" y1="1.8795" x2="3.3477" y2="1.9049" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.8795" x2="-4.8819" y2="1.9049" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="1.9049" x2="7.7419" y2="1.9303" layer="200" rot="R180"/>
<rectangle x1="2.3063" y1="1.9049" x2="3.5509" y2="1.9303" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.9049" x2="-4.8819" y2="1.9303" layer="200" rot="R180"/>
<rectangle x1="7.4879" y1="1.9303" x2="7.7419" y2="1.9557" layer="200" rot="R180"/>
<rectangle x1="2.3317" y1="1.9303" x2="6.9545" y2="1.9557" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.9303" x2="-4.8819" y2="1.9557" layer="200" rot="R180"/>
<rectangle x1="7.4625" y1="1.9557" x2="7.7673" y2="1.9811" layer="200" rot="R180"/>
<rectangle x1="2.3571" y1="1.9557" x2="7.3101" y2="1.9811" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.9557" x2="-4.8565" y2="1.9811" layer="200" rot="R180"/>
<rectangle x1="2.3825" y1="1.9811" x2="7.7927" y2="2.0065" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="1.9811" x2="-4.8565" y2="2.0065" layer="200" rot="R180"/>
<rectangle x1="2.4079" y1="2.0065" x2="7.7927" y2="2.0319" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="2.0065" x2="-4.8565" y2="2.0319" layer="200" rot="R180"/>
<rectangle x1="2.4333" y1="2.0319" x2="7.7927" y2="2.0573" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="2.0319" x2="-4.8565" y2="2.0573" layer="200" rot="R180"/>
<rectangle x1="2.4333" y1="2.0573" x2="7.7927" y2="2.0827" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="2.0573" x2="-4.8311" y2="2.0827" layer="200" rot="R180"/>
<rectangle x1="2.4587" y1="2.0827" x2="7.8181" y2="2.1081" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.0827" x2="-4.8311" y2="2.1081" layer="200" rot="R180"/>
<rectangle x1="2.4841" y1="2.1081" x2="7.8181" y2="2.1335" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.1081" x2="-4.8311" y2="2.1335" layer="200" rot="R180"/>
<rectangle x1="2.5095" y1="2.1335" x2="7.8181" y2="2.1589" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.1335" x2="-4.8311" y2="2.1589" layer="200" rot="R180"/>
<rectangle x1="2.5349" y1="2.1589" x2="7.8181" y2="2.1843" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.1589" x2="-4.8057" y2="2.1843" layer="200" rot="R180"/>
<rectangle x1="2.5857" y1="2.1843" x2="7.8181" y2="2.2097" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.1843" x2="-4.8057" y2="2.2097" layer="200" rot="R180"/>
<rectangle x1="2.6111" y1="2.2097" x2="7.8435" y2="2.2351" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.2097" x2="-4.8057" y2="2.2351" layer="200" rot="R180"/>
<rectangle x1="2.6619" y1="2.2351" x2="7.8435" y2="2.2605" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.2351" x2="-4.8057" y2="2.2605" layer="200" rot="R180"/>
<rectangle x1="2.7127" y1="2.2605" x2="7.8435" y2="2.2859" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.2605" x2="-4.8057" y2="2.2859" layer="200" rot="R180"/>
<rectangle x1="2.7889" y1="2.2859" x2="7.8435" y2="2.3113" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.2859" x2="-4.8057" y2="2.3113" layer="200" rot="R180"/>
<rectangle x1="2.8905" y1="2.3113" x2="7.8435" y2="2.3367" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.3113" x2="-4.8057" y2="2.3367" layer="200" rot="R180"/>
<rectangle x1="2.9921" y1="2.3367" x2="7.8435" y2="2.3621" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.3367" x2="-4.8057" y2="2.3621" layer="200" rot="R180"/>
<rectangle x1="7.7927" y1="2.3621" x2="7.8435" y2="2.3875" layer="200" rot="R180"/>
<rectangle x1="7.3863" y1="2.3621" x2="7.7419" y2="2.3875" layer="200" rot="R180"/>
<rectangle x1="3.1191" y1="2.3621" x2="7.0561" y2="2.3875" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.3621" x2="-4.8057" y2="2.3875" layer="200" rot="R180"/>
<rectangle x1="7.3863" y1="2.3875" x2="7.7165" y2="2.4129" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.3875" x2="-4.8057" y2="2.4129" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="2.4129" x2="7.7165" y2="2.4383" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.4129" x2="-4.7803" y2="2.4383" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="2.4383" x2="7.7165" y2="2.4637" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.4383" x2="-4.7803" y2="2.4637" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="2.4637" x2="7.7165" y2="2.4891" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.4637" x2="-4.7803" y2="2.4891" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="2.4891" x2="7.7419" y2="2.5145" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.4891" x2="-4.7803" y2="2.5145" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="2.5145" x2="7.7419" y2="2.5399" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.5145" x2="-4.7549" y2="2.5399" layer="200" rot="R180"/>
<rectangle x1="7.3863" y1="2.5399" x2="7.7419" y2="2.5653" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.5399" x2="-4.7549" y2="2.5653" layer="200" rot="R180"/>
<rectangle x1="7.3863" y1="2.5653" x2="7.7419" y2="2.5907" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.5653" x2="-4.7549" y2="2.5907" layer="200" rot="R180"/>
<rectangle x1="7.3863" y1="2.5907" x2="7.7419" y2="2.6161" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.5907" x2="-4.7295" y2="2.6161" layer="200" rot="R180"/>
<rectangle x1="7.3863" y1="2.6161" x2="7.7419" y2="2.6415" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.6161" x2="-4.7295" y2="2.6415" layer="200" rot="R180"/>
<rectangle x1="7.3609" y1="2.6415" x2="7.7165" y2="2.6669" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.6415" x2="-4.7041" y2="2.6669" layer="200" rot="R180"/>
<rectangle x1="7.3609" y1="2.6669" x2="7.6911" y2="2.6923" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.6669" x2="-4.7041" y2="2.6923" layer="200" rot="R180"/>
<rectangle x1="7.3355" y1="2.6923" x2="7.6911" y2="2.7177" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.6923" x2="-4.7041" y2="2.7177" layer="200" rot="R180"/>
<rectangle x1="7.3355" y1="2.7177" x2="7.6657" y2="2.7431" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.7177" x2="-4.7041" y2="2.7431" layer="200" rot="R180"/>
<rectangle x1="7.3355" y1="2.7431" x2="7.6657" y2="2.7685" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.7431" x2="-4.7041" y2="2.7685" layer="200" rot="R180"/>
<rectangle x1="7.3355" y1="2.7685" x2="7.6657" y2="2.7939" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.7685" x2="-4.7041" y2="2.7939" layer="200" rot="R180"/>
<rectangle x1="7.3355" y1="2.7939" x2="7.6657" y2="2.8193" layer="200" rot="R180"/>
<rectangle x1="-5.8217" y1="2.7939" x2="-4.6787" y2="2.8193" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="2.8193" x2="7.6403" y2="2.8447" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.8193" x2="-4.6787" y2="2.8447" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="2.8447" x2="7.6403" y2="2.8701" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.8447" x2="-4.6787" y2="2.8701" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="2.8701" x2="7.6149" y2="2.8955" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.8701" x2="-4.6787" y2="2.8955" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="2.8955" x2="7.6149" y2="2.9209" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.8955" x2="-4.6533" y2="2.9209" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="2.9209" x2="7.5895" y2="2.9463" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.9209" x2="-4.6533" y2="2.9463" layer="200" rot="R180"/>
<rectangle x1="7.3101" y1="2.9463" x2="7.5895" y2="2.9717" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.9463" x2="-4.6279" y2="2.9717" layer="200" rot="R180"/>
<rectangle x1="7.2847" y1="2.9717" x2="7.5641" y2="2.9971" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.9717" x2="-4.6279" y2="2.9971" layer="200" rot="R180"/>
<rectangle x1="7.2847" y1="2.9971" x2="7.5387" y2="3.0225" layer="200" rot="R180"/>
<rectangle x1="-5.7963" y1="2.9971" x2="-4.6279" y2="3.0225" layer="200" rot="R180"/>
<rectangle x1="7.2847" y1="3.0225" x2="7.5133" y2="3.0479" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.0225" x2="-4.6025" y2="3.0479" layer="200" rot="R180"/>
<rectangle x1="7.2593" y1="3.0479" x2="7.5133" y2="3.0733" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.0479" x2="-4.6025" y2="3.0733" layer="200" rot="R180"/>
<rectangle x1="7.2593" y1="3.0733" x2="7.4879" y2="3.0987" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.0733" x2="-4.6025" y2="3.0987" layer="200" rot="R180"/>
<rectangle x1="7.2339" y1="3.0987" x2="7.4625" y2="3.1241" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.0987" x2="-4.6025" y2="3.1241" layer="200" rot="R180"/>
<rectangle x1="7.2339" y1="3.1241" x2="7.4625" y2="3.1495" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.1241" x2="-4.5771" y2="3.1495" layer="200" rot="R180"/>
<rectangle x1="7.2339" y1="3.1495" x2="7.4625" y2="3.1749" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.1495" x2="-4.5771" y2="3.1749" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="3.1749" x2="7.4371" y2="3.2003" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.1749" x2="-4.5771" y2="3.2003" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="3.2003" x2="7.4371" y2="3.2257" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.2003" x2="-4.5517" y2="3.2257" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="3.2257" x2="7.4371" y2="3.2511" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.2257" x2="-4.5517" y2="3.2511" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="3.2511" x2="7.4117" y2="3.2765" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.2511" x2="-4.5263" y2="3.2765" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="3.2765" x2="7.4117" y2="3.3019" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.2765" x2="-4.5009" y2="3.3019" layer="200" rot="R180"/>
<rectangle x1="7.2085" y1="3.3019" x2="7.4117" y2="3.3273" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.3019" x2="-4.5009" y2="3.3273" layer="200" rot="R180"/>
<rectangle x1="7.1831" y1="3.3273" x2="7.4117" y2="3.3527" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.3273" x2="-4.4755" y2="3.3527" layer="200" rot="R180"/>
<rectangle x1="7.1831" y1="3.3527" x2="7.3863" y2="3.3781" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.3527" x2="-4.4755" y2="3.3781" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="3.3781" x2="7.4371" y2="3.4035" layer="200" rot="R180"/>
<rectangle x1="7.1577" y1="3.3781" x2="7.3355" y2="3.4035" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.3781" x2="-4.4755" y2="3.4035" layer="200" rot="R180"/>
<rectangle x1="7.4117" y1="3.4035" x2="7.4625" y2="3.4289" layer="200" rot="R180"/>
<rectangle x1="7.1323" y1="3.4035" x2="7.3355" y2="3.4289" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.4035" x2="-4.4755" y2="3.4289" layer="200" rot="R180"/>
<rectangle x1="7.1323" y1="3.4289" x2="7.3101" y2="3.4543" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.4289" x2="-4.4501" y2="3.4543" layer="200" rot="R180"/>
<rectangle x1="7.1323" y1="3.4543" x2="7.3101" y2="3.4797" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.4543" x2="-4.4247" y2="3.4797" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="3.4797" x2="7.3101" y2="3.5051" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.4797" x2="-4.4247" y2="3.5051" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="3.5051" x2="7.2847" y2="3.5305" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.5051" x2="-4.3993" y2="3.5305" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="3.5305" x2="7.2847" y2="3.5559" layer="200" rot="R180"/>
<rectangle x1="-5.7709" y1="3.5305" x2="-4.3993" y2="3.5559" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="3.5559" x2="7.2593" y2="3.5813" layer="200" rot="R180"/>
<rectangle x1="-5.7455" y1="3.5559" x2="-4.3993" y2="3.5813" layer="200" rot="R180"/>
<rectangle x1="7.1069" y1="3.5813" x2="7.2593" y2="3.6067" layer="200" rot="R180"/>
<rectangle x1="-5.7201" y1="3.5813" x2="-4.3739" y2="3.6067" layer="200" rot="R180"/>
<rectangle x1="7.0815" y1="3.6067" x2="7.2593" y2="3.6321" layer="200" rot="R180"/>
<rectangle x1="-5.6947" y1="3.6067" x2="-4.3739" y2="3.6321" layer="200" rot="R180"/>
<rectangle x1="7.0815" y1="3.6321" x2="7.2593" y2="3.6575" layer="200" rot="R180"/>
<rectangle x1="-5.6693" y1="3.6321" x2="-4.3485" y2="3.6575" layer="200" rot="R180"/>
<rectangle x1="7.0561" y1="3.6575" x2="7.2593" y2="3.6829" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="3.6575" x2="-4.3485" y2="3.6829" layer="200" rot="R180"/>
<rectangle x1="7.0561" y1="3.6829" x2="7.2593" y2="3.7083" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="3.6829" x2="-4.3231" y2="3.7083" layer="200" rot="R180"/>
<rectangle x1="7.0307" y1="3.7083" x2="7.2339" y2="3.7337" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="3.7083" x2="-4.2977" y2="3.7337" layer="200" rot="R180"/>
<rectangle x1="7.0307" y1="3.7337" x2="7.2339" y2="3.7591" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.7337" x2="-4.2977" y2="3.7591" layer="200" rot="R180"/>
<rectangle x1="7.0053" y1="3.7591" x2="7.2339" y2="3.7845" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.7591" x2="-4.2723" y2="3.7845" layer="200" rot="R180"/>
<rectangle x1="7.0053" y1="3.7845" x2="7.2339" y2="3.8099" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.7845" x2="-4.2723" y2="3.8099" layer="200" rot="R180"/>
<rectangle x1="7.0053" y1="3.8099" x2="7.2593" y2="3.8353" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.8099" x2="-4.2469" y2="3.8353" layer="200" rot="R180"/>
<rectangle x1="6.9799" y1="3.8353" x2="7.2593" y2="3.8607" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.8353" x2="-4.2469" y2="3.8607" layer="200" rot="R180"/>
<rectangle x1="6.9799" y1="3.8607" x2="7.2593" y2="3.8861" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.8607" x2="-4.2215" y2="3.8861" layer="200" rot="R180"/>
<rectangle x1="6.9545" y1="3.8861" x2="7.2593" y2="3.9115" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.8861" x2="-4.2215" y2="3.9115" layer="200" rot="R180"/>
<rectangle x1="7.1831" y1="3.9115" x2="7.2593" y2="3.9369" layer="200" rot="R180"/>
<rectangle x1="6.9291" y1="3.9115" x2="7.1577" y2="3.9369" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.9115" x2="-4.1961" y2="3.9369" layer="200" rot="R180"/>
<rectangle x1="6.9291" y1="3.9369" x2="7.1577" y2="3.9623" layer="200" rot="R180"/>
<rectangle x1="-5.6439" y1="3.9369" x2="-4.1961" y2="3.9623" layer="200" rot="R180"/>
<rectangle x1="6.9291" y1="3.9623" x2="7.1577" y2="3.9877" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.9623" x2="-4.1961" y2="3.9877" layer="200" rot="R180"/>
<rectangle x1="6.9037" y1="3.9877" x2="7.1577" y2="4.0131" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="3.9877" x2="-4.1707" y2="4.0131" layer="200" rot="R180"/>
<rectangle x1="6.9037" y1="4.0131" x2="7.1323" y2="4.0385" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="4.0131" x2="-4.1453" y2="4.0385" layer="200" rot="R180"/>
<rectangle x1="6.9037" y1="4.0385" x2="7.1323" y2="4.0639" layer="200" rot="R180"/>
<rectangle x1="-5.6185" y1="4.0385" x2="-4.1453" y2="4.0639" layer="200" rot="R180"/>
<rectangle x1="6.8783" y1="4.0639" x2="7.1323" y2="4.0893" layer="200" rot="R180"/>
<rectangle x1="-5.5931" y1="4.0639" x2="-4.1199" y2="4.0893" layer="200" rot="R180"/>
<rectangle x1="6.8783" y1="4.0893" x2="7.1069" y2="4.1147" layer="200" rot="R180"/>
<rectangle x1="-5.5677" y1="4.0893" x2="-4.0945" y2="4.1147" layer="200" rot="R180"/>
<rectangle x1="6.8529" y1="4.1147" x2="7.0561" y2="4.1401" layer="200" rot="R180"/>
<rectangle x1="-5.5677" y1="4.1147" x2="-4.0691" y2="4.1401" layer="200" rot="R180"/>
<rectangle x1="6.8275" y1="4.1401" x2="7.0307" y2="4.1655" layer="200" rot="R180"/>
<rectangle x1="-5.5677" y1="4.1401" x2="-4.0691" y2="4.1655" layer="200" rot="R180"/>
<rectangle x1="6.8021" y1="4.1655" x2="7.0307" y2="4.1909" layer="200" rot="R180"/>
<rectangle x1="-5.5423" y1="4.1655" x2="-4.0437" y2="4.1909" layer="200" rot="R180"/>
<rectangle x1="6.8021" y1="4.1909" x2="7.0053" y2="4.2163" layer="200" rot="R180"/>
<rectangle x1="-5.5423" y1="4.1909" x2="-4.0437" y2="4.2163" layer="200" rot="R180"/>
<rectangle x1="6.8021" y1="4.2163" x2="7.0053" y2="4.2417" layer="200" rot="R180"/>
<rectangle x1="-5.5423" y1="4.2163" x2="-4.0183" y2="4.2417" layer="200" rot="R180"/>
<rectangle x1="6.7767" y1="4.2417" x2="6.9545" y2="4.2671" layer="200" rot="R180"/>
<rectangle x1="-5.5169" y1="4.2417" x2="-3.9929" y2="4.2671" layer="200" rot="R180"/>
<rectangle x1="6.7513" y1="4.2671" x2="6.9291" y2="4.2925" layer="200" rot="R180"/>
<rectangle x1="-5.5169" y1="4.2671" x2="-3.9421" y2="4.2925" layer="200" rot="R180"/>
<rectangle x1="7.0307" y1="4.2925" x2="7.0561" y2="4.3179" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="4.2925" x2="6.9037" y2="4.3179" layer="200" rot="R180"/>
<rectangle x1="-2.0879" y1="4.2925" x2="-1.9101" y2="4.3179" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="4.2925" x2="-3.9167" y2="4.3179" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="4.3179" x2="6.9037" y2="4.3433" layer="200" rot="R180"/>
<rectangle x1="-2.2911" y1="4.3179" x2="-1.7323" y2="4.3433" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="4.3179" x2="-3.9167" y2="4.3433" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="4.3433" x2="6.9037" y2="4.3687" layer="200" rot="R180"/>
<rectangle x1="-2.5197" y1="4.3433" x2="-1.5291" y2="4.3687" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="4.3433" x2="-3.9167" y2="4.3687" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="4.3687" x2="6.8783" y2="4.3941" layer="200" rot="R180"/>
<rectangle x1="-2.5959" y1="4.3687" x2="-1.4275" y2="4.3941" layer="200" rot="R180"/>
<rectangle x1="-5.4915" y1="4.3687" x2="-3.8913" y2="4.3941" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="4.3941" x2="6.8783" y2="4.4195" layer="200" rot="R180"/>
<rectangle x1="-2.6721" y1="4.3941" x2="-1.2751" y2="4.4195" layer="200" rot="R180"/>
<rectangle x1="-5.4661" y1="4.3941" x2="-3.8659" y2="4.4195" layer="200" rot="R180"/>
<rectangle x1="6.7259" y1="4.4195" x2="6.8529" y2="4.4449" layer="200" rot="R180"/>
<rectangle x1="-2.7483" y1="4.4195" x2="-1.1481" y2="4.4449" layer="200" rot="R180"/>
<rectangle x1="-5.4661" y1="4.4195" x2="-3.8659" y2="4.4449" layer="200" rot="R180"/>
<rectangle x1="6.7005" y1="4.4449" x2="6.8021" y2="4.4703" layer="200" rot="R180"/>
<rectangle x1="-2.8499" y1="4.4449" x2="-1.0719" y2="4.4703" layer="200" rot="R180"/>
<rectangle x1="-5.4661" y1="4.4449" x2="-3.8405" y2="4.4703" layer="200" rot="R180"/>
<rectangle x1="6.6751" y1="4.4703" x2="6.7767" y2="4.4957" layer="200" rot="R180"/>
<rectangle x1="-2.9007" y1="4.4703" x2="-0.9957" y2="4.4957" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="4.4703" x2="-3.7897" y2="4.4957" layer="200" rot="R180"/>
<rectangle x1="6.6243" y1="4.4957" x2="6.7767" y2="4.5211" layer="200" rot="R180"/>
<rectangle x1="-2.9769" y1="4.4957" x2="-0.9195" y2="4.5211" layer="200" rot="R180"/>
<rectangle x1="-3.2563" y1="4.4957" x2="-3.2055" y2="4.5211" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="4.4957" x2="-3.7897" y2="4.5211" layer="200" rot="R180"/>
<rectangle x1="6.6243" y1="4.5211" x2="6.7513" y2="4.5465" layer="200" rot="R180"/>
<rectangle x1="-3.0277" y1="4.5211" x2="-0.8687" y2="4.5465" layer="200" rot="R180"/>
<rectangle x1="-3.2563" y1="4.5211" x2="-3.2055" y2="4.5465" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="4.5211" x2="-3.7643" y2="4.5465" layer="200" rot="R180"/>
<rectangle x1="6.5989" y1="4.5465" x2="6.7513" y2="4.5719" layer="200" rot="R180"/>
<rectangle x1="-3.0785" y1="4.5465" x2="-0.7671" y2="4.5719" layer="200" rot="R180"/>
<rectangle x1="-3.2563" y1="4.5465" x2="-3.1801" y2="4.5719" layer="200" rot="R180"/>
<rectangle x1="-5.4407" y1="4.5465" x2="-3.7389" y2="4.5719" layer="200" rot="R180"/>
<rectangle x1="6.5989" y1="4.5719" x2="6.7513" y2="4.5973" layer="200" rot="R180"/>
<rectangle x1="-3.2563" y1="4.5719" x2="-0.6909" y2="4.5973" layer="200" rot="R180"/>
<rectangle x1="-5.4153" y1="4.5719" x2="-3.7389" y2="4.5973" layer="200" rot="R180"/>
<rectangle x1="6.5989" y1="4.5973" x2="6.7513" y2="4.6227" layer="200" rot="R180"/>
<rectangle x1="-3.2563" y1="4.5973" x2="-0.6401" y2="4.6227" layer="200" rot="R180"/>
<rectangle x1="-5.4153" y1="4.5973" x2="-3.7135" y2="4.6227" layer="200" rot="R180"/>
<rectangle x1="6.5735" y1="4.6227" x2="6.7513" y2="4.6481" layer="200" rot="R180"/>
<rectangle x1="-3.2309" y1="4.6227" x2="-0.6147" y2="4.6481" layer="200" rot="R180"/>
<rectangle x1="-5.3899" y1="4.6227" x2="-3.6881" y2="4.6481" layer="200" rot="R180"/>
<rectangle x1="6.5735" y1="4.6481" x2="6.7513" y2="4.6735" layer="200" rot="R180"/>
<rectangle x1="-3.2309" y1="4.6481" x2="-0.6147" y2="4.6735" layer="200" rot="R180"/>
<rectangle x1="-5.3899" y1="4.6481" x2="-3.6627" y2="4.6735" layer="200" rot="R180"/>
<rectangle x1="6.5481" y1="4.6735" x2="6.7513" y2="4.6989" layer="200" rot="R180"/>
<rectangle x1="-3.2309" y1="4.6735" x2="-0.5893" y2="4.6989" layer="200" rot="R180"/>
<rectangle x1="-3.4087" y1="4.6735" x2="-3.3325" y2="4.6989" layer="200" rot="R180"/>
<rectangle x1="-5.3899" y1="4.6735" x2="-3.6373" y2="4.6989" layer="200" rot="R180"/>
<rectangle x1="6.5481" y1="4.6989" x2="6.7259" y2="4.7243" layer="200" rot="R180"/>
<rectangle x1="-3.2309" y1="4.6989" x2="-0.5639" y2="4.7243" layer="200" rot="R180"/>
<rectangle x1="-3.4341" y1="4.6989" x2="-3.2817" y2="4.7243" layer="200" rot="R180"/>
<rectangle x1="-5.3899" y1="4.6989" x2="-3.5865" y2="4.7243" layer="200" rot="R180"/>
<rectangle x1="6.5227" y1="4.7243" x2="6.7259" y2="4.7497" layer="200" rot="R180"/>
<rectangle x1="-3.4595" y1="4.7243" x2="-0.5385" y2="4.7497" layer="200" rot="R180"/>
<rectangle x1="-5.3645" y1="4.7243" x2="-3.5611" y2="4.7497" layer="200" rot="R180"/>
<rectangle x1="6.4973" y1="4.7497" x2="6.7005" y2="4.7751" layer="200" rot="R180"/>
<rectangle x1="-3.4849" y1="4.7497" x2="-0.4877" y2="4.7751" layer="200" rot="R180"/>
<rectangle x1="-5.3645" y1="4.7497" x2="-3.5357" y2="4.7751" layer="200" rot="R180"/>
<rectangle x1="6.4719" y1="4.7751" x2="6.6751" y2="4.8005" layer="200" rot="R180"/>
<rectangle x1="-5.3645" y1="4.7751" x2="-0.4623" y2="4.8005" layer="200" rot="R180"/>
<rectangle x1="6.4465" y1="4.8005" x2="6.6497" y2="4.8259" layer="200" rot="R180"/>
<rectangle x1="-5.3645" y1="4.8005" x2="-0.4115" y2="4.8259" layer="200" rot="R180"/>
<rectangle x1="6.4465" y1="4.8259" x2="6.6243" y2="4.8513" layer="200" rot="R180"/>
<rectangle x1="-5.3391" y1="4.8259" x2="-0.3353" y2="4.8513" layer="200" rot="R180"/>
<rectangle x1="6.4211" y1="4.8513" x2="6.5989" y2="4.8767" layer="200" rot="R180"/>
<rectangle x1="-5.3391" y1="4.8513" x2="-0.2845" y2="4.8767" layer="200" rot="R180"/>
<rectangle x1="6.4211" y1="4.8767" x2="6.5989" y2="4.9021" layer="200" rot="R180"/>
<rectangle x1="-5.3137" y1="4.8767" x2="-0.2591" y2="4.9021" layer="200" rot="R180"/>
<rectangle x1="6.3957" y1="4.9021" x2="6.5735" y2="4.9275" layer="200" rot="R180"/>
<rectangle x1="-5.3137" y1="4.9021" x2="-0.2083" y2="4.9275" layer="200" rot="R180"/>
<rectangle x1="6.3703" y1="4.9275" x2="6.5735" y2="4.9529" layer="200" rot="R180"/>
<rectangle x1="-5.3137" y1="4.9275" x2="-0.1829" y2="4.9529" layer="200" rot="R180"/>
<rectangle x1="6.3449" y1="4.9529" x2="6.5227" y2="4.9783" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="4.9529" x2="-0.1575" y2="4.9783" layer="200" rot="R180"/>
<rectangle x1="6.3195" y1="4.9783" x2="6.4719" y2="5.0037" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="4.9783" x2="-0.1321" y2="5.0037" layer="200" rot="R180"/>
<rectangle x1="6.2941" y1="5.0037" x2="6.4465" y2="5.0291" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="5.0037" x2="-0.1067" y2="5.0291" layer="200" rot="R180"/>
<rectangle x1="6.2941" y1="5.0291" x2="6.4465" y2="5.0545" layer="200" rot="R180"/>
<rectangle x1="-5.2883" y1="5.0291" x2="-0.1067" y2="5.0545" layer="200" rot="R180"/>
<rectangle x1="6.2687" y1="5.0545" x2="6.4211" y2="5.0799" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.0545" x2="-0.0813" y2="5.0799" layer="200" rot="R180"/>
<rectangle x1="6.2433" y1="5.0799" x2="6.4211" y2="5.1053" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.0799" x2="-0.0559" y2="5.1053" layer="200" rot="R180"/>
<rectangle x1="6.2433" y1="5.1053" x2="6.3957" y2="5.1307" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.1053" x2="-0.0559" y2="5.1307" layer="200" rot="R180"/>
<rectangle x1="6.2179" y1="5.1307" x2="6.3703" y2="5.1561" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.1307" x2="-0.0305" y2="5.1561" layer="200" rot="R180"/>
<rectangle x1="6.1925" y1="5.1561" x2="6.3449" y2="5.1815" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.1561" x2="-0.0051" y2="5.1815" layer="200" rot="R180"/>
<rectangle x1="6.1671" y1="5.1815" x2="6.3195" y2="5.2069" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.1815" x2="0.0203" y2="5.2069" layer="200" rot="R180"/>
<rectangle x1="6.1671" y1="5.2069" x2="6.2941" y2="5.2323" layer="200" rot="R180"/>
<rectangle x1="-5.2629" y1="5.2069" x2="0.0457" y2="5.2323" layer="200" rot="R180"/>
<rectangle x1="6.1417" y1="5.2323" x2="6.2941" y2="5.2577" layer="200" rot="R180"/>
<rectangle x1="-5.2375" y1="5.2323" x2="0.0711" y2="5.2577" layer="200" rot="R180"/>
<rectangle x1="6.1163" y1="5.2577" x2="6.2687" y2="5.2831" layer="200" rot="R180"/>
<rectangle x1="-5.2375" y1="5.2577" x2="0.1219" y2="5.2831" layer="200" rot="R180"/>
<rectangle x1="6.0909" y1="5.2831" x2="6.2433" y2="5.3085" layer="200" rot="R180"/>
<rectangle x1="-5.2375" y1="5.2831" x2="0.1473" y2="5.3085" layer="200" rot="R180"/>
<rectangle x1="6.0655" y1="5.3085" x2="6.2179" y2="5.3339" layer="200" rot="R180"/>
<rectangle x1="-5.2121" y1="5.3085" x2="0.1727" y2="5.3339" layer="200" rot="R180"/>
<rectangle x1="6.0401" y1="5.3339" x2="6.1925" y2="5.3593" layer="200" rot="R180"/>
<rectangle x1="-5.1867" y1="5.3339" x2="0.1981" y2="5.3593" layer="200" rot="R180"/>
<rectangle x1="6.0147" y1="5.3593" x2="6.1671" y2="5.3847" layer="200" rot="R180"/>
<rectangle x1="-5.1867" y1="5.3593" x2="0.2235" y2="5.3847" layer="200" rot="R180"/>
<rectangle x1="5.9893" y1="5.3847" x2="6.1417" y2="5.4101" layer="200" rot="R180"/>
<rectangle x1="-5.1613" y1="5.3847" x2="0.2235" y2="5.4101" layer="200" rot="R180"/>
<rectangle x1="5.9639" y1="5.4101" x2="6.1163" y2="5.4355" layer="200" rot="R180"/>
<rectangle x1="-5.1359" y1="5.4101" x2="0.2489" y2="5.4355" layer="200" rot="R180"/>
<rectangle x1="5.9639" y1="5.4355" x2="6.1163" y2="5.4609" layer="200" rot="R180"/>
<rectangle x1="-5.1359" y1="5.4355" x2="0.2743" y2="5.4609" layer="200" rot="R180"/>
<rectangle x1="5.9385" y1="5.4609" x2="6.0909" y2="5.4863" layer="200" rot="R180"/>
<rectangle x1="-5.1105" y1="5.4609" x2="0.2997" y2="5.4863" layer="200" rot="R180"/>
<rectangle x1="5.9131" y1="5.4863" x2="6.0655" y2="5.5117" layer="200" rot="R180"/>
<rectangle x1="-5.0851" y1="5.4863" x2="0.2997" y2="5.5117" layer="200" rot="R180"/>
<rectangle x1="5.9131" y1="5.5117" x2="6.0401" y2="5.5371" layer="200" rot="R180"/>
<rectangle x1="-5.0851" y1="5.5117" x2="0.3251" y2="5.5371" layer="200" rot="R180"/>
<rectangle x1="5.8877" y1="5.5371" x2="5.9893" y2="5.5625" layer="200" rot="R180"/>
<rectangle x1="-5.0597" y1="5.5371" x2="0.3505" y2="5.5625" layer="200" rot="R180"/>
<rectangle x1="5.8369" y1="5.5625" x2="5.9385" y2="5.5879" layer="200" rot="R180"/>
<rectangle x1="-5.0597" y1="5.5625" x2="0.3505" y2="5.5879" layer="200" rot="R180"/>
<rectangle x1="5.8115" y1="5.5879" x2="5.9131" y2="5.6133" layer="200" rot="R180"/>
<rectangle x1="-5.0597" y1="5.5879" x2="0.3759" y2="5.6133" layer="200" rot="R180"/>
<rectangle x1="5.7861" y1="5.6133" x2="5.9131" y2="5.6387" layer="200" rot="R180"/>
<rectangle x1="-5.0343" y1="5.6133" x2="0.4013" y2="5.6387" layer="200" rot="R180"/>
<rectangle x1="5.7607" y1="5.6387" x2="5.8877" y2="5.6641" layer="200" rot="R180"/>
<rectangle x1="-5.0343" y1="5.6387" x2="0.4267" y2="5.6641" layer="200" rot="R180"/>
<rectangle x1="5.7353" y1="5.6641" x2="5.8877" y2="5.6895" layer="200" rot="R180"/>
<rectangle x1="-5.0343" y1="5.6641" x2="0.4267" y2="5.6895" layer="200" rot="R180"/>
<rectangle x1="5.6845" y1="5.6895" x2="5.8623" y2="5.7149" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="5.6895" x2="0.4521" y2="5.7149" layer="200" rot="R180"/>
<rectangle x1="5.6591" y1="5.7149" x2="5.8369" y2="5.7403" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="5.7149" x2="0.4521" y2="5.7403" layer="200" rot="R180"/>
<rectangle x1="5.6337" y1="5.7403" x2="5.7607" y2="5.7657" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="5.7403" x2="0.4775" y2="5.7657" layer="200" rot="R180"/>
<rectangle x1="5.5829" y1="5.7657" x2="5.7353" y2="5.7911" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="5.7657" x2="0.5029" y2="5.7911" layer="200" rot="R180"/>
<rectangle x1="5.5575" y1="5.7911" x2="5.7353" y2="5.8165" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="5.7911" x2="0.5029" y2="5.8165" layer="200" rot="R180"/>
<rectangle x1="5.5321" y1="5.8165" x2="5.7099" y2="5.8419" layer="200" rot="R180"/>
<rectangle x1="-5.0089" y1="5.8165" x2="0.5029" y2="5.8419" layer="200" rot="R180"/>
<rectangle x1="5.5067" y1="5.8419" x2="5.7099" y2="5.8673" layer="200" rot="R180"/>
<rectangle x1="-4.9835" y1="5.8419" x2="0.5283" y2="5.8673" layer="200" rot="R180"/>
<rectangle x1="5.4813" y1="5.8673" x2="5.6845" y2="5.8927" layer="200" rot="R180"/>
<rectangle x1="-4.9835" y1="5.8673" x2="0.5283" y2="5.8927" layer="200" rot="R180"/>
<rectangle x1="5.4559" y1="5.8927" x2="5.6337" y2="5.9181" layer="200" rot="R180"/>
<rectangle x1="-4.9581" y1="5.8927" x2="0.5283" y2="5.9181" layer="200" rot="R180"/>
<rectangle x1="5.4305" y1="5.9181" x2="5.6083" y2="5.9435" layer="200" rot="R180"/>
<rectangle x1="-4.9581" y1="5.9181" x2="0.5537" y2="5.9435" layer="200" rot="R180"/>
<rectangle x1="5.4051" y1="5.9435" x2="5.6083" y2="5.9689" layer="200" rot="R180"/>
<rectangle x1="-4.9581" y1="5.9435" x2="0.5537" y2="5.9689" layer="200" rot="R180"/>
<rectangle x1="5.3797" y1="5.9689" x2="5.5829" y2="5.9943" layer="200" rot="R180"/>
<rectangle x1="-4.9581" y1="5.9689" x2="0.5537" y2="5.9943" layer="200" rot="R180"/>
<rectangle x1="5.3543" y1="5.9943" x2="5.5067" y2="6.0197" layer="200" rot="R180"/>
<rectangle x1="-4.9327" y1="5.9943" x2="0.5791" y2="6.0197" layer="200" rot="R180"/>
<rectangle x1="5.3035" y1="6.0197" x2="5.4813" y2="6.0451" layer="200" rot="R180"/>
<rectangle x1="-4.9327" y1="6.0197" x2="0.5791" y2="6.0451" layer="200" rot="R180"/>
<rectangle x1="5.2781" y1="6.0451" x2="5.4813" y2="6.0705" layer="200" rot="R180"/>
<rectangle x1="-4.9073" y1="6.0451" x2="0.5791" y2="6.0705" layer="200" rot="R180"/>
<rectangle x1="5.2273" y1="6.0705" x2="5.4559" y2="6.0959" layer="200" rot="R180"/>
<rectangle x1="-4.9073" y1="6.0705" x2="0.6045" y2="6.0959" layer="200" rot="R180"/>
<rectangle x1="5.2019" y1="6.0959" x2="5.4305" y2="6.1213" layer="200" rot="R180"/>
<rectangle x1="-4.8819" y1="6.0959" x2="0.6045" y2="6.1213" layer="200" rot="R180"/>
<rectangle x1="5.1511" y1="6.1213" x2="5.4051" y2="6.1467" layer="200" rot="R180"/>
<rectangle x1="-4.8819" y1="6.1213" x2="0.6045" y2="6.1467" layer="200" rot="R180"/>
<rectangle x1="5.1257" y1="6.1467" x2="5.3797" y2="6.1721" layer="200" rot="R180"/>
<rectangle x1="-4.8819" y1="6.1467" x2="0.6045" y2="6.1721" layer="200" rot="R180"/>
<rectangle x1="5.0749" y1="6.1721" x2="5.3289" y2="6.1975" layer="200" rot="R180"/>
<rectangle x1="-4.8565" y1="6.1721" x2="0.6299" y2="6.1975" layer="200" rot="R180"/>
<rectangle x1="5.0495" y1="6.1975" x2="5.3035" y2="6.2229" layer="200" rot="R180"/>
<rectangle x1="-4.8565" y1="6.1975" x2="0.6299" y2="6.2229" layer="200" rot="R180"/>
<rectangle x1="5.0241" y1="6.2229" x2="5.2781" y2="6.2483" layer="200" rot="R180"/>
<rectangle x1="-4.8311" y1="6.2229" x2="0.6299" y2="6.2483" layer="200" rot="R180"/>
<rectangle x1="4.9987" y1="6.2483" x2="5.2527" y2="6.2737" layer="200" rot="R180"/>
<rectangle x1="-4.8311" y1="6.2483" x2="0.6299" y2="6.2737" layer="200" rot="R180"/>
<rectangle x1="4.9733" y1="6.2737" x2="5.2273" y2="6.2991" layer="200" rot="R180"/>
<rectangle x1="-4.8057" y1="6.2737" x2="0.6553" y2="6.2991" layer="200" rot="R180"/>
<rectangle x1="4.9225" y1="6.2991" x2="5.2019" y2="6.3245" layer="200" rot="R180"/>
<rectangle x1="-4.8057" y1="6.2991" x2="0.6553" y2="6.3245" layer="200" rot="R180"/>
<rectangle x1="4.8717" y1="6.3245" x2="5.1765" y2="6.3499" layer="200" rot="R180"/>
<rectangle x1="-4.7803" y1="6.3245" x2="0.6553" y2="6.3499" layer="200" rot="R180"/>
<rectangle x1="4.8463" y1="6.3499" x2="5.1511" y2="6.3753" layer="200" rot="R180"/>
<rectangle x1="-4.7803" y1="6.3499" x2="0.6553" y2="6.3753" layer="200" rot="R180"/>
<rectangle x1="4.8209" y1="6.3753" x2="5.1257" y2="6.4007" layer="200" rot="R180"/>
<rectangle x1="-4.7549" y1="6.3753" x2="0.6553" y2="6.4007" layer="200" rot="R180"/>
<rectangle x1="4.7701" y1="6.4007" x2="5.1003" y2="6.4261" layer="200" rot="R180"/>
<rectangle x1="-4.7549" y1="6.4007" x2="0.6553" y2="6.4261" layer="200" rot="R180"/>
<rectangle x1="4.7447" y1="6.4261" x2="5.0749" y2="6.4515" layer="200" rot="R180"/>
<rectangle x1="-4.7295" y1="6.4261" x2="0.6553" y2="6.4515" layer="200" rot="R180"/>
<rectangle x1="4.6939" y1="6.4515" x2="5.0495" y2="6.4769" layer="200" rot="R180"/>
<rectangle x1="-4.7041" y1="6.4515" x2="0.6807" y2="6.4769" layer="200" rot="R180"/>
<rectangle x1="4.6685" y1="6.4769" x2="4.9733" y2="6.5023" layer="200" rot="R180"/>
<rectangle x1="-4.7041" y1="6.4769" x2="0.6807" y2="6.5023" layer="200" rot="R180"/>
<rectangle x1="4.6431" y1="6.5023" x2="4.8717" y2="6.5277" layer="200" rot="R180"/>
<rectangle x1="-4.6787" y1="6.5023" x2="0.6807" y2="6.5277" layer="200" rot="R180"/>
<rectangle x1="4.5923" y1="6.5277" x2="4.8717" y2="6.5531" layer="200" rot="R180"/>
<rectangle x1="-4.6787" y1="6.5277" x2="0.6807" y2="6.5531" layer="200" rot="R180"/>
<rectangle x1="4.5415" y1="6.5531" x2="4.8717" y2="6.5785" layer="200" rot="R180"/>
<rectangle x1="-4.6533" y1="6.5531" x2="0.7061" y2="6.5785" layer="200" rot="R180"/>
<rectangle x1="4.4653" y1="6.5785" x2="4.8717" y2="6.6039" layer="200" rot="R180"/>
<rectangle x1="-4.6533" y1="6.5785" x2="0.7061" y2="6.6039" layer="200" rot="R180"/>
<rectangle x1="4.7955" y1="6.6039" x2="4.8717" y2="6.6293" layer="200" rot="R180"/>
<rectangle x1="4.4145" y1="6.6039" x2="4.7447" y2="6.6293" layer="200" rot="R180"/>
<rectangle x1="-4.6279" y1="6.6039" x2="0.7061" y2="6.6293" layer="200" rot="R180"/>
<rectangle x1="4.3637" y1="6.6293" x2="4.7193" y2="6.6547" layer="200" rot="R180"/>
<rectangle x1="-4.6025" y1="6.6293" x2="0.7315" y2="6.6547" layer="200" rot="R180"/>
<rectangle x1="4.3383" y1="6.6547" x2="4.6939" y2="6.6801" layer="200" rot="R180"/>
<rectangle x1="-4.5771" y1="6.6547" x2="0.7315" y2="6.6801" layer="200" rot="R180"/>
<rectangle x1="4.2621" y1="6.6801" x2="4.6939" y2="6.7055" layer="200" rot="R180"/>
<rectangle x1="-4.5517" y1="6.6801" x2="0.7315" y2="6.7055" layer="200" rot="R180"/>
<rectangle x1="4.2367" y1="6.7055" x2="4.6431" y2="6.7309" layer="200" rot="R180"/>
<rectangle x1="-4.5263" y1="6.7055" x2="0.7315" y2="6.7309" layer="200" rot="R180"/>
<rectangle x1="4.1859" y1="6.7309" x2="4.5923" y2="6.7563" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="6.7309" x2="0.7061" y2="6.7563" layer="200" rot="R180"/>
<rectangle x1="4.1605" y1="6.7563" x2="4.5669" y2="6.7817" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="6.7563" x2="0.7061" y2="6.7817" layer="200" rot="R180"/>
<rectangle x1="4.0589" y1="6.7817" x2="4.5161" y2="6.8071" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="6.7817" x2="0.6807" y2="6.8071" layer="200" rot="R180"/>
<rectangle x1="4.0081" y1="6.8071" x2="4.4653" y2="6.8325" layer="200" rot="R180"/>
<rectangle x1="-4.5009" y1="6.8071" x2="0.6807" y2="6.8325" layer="200" rot="R180"/>
<rectangle x1="3.9827" y1="6.8325" x2="4.4399" y2="6.8579" layer="200" rot="R180"/>
<rectangle x1="-4.4755" y1="6.8325" x2="0.7061" y2="6.8579" layer="200" rot="R180"/>
<rectangle x1="3.9319" y1="6.8579" x2="4.4145" y2="6.8833" layer="200" rot="R180"/>
<rectangle x1="-4.4755" y1="6.8579" x2="0.7315" y2="6.8833" layer="200" rot="R180"/>
<rectangle x1="3.8557" y1="6.8833" x2="4.4145" y2="6.9087" layer="200" rot="R180"/>
<rectangle x1="-4.4501" y1="6.8833" x2="0.7569" y2="6.9087" layer="200" rot="R180"/>
<rectangle x1="3.8049" y1="6.9087" x2="4.3891" y2="6.9341" layer="200" rot="R180"/>
<rectangle x1="-4.4247" y1="6.9087" x2="0.7569" y2="6.9341" layer="200" rot="R180"/>
<rectangle x1="3.7541" y1="6.9341" x2="4.3637" y2="6.9595" layer="200" rot="R180"/>
<rectangle x1="-4.4247" y1="6.9341" x2="0.7569" y2="6.9595" layer="200" rot="R180"/>
<rectangle x1="3.6779" y1="6.9595" x2="4.3637" y2="6.9849" layer="200" rot="R180"/>
<rectangle x1="-4.4247" y1="6.9595" x2="0.7315" y2="6.9849" layer="200" rot="R180"/>
<rectangle x1="3.6271" y1="6.9849" x2="4.3383" y2="7.0103" layer="200" rot="R180"/>
<rectangle x1="-4.3993" y1="6.9849" x2="0.7061" y2="7.0103" layer="200" rot="R180"/>
<rectangle x1="3.5763" y1="7.0103" x2="4.3129" y2="7.0357" layer="200" rot="R180"/>
<rectangle x1="-4.3739" y1="7.0103" x2="0.7061" y2="7.0357" layer="200" rot="R180"/>
<rectangle x1="3.4493" y1="7.0357" x2="4.2621" y2="7.0611" layer="200" rot="R180"/>
<rectangle x1="-4.3739" y1="7.0357" x2="0.6807" y2="7.0611" layer="200" rot="R180"/>
<rectangle x1="3.3477" y1="7.0611" x2="4.2367" y2="7.0865" layer="200" rot="R180"/>
<rectangle x1="-4.3739" y1="7.0611" x2="0.7061" y2="7.0865" layer="200" rot="R180"/>
<rectangle x1="3.2969" y1="7.0865" x2="4.2367" y2="7.1119" layer="200" rot="R180"/>
<rectangle x1="-4.3485" y1="7.0865" x2="0.7061" y2="7.1119" layer="200" rot="R180"/>
<rectangle x1="3.2461" y1="7.1119" x2="4.2113" y2="7.1373" layer="200" rot="R180"/>
<rectangle x1="-4.3485" y1="7.1119" x2="0.7061" y2="7.1373" layer="200" rot="R180"/>
<rectangle x1="3.1445" y1="7.1373" x2="4.2113" y2="7.1627" layer="200" rot="R180"/>
<rectangle x1="-4.3231" y1="7.1373" x2="0.7061" y2="7.1627" layer="200" rot="R180"/>
<rectangle x1="3.0175" y1="7.1627" x2="4.1859" y2="7.1881" layer="200" rot="R180"/>
<rectangle x1="-4.2977" y1="7.1627" x2="0.7061" y2="7.1881" layer="200" rot="R180"/>
<rectangle x1="2.9413" y1="7.1881" x2="4.1605" y2="7.2135" layer="200" rot="R180"/>
<rectangle x1="-4.2723" y1="7.1881" x2="0.7315" y2="7.2135" layer="200" rot="R180"/>
<rectangle x1="4.0081" y1="7.2135" x2="4.1097" y2="7.2389" layer="200" rot="R180"/>
<rectangle x1="2.8397" y1="7.2135" x2="3.9319" y2="7.2389" layer="200" rot="R180"/>
<rectangle x1="-4.2723" y1="7.2135" x2="0.7569" y2="7.2389" layer="200" rot="R180"/>
<rectangle x1="2.6873" y1="7.2389" x2="3.9319" y2="7.2643" layer="200" rot="R180"/>
<rectangle x1="-4.2469" y1="7.2389" x2="0.7823" y2="7.2643" layer="200" rot="R180"/>
<rectangle x1="2.5603" y1="7.2643" x2="3.9573" y2="7.2897" layer="200" rot="R180"/>
<rectangle x1="-4.2469" y1="7.2643" x2="0.7823" y2="7.2897" layer="200" rot="R180"/>
<rectangle x1="2.4079" y1="7.2897" x2="3.9827" y2="7.3151" layer="200" rot="R180"/>
<rectangle x1="-4.2215" y1="7.2897" x2="0.8331" y2="7.3151" layer="200" rot="R180"/>
<rectangle x1="3.8557" y1="7.3151" x2="3.9573" y2="7.3405" layer="200" rot="R180"/>
<rectangle x1="2.2555" y1="7.3151" x2="3.7541" y2="7.3405" layer="200" rot="R180"/>
<rectangle x1="-4.2215" y1="7.3151" x2="0.9601" y2="7.3405" layer="200" rot="R180"/>
<rectangle x1="2.0777" y1="7.3405" x2="3.7541" y2="7.3659" layer="200" rot="R180"/>
<rectangle x1="-4.1961" y1="7.3405" x2="1.1633" y2="7.3659" layer="200" rot="R180"/>
<rectangle x1="-4.1961" y1="7.3659" x2="3.7541" y2="7.3913" layer="200" rot="R180"/>
<rectangle x1="-4.1707" y1="7.3913" x2="3.7541" y2="7.4167" layer="200" rot="R180"/>
<rectangle x1="-4.1707" y1="7.4167" x2="3.7287" y2="7.4421" layer="200" rot="R180"/>
<rectangle x1="-4.1453" y1="7.4421" x2="3.7287" y2="7.4675" layer="200" rot="R180"/>
<rectangle x1="-4.1453" y1="7.4675" x2="3.6779" y2="7.4929" layer="200" rot="R180"/>
<rectangle x1="-4.1199" y1="7.4929" x2="3.6525" y2="7.5183" layer="200" rot="R180"/>
<rectangle x1="-4.0945" y1="7.5183" x2="3.6017" y2="7.5437" layer="200" rot="R180"/>
<rectangle x1="-4.0691" y1="7.5437" x2="3.5763" y2="7.5691" layer="200" rot="R180"/>
<rectangle x1="-4.0437" y1="7.5691" x2="3.5509" y2="7.5945" layer="200" rot="R180"/>
<rectangle x1="-4.0437" y1="7.5945" x2="3.5001" y2="7.6199" layer="200" rot="R180"/>
<rectangle x1="-4.0183" y1="7.6199" x2="3.4747" y2="7.6453" layer="200" rot="R180"/>
<rectangle x1="-3.9929" y1="7.6453" x2="3.4239" y2="7.6707" layer="200" rot="R180"/>
<rectangle x1="-3.9929" y1="7.6707" x2="3.3985" y2="7.6961" layer="200" rot="R180"/>
<rectangle x1="-3.9675" y1="7.6961" x2="3.3477" y2="7.7215" layer="200" rot="R180"/>
<rectangle x1="-3.9421" y1="7.7215" x2="3.2969" y2="7.7469" layer="200" rot="R180"/>
<rectangle x1="-3.9167" y1="7.7469" x2="3.2715" y2="7.7723" layer="200" rot="R180"/>
<rectangle x1="-3.8913" y1="7.7723" x2="3.2207" y2="7.7977" layer="200" rot="R180"/>
<rectangle x1="-3.8659" y1="7.7977" x2="3.1953" y2="7.8231" layer="200" rot="R180"/>
<rectangle x1="-3.8405" y1="7.8231" x2="3.1191" y2="7.8485" layer="200" rot="R180"/>
<rectangle x1="-3.8405" y1="7.8485" x2="2.9921" y2="7.8739" layer="200" rot="R180"/>
<rectangle x1="-3.8151" y1="7.8739" x2="2.8651" y2="7.8993" layer="200" rot="R180"/>
<rectangle x1="-3.8151" y1="7.8993" x2="2.7127" y2="7.9247" layer="200" rot="R180"/>
<rectangle x1="-3.7897" y1="7.9247" x2="2.6619" y2="7.9501" layer="200" rot="R180"/>
<rectangle x1="-3.7897" y1="7.9501" x2="2.6111" y2="7.9755" layer="200" rot="R180"/>
<rectangle x1="-3.7643" y1="7.9755" x2="2.5857" y2="8.0009" layer="200" rot="R180"/>
<rectangle x1="-3.7389" y1="8.0009" x2="2.5603" y2="8.0263" layer="200" rot="R180"/>
<rectangle x1="2.4079" y1="8.0263" x2="2.5349" y2="8.0517" layer="200" rot="R180"/>
<rectangle x1="-3.7135" y1="8.0263" x2="2.2809" y2="8.0517" layer="200" rot="R180"/>
<rectangle x1="2.4333" y1="8.0517" x2="2.4841" y2="8.0771" layer="200" rot="R180"/>
<rectangle x1="-3.7135" y1="8.0517" x2="2.2555" y2="8.0771" layer="200" rot="R180"/>
<rectangle x1="-3.6627" y1="8.0771" x2="2.2047" y2="8.1025" layer="200" rot="R180"/>
<rectangle x1="-3.6627" y1="8.1025" x2="2.1539" y2="8.1279" layer="200" rot="R180"/>
<rectangle x1="-3.6373" y1="8.1279" x2="2.1031" y2="8.1533" layer="200" rot="R180"/>
<rectangle x1="-3.6119" y1="8.1533" x2="2.0269" y2="8.1787" layer="200" rot="R180"/>
<rectangle x1="-3.5865" y1="8.1787" x2="1.9253" y2="8.2041" layer="200" rot="R180"/>
<rectangle x1="-3.5611" y1="8.2041" x2="1.8237" y2="8.2295" layer="200" rot="R180"/>
<rectangle x1="-3.5357" y1="8.2295" x2="1.6713" y2="8.2549" layer="200" rot="R180"/>
<rectangle x1="1.5189" y1="8.2549" x2="1.5443" y2="8.2803" layer="200" rot="R180"/>
<rectangle x1="-3.4849" y1="8.2549" x2="1.4935" y2="8.2803" layer="200" rot="R180"/>
<rectangle x1="-3.4595" y1="8.2803" x2="1.3919" y2="8.3057" layer="200" rot="R180"/>
<rectangle x1="-3.4341" y1="8.3057" x2="1.2903" y2="8.3311" layer="200" rot="R180"/>
<rectangle x1="-3.4087" y1="8.3311" x2="1.2395" y2="8.3565" layer="200" rot="R180"/>
<rectangle x1="-3.4087" y1="8.3565" x2="1.2141" y2="8.3819" layer="200" rot="R180"/>
<rectangle x1="-3.3833" y1="8.3819" x2="1.1887" y2="8.4073" layer="200" rot="R180"/>
<rectangle x1="-3.3579" y1="8.4073" x2="1.1379" y2="8.4327" layer="200" rot="R180"/>
<rectangle x1="-3.3579" y1="8.4327" x2="1.0617" y2="8.4581" layer="200" rot="R180"/>
<rectangle x1="-3.3071" y1="8.4581" x2="0.9855" y2="8.4835" layer="200" rot="R180"/>
<rectangle x1="-3.2817" y1="8.4835" x2="0.8585" y2="8.5089" layer="200" rot="R180"/>
<rectangle x1="-3.2563" y1="8.5089" x2="0.8331" y2="8.5343" layer="200" rot="R180"/>
<rectangle x1="-3.2309" y1="8.5343" x2="0.7823" y2="8.5597" layer="200" rot="R180"/>
<rectangle x1="-3.2055" y1="8.5597" x2="0.7569" y2="8.5851" layer="200" rot="R180"/>
<rectangle x1="-3.1801" y1="8.5851" x2="0.7061" y2="8.6105" layer="200" rot="R180"/>
<rectangle x1="-3.1547" y1="8.6105" x2="0.6299" y2="8.6359" layer="200" rot="R180"/>
<rectangle x1="-3.1039" y1="8.6359" x2="0.6045" y2="8.6613" layer="200" rot="R180"/>
<rectangle x1="-3.0531" y1="8.6613" x2="0.5791" y2="8.6867" layer="200" rot="R180"/>
<rectangle x1="-3.0277" y1="8.6867" x2="0.5283" y2="8.7121" layer="200" rot="R180"/>
<rectangle x1="-3.0023" y1="8.7121" x2="0.4775" y2="8.7375" layer="200" rot="R180"/>
<rectangle x1="-2.9515" y1="8.7375" x2="0.4013" y2="8.7629" layer="200" rot="R180"/>
<rectangle x1="-2.9007" y1="8.7629" x2="0.3505" y2="8.7883" layer="200" rot="R180"/>
<rectangle x1="-2.8499" y1="8.7883" x2="0.2743" y2="8.8137" layer="200" rot="R180"/>
<rectangle x1="-2.7991" y1="8.8137" x2="0.2235" y2="8.8391" layer="200" rot="R180"/>
<rectangle x1="-2.7483" y1="8.8391" x2="0.1981" y2="8.8645" layer="200" rot="R180"/>
<rectangle x1="-2.6721" y1="8.8645" x2="0.1219" y2="8.8899" layer="200" rot="R180"/>
<rectangle x1="-2.6467" y1="8.8899" x2="0.0711" y2="8.9153" layer="200" rot="R180"/>
<rectangle x1="-2.5959" y1="8.9153" x2="-0.0559" y2="8.9407" layer="200" rot="R180"/>
<rectangle x1="-2.5705" y1="8.9407" x2="-0.1321" y2="8.9661" layer="200" rot="R180"/>
<rectangle x1="-2.5705" y1="8.9661" x2="-0.1829" y2="8.9915" layer="200" rot="R180"/>
<rectangle x1="-2.5197" y1="8.9915" x2="-0.1829" y2="9.0169" layer="200" rot="R180"/>
<rectangle x1="-2.4181" y1="9.0169" x2="-0.2591" y2="9.0423" layer="200" rot="R180"/>
<rectangle x1="-2.3673" y1="9.0423" x2="-0.3353" y2="9.0677" layer="200" rot="R180"/>
<rectangle x1="-2.2657" y1="9.0677" x2="-0.4877" y2="9.0931" layer="200" rot="R180"/>
<rectangle x1="-2.1387" y1="9.0931" x2="-0.5639" y2="9.1185" layer="200" rot="R180"/>
<rectangle x1="-2.0625" y1="9.1185" x2="-0.6147" y2="9.1439" layer="200" rot="R180"/>
<rectangle x1="-1.9609" y1="9.1439" x2="-0.6655" y2="9.1693" layer="200" rot="R180"/>
<rectangle x1="-1.8593" y1="9.1693" x2="-0.7417" y2="9.1947" layer="200" rot="R180"/>
<rectangle x1="-1.6307" y1="9.1947" x2="-0.8941" y2="9.2201" layer="200" rot="R180"/>
<rectangle x1="-1.3005" y1="9.2201" x2="-1.0211" y2="9.2455" layer="200" rot="R180"/>
<rectangle x1="-1.4275" y1="9.2201" x2="-1.4021" y2="9.2455" layer="200" rot="R180"/>
<rectangle x1="-1.5799" y1="9.2201" x2="-1.4529" y2="9.2455" layer="200" rot="R180"/>
</symbol>
<symbol name="DC_JACK">
<wire x1="-2.54" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="1.524" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="1.524" y1="-0.762" x2="2.794" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-0.762" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-2.286" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="-2.286" x2="-0.508" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-0.508" y1="-1.524" x2="-1.016" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.524" x2="-0.762" y2="-2.286" width="0.254" layer="94"/>
<text x="-2.54" y="4.064" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-5.588" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.54" y1="2.032" x2="2.794" y2="3.048" layer="94"/>
<pin name="PAD1" x="-7.62" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="PAD3" x="-7.62" y="0" visible="off" length="short" direction="pas"/>
<pin name="PAD2" x="-7.62" y="-2.54" visible="off" length="short" direction="pas"/>
<wire x1="-2.54" y1="-2.54" x2="-5.08" y2="-2.54" width="0.127" layer="94"/>
<wire x1="-2.54" y1="0" x2="-5.08" y2="0" width="0.127" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-5.08" y2="2.54" width="0.127" layer="94"/>
</symbol>
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
<symbol name="LCD_16X2_R2">
<wire x1="-20.32" y1="-7.62" x2="22.86" y2="-7.62" width="0.2032" layer="94"/>
<wire x1="22.86" y1="-7.62" x2="22.86" y2="12.7" width="0.2032" layer="94"/>
<wire x1="22.86" y1="12.7" x2="-20.32" y2="12.7" width="0.2032" layer="94"/>
<wire x1="-20.32" y1="12.7" x2="-20.32" y2="-7.62" width="0.2032" layer="94"/>
<text x="-10.16" y="10.668" size="1.524" layer="94">LCD DISPLAY 16x2</text>
<text x="-20.32" y="13.97" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.27" y="13.97" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-19.05" y1="6.604" x2="-16.764" y2="10.16" layer="94"/>
<rectangle x1="-19.05" y1="2.54" x2="-16.764" y2="6.096" layer="94"/>
<rectangle x1="-16.51" y1="6.604" x2="-14.224" y2="10.16" layer="94"/>
<rectangle x1="-16.51" y1="2.54" x2="-14.224" y2="6.096" layer="94"/>
<rectangle x1="-13.97" y1="6.604" x2="-11.684" y2="10.16" layer="94"/>
<rectangle x1="-13.97" y1="2.54" x2="-11.684" y2="6.096" layer="94"/>
<rectangle x1="-11.43" y1="6.604" x2="-9.144" y2="10.16" layer="94"/>
<rectangle x1="-11.43" y1="2.54" x2="-9.144" y2="6.096" layer="94"/>
<rectangle x1="-8.89" y1="6.604" x2="-6.604" y2="10.16" layer="94"/>
<rectangle x1="-8.89" y1="2.54" x2="-6.604" y2="6.096" layer="94"/>
<rectangle x1="-6.35" y1="6.604" x2="-4.064" y2="10.16" layer="94"/>
<rectangle x1="-6.35" y1="2.54" x2="-4.064" y2="6.096" layer="94"/>
<rectangle x1="-3.81" y1="6.604" x2="-1.524" y2="10.16" layer="94"/>
<rectangle x1="-3.81" y1="2.54" x2="-1.524" y2="6.096" layer="94"/>
<rectangle x1="-1.27" y1="6.604" x2="1.016" y2="10.16" layer="94"/>
<rectangle x1="-1.27" y1="2.54" x2="1.016" y2="6.096" layer="94"/>
<rectangle x1="1.27" y1="6.604" x2="3.556" y2="10.16" layer="94"/>
<rectangle x1="1.27" y1="2.54" x2="3.556" y2="6.096" layer="94"/>
<rectangle x1="3.81" y1="6.604" x2="6.096" y2="10.16" layer="94"/>
<rectangle x1="3.81" y1="2.54" x2="6.096" y2="6.096" layer="94"/>
<rectangle x1="6.35" y1="6.604" x2="8.636" y2="10.16" layer="94"/>
<rectangle x1="6.35" y1="2.54" x2="8.636" y2="6.096" layer="94"/>
<rectangle x1="8.89" y1="6.604" x2="11.176" y2="10.16" layer="94"/>
<rectangle x1="8.89" y1="2.54" x2="11.176" y2="6.096" layer="94"/>
<rectangle x1="11.43" y1="6.604" x2="13.716" y2="10.16" layer="94"/>
<rectangle x1="11.43" y1="2.54" x2="13.716" y2="6.096" layer="94"/>
<rectangle x1="13.97" y1="6.604" x2="16.256" y2="10.16" layer="94"/>
<rectangle x1="13.97" y1="2.54" x2="16.256" y2="6.096" layer="94"/>
<rectangle x1="16.51" y1="6.604" x2="18.796" y2="10.16" layer="94"/>
<rectangle x1="16.51" y1="2.54" x2="18.796" y2="6.096" layer="94"/>
<rectangle x1="19.05" y1="6.604" x2="21.336" y2="10.16" layer="94"/>
<rectangle x1="19.05" y1="2.54" x2="21.336" y2="6.096" layer="94"/>
<pin name="GND" x="-17.78" y="-10.16" length="short" direction="pwr" rot="R90"/>
<pin name="VCC" x="-15.24" y="-10.16" length="short" direction="pwr" rot="R90"/>
<pin name="CONTR" x="-12.7" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="RS" x="-10.16" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="R/W" x="-7.62" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="E" x="-5.08" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D0" x="-2.54" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D1" x="0" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D2" x="2.54" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D3" x="5.08" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D4" x="7.62" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D5" x="10.16" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D6" x="12.7" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D7" x="15.24" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="LED_A_5V" x="17.78" y="-10.16" length="short" direction="nc" rot="R90"/>
<pin name="LED_K" x="20.32" y="-10.16" length="short" direction="nc" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="EQUINOX_LOGO_SMALL">
<gates>
<gate name="G$1" symbol="EQUINOX_LOGO_SMALL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="EQUINOX_LOGO_SMALL">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="KYCON_KLDVX-0202">
<gates>
<gate name="G$1" symbol="DC_JACK" x="0" y="0"/>
</gates>
<devices>
<device name="" package="KYCON_KLVDX_2020_B">
<connects>
<connect gate="G$1" pin="PAD1" pad="1"/>
<connect gate="G$1" pin="PAD2" pad="2"/>
<connect gate="G$1" pin="PAD3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
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
<deviceset name="LCD_16X2_R2" prefix="DIS">
<description>Supplier: info &lt;info@huaxinjin.com&gt;

Model: 1602C-1</description>
<gates>
<gate name="G$1" symbol="LCD_16X2_R2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LCD_16X2_R2">
<connects>
<connect gate="G$1" pin="CONTR" pad="3"/>
<connect gate="G$1" pin="D0" pad="7"/>
<connect gate="G$1" pin="D1" pad="8"/>
<connect gate="G$1" pin="D2" pad="9"/>
<connect gate="G$1" pin="D3" pad="10"/>
<connect gate="G$1" pin="D4" pad="11"/>
<connect gate="G$1" pin="D5" pad="12"/>
<connect gate="G$1" pin="D6" pad="13"/>
<connect gate="G$1" pin="D7" pad="14"/>
<connect gate="G$1" pin="E" pad="6"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="LED_A_5V" pad="15"/>
<connect gate="G$1" pin="LED_K" pad="16"/>
<connect gate="G$1" pin="R/W" pad="5"/>
<connect gate="G$1" pin="RS" pad="4"/>
<connect gate="G$1" pin="VCC" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-kycon">
<description>&lt;b&gt;Connector from KYCON, Inc&lt;/b&gt;&lt;p&gt;
1810 Little Orchard Street,&lt;br&gt;
San Jose,&lt;br&gt;
CA 95125 (408)494-0330&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/autor&gt;</description>
<packages>
<package name="KUSBVX">
<description>&lt;b&gt;Vertical,Top Entry Universal Serial Bus Connector&lt;/b&gt; KUSBVX Series&lt;p&gt;
Source: KYCON Sibalco USB vertical socket KUSBV.pdf</description>
<wire x1="-6.6182" y1="3.1484" x2="-6.6182" y2="3.6196" width="0.1016" layer="51"/>
<wire x1="-6.6182" y1="3.6196" x2="-6.0613" y2="4.1765" width="0.1016" layer="51" curve="-90"/>
<wire x1="-6.0613" y1="4.1765" x2="-5.5473" y2="4.1765" width="0.1016" layer="51"/>
<wire x1="-6.2112" y1="3.1484" x2="-6.9823" y2="3.1484" width="0.1016" layer="51"/>
<wire x1="-6.9823" y1="3.1484" x2="-7.175" y2="2.9557" width="0.1016" layer="51" curve="90"/>
<wire x1="-7.175" y1="2.9557" x2="-7.175" y2="-0.4926" width="0.1016" layer="51"/>
<wire x1="-7.175" y1="-0.4926" x2="-6.9608" y2="-0.7068" width="0.1016" layer="21" curve="90"/>
<wire x1="-6.9608" y1="-0.7068" x2="-6.2112" y2="-0.7068" width="0.1016" layer="21"/>
<wire x1="-6.2112" y1="-0.7068" x2="-6.2112" y2="2.0775" width="0.1016" layer="51"/>
<wire x1="-6.2112" y1="2.0775" x2="-6.2112" y2="3.5554" width="0.1016" layer="51"/>
<wire x1="-6.2112" y1="3.5554" x2="-5.997" y2="3.7696" width="0.1016" layer="51" curve="-90"/>
<wire x1="-5.997" y1="3.7696" x2="-5.5473" y2="3.7696" width="0.1016" layer="51"/>
<wire x1="-5.5473" y1="3.7696" x2="-5.5473" y2="4.5835" width="0.1016" layer="21"/>
<wire x1="-5.5473" y1="4.5835" x2="-5.376" y2="4.7548" width="0.1016" layer="21" curve="-90"/>
<wire x1="-5.376" y1="4.7548" x2="-1.3493" y2="4.7548" width="0.1016" layer="21"/>
<wire x1="-1.3493" y1="4.7548" x2="-1.178" y2="4.5835" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.178" y1="4.5835" x2="-1.178" y2="3.7696" width="0.1016" layer="21"/>
<wire x1="-1.1566" y1="4.1765" x2="1.1994" y2="4.1765" width="0.1016" layer="21"/>
<wire x1="1.1994" y1="4.1765" x2="1.1994" y2="4.562" width="0.1016" layer="21"/>
<wire x1="1.1994" y1="4.562" x2="1.3922" y2="4.7548" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.3922" y1="4.7548" x2="5.3973" y2="4.7548" width="0.1016" layer="21"/>
<wire x1="5.3973" y1="4.7548" x2="5.5687" y2="4.5834" width="0.1016" layer="21" curve="-90"/>
<wire x1="5.5687" y1="4.5834" x2="5.5687" y2="3.791" width="0.1016" layer="21"/>
<wire x1="5.5687" y1="3.791" x2="5.997" y2="3.791" width="0.1016" layer="51"/>
<wire x1="5.997" y1="3.791" x2="6.1898" y2="3.5982" width="0.1016" layer="51" curve="-90"/>
<wire x1="6.1898" y1="3.5982" x2="6.1898" y2="-1.1352" width="0.1016" layer="51"/>
<wire x1="6.1898" y1="-1.1352" x2="6.0185" y2="-1.3065" width="0.1016" layer="21" curve="-90"/>
<wire x1="6.0185" y1="-1.3065" x2="5.5687" y2="-1.3065" width="0.1016" layer="21"/>
<wire x1="5.5687" y1="-1.3065" x2="5.5687" y2="-1.7134" width="0.1016" layer="21"/>
<wire x1="5.5687" y1="-1.7134" x2="5.5687" y2="-2.0775" width="0.1016" layer="21"/>
<wire x1="5.5687" y1="-2.0775" x2="5.3545" y2="-2.2917" width="0.1016" layer="21" curve="-90"/>
<wire x1="5.3545" y1="-2.2917" x2="1.3922" y2="-2.2917" width="0.1016" layer="21"/>
<wire x1="1.3922" y1="-2.2917" x2="1.1994" y2="-2.0989" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.1994" y1="-2.0989" x2="1.1994" y2="-1.7134" width="0.1016" layer="21"/>
<wire x1="1.1994" y1="-1.7134" x2="1.1994" y2="-1.3065" width="0.1016" layer="21"/>
<wire x1="1.1994" y1="-1.7134" x2="-1.1566" y2="-1.7134" width="0.1016" layer="21"/>
<wire x1="-1.178" y1="-1.3065" x2="-1.178" y2="-2.0347" width="0.1016" layer="21"/>
<wire x1="-1.178" y1="-2.0347" x2="-1.435" y2="-2.2917" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.435" y1="-2.2917" x2="-5.3759" y2="-2.2917" width="0.1016" layer="21"/>
<wire x1="-5.3759" y1="-2.2917" x2="-5.5473" y2="-2.1203" width="0.1016" layer="21" curve="-90"/>
<wire x1="-5.5473" y1="-2.1203" x2="-5.5473" y2="-1.7134" width="0.1016" layer="21"/>
<wire x1="-5.5473" y1="-1.7134" x2="-5.5473" y2="-1.3065" width="0.1016" layer="21"/>
<wire x1="-5.5473" y1="-1.7134" x2="-6.147" y2="-1.7134" width="0.1016" layer="21"/>
<wire x1="-6.147" y1="-1.7134" x2="-6.6182" y2="-1.2422" width="0.1016" layer="21" curve="-90"/>
<wire x1="-6.6182" y1="-1.2422" x2="-6.6182" y2="-0.7282" width="0.1016" layer="21"/>
<wire x1="-6.2112" y1="-0.7068" x2="-6.2112" y2="-1.0923" width="0.1016" layer="21"/>
<wire x1="-6.2112" y1="-1.0923" x2="-5.997" y2="-1.3065" width="0.1016" layer="21" curve="90"/>
<wire x1="-5.997" y1="-1.3065" x2="-3.9624" y2="-1.3065" width="0.1016" layer="21"/>
<wire x1="-3.9624" y1="-1.3065" x2="-3.9623" y2="-1.3065" width="0.1016" layer="21"/>
<wire x1="-3.9624" y1="-1.3065" x2="-3.8767" y2="-1.4564" width="0.1016" layer="21"/>
<wire x1="-3.8767" y1="-1.4564" x2="-3.8767" y2="-1.7134" width="0.1016" layer="21"/>
<wire x1="-3.8767" y1="-1.7134" x2="-3.7267" y2="-1.8634" width="0.1016" layer="21" curve="90"/>
<wire x1="-3.7267" y1="-1.8634" x2="-2.099" y2="-1.8634" width="0.1016" layer="21"/>
<wire x1="-2.099" y1="-1.8634" x2="-2.0561" y2="-1.8205" width="0.1016" layer="21" curve="90"/>
<wire x1="-2.0561" y1="-1.8205" x2="-2.0561" y2="-1.4564" width="0.1016" layer="21"/>
<wire x1="-1.178" y1="-1.3065" x2="-1.949" y2="-1.3065" width="0.1016" layer="21"/>
<wire x1="-3.9623" y1="-1.2851" x2="-3.6196" y2="-0.921" width="0.1016" layer="21"/>
<wire x1="-3.6196" y1="-0.921" x2="-2.2917" y2="-0.921" width="0.1016" layer="21"/>
<wire x1="-2.2917" y1="-0.921" x2="-1.949" y2="-1.3065" width="0.1016" layer="21"/>
<wire x1="-1.949" y1="-1.3065" x2="-2.0561" y2="-1.4564" width="0.1016" layer="21"/>
<wire x1="-2.0561" y1="-1.4564" x2="-2.3131" y2="-1.0066" width="0.1016" layer="21"/>
<wire x1="-2.3131" y1="-1.0066" x2="-2.4845" y2="-1.5635" width="0.1016" layer="21"/>
<wire x1="-2.4845" y1="-1.5635" x2="-3.4055" y2="-1.5635" width="0.1016" layer="21"/>
<wire x1="-3.4055" y1="-1.5635" x2="-3.5982" y2="-0.9424" width="0.1016" layer="21"/>
<wire x1="-3.8552" y1="-1.4993" x2="-3.5982" y2="-1.0495" width="0.1016" layer="21"/>
<wire x1="5.5687" y1="-1.7134" x2="6.1684" y2="-1.7134" width="0.1016" layer="21"/>
<wire x1="6.1684" y1="-1.7134" x2="6.6182" y2="-1.2636" width="0.1016" layer="21" curve="90"/>
<wire x1="6.6182" y1="-1.2636" x2="6.6182" y2="-0.7282" width="0.1016" layer="21"/>
<wire x1="6.2112" y1="-0.7068" x2="6.9394" y2="-0.7068" width="0.1016" layer="21"/>
<wire x1="6.9394" y1="-0.7068" x2="7.2179" y2="-0.4283" width="0.1016" layer="21" curve="90"/>
<wire x1="7.2179" y1="-0.4283" x2="7.2179" y2="2.9343" width="0.1016" layer="51"/>
<wire x1="7.2179" y1="2.9343" x2="7.0038" y2="3.1484" width="0.1016" layer="51" curve="90"/>
<wire x1="7.0038" y1="3.1484" x2="6.2112" y2="3.1484" width="0.1016" layer="51"/>
<wire x1="6.5967" y1="3.1699" x2="6.5967" y2="3.7053" width="0.1016" layer="51"/>
<wire x1="6.5967" y1="3.7053" x2="6.1255" y2="4.1765" width="0.1016" layer="51" curve="90"/>
<wire x1="6.1255" y1="4.1765" x2="5.6115" y2="4.1765" width="0.1016" layer="51"/>
<wire x1="5.5687" y1="3.791" x2="3.9409" y2="3.791" width="0.1016" layer="21"/>
<wire x1="3.9409" y1="3.791" x2="3.8552" y2="3.8981" width="0.1016" layer="21"/>
<wire x1="3.8552" y1="3.8981" x2="3.8552" y2="4.1979" width="0.1016" layer="21"/>
<wire x1="3.8552" y1="4.1979" x2="3.7267" y2="4.3264" width="0.1016" layer="21" curve="90"/>
<wire x1="3.7267" y1="4.3264" x2="2.1846" y2="4.3264" width="0.1016" layer="21"/>
<wire x1="2.1846" y1="4.3264" x2="2.0347" y2="4.1765" width="0.1016" layer="21" curve="90"/>
<wire x1="2.0347" y1="4.1765" x2="2.0347" y2="3.8552" width="0.1016" layer="21"/>
<wire x1="1.1994" y1="4.1765" x2="1.1994" y2="3.7696" width="0.1016" layer="21"/>
<wire x1="1.1994" y1="3.7696" x2="1.949" y2="3.7696" width="0.1016" layer="21"/>
<wire x1="1.949" y1="3.7696" x2="2.3131" y2="3.3412" width="0.1016" layer="21"/>
<wire x1="2.3131" y1="3.3412" x2="3.6196" y2="3.3412" width="0.1016" layer="21"/>
<wire x1="3.6196" y1="3.3412" x2="3.9623" y2="3.7696" width="0.1016" layer="21"/>
<wire x1="-5.5258" y1="1.2208" x2="5.483" y2="1.2208" width="0.1016" layer="21"/>
<wire x1="5.483" y1="1.2208" x2="5.5044" y2="1.2208" width="0.1016" layer="21"/>
<wire x1="5.5044" y1="1.2208" x2="5.5044" y2="-0.0643" width="0.1016" layer="21"/>
<wire x1="5.5044" y1="-0.0643" x2="4.969" y2="-0.5997" width="0.1016" layer="21" curve="-90"/>
<wire x1="4.969" y1="-0.5997" x2="-4.8833" y2="-0.5997" width="0.1016" layer="51"/>
<wire x1="-4.8833" y1="-0.5997" x2="-5.5258" y2="0.0428" width="0.1016" layer="21" curve="-90"/>
<wire x1="-5.5258" y1="0.0428" x2="-5.5258" y2="1.2208" width="0.1016" layer="21"/>
<wire x1="-5.5258" y1="1.2208" x2="-4.9904" y2="0.8353" width="0.1016" layer="21"/>
<wire x1="-4.9904" y1="0.8353" x2="-5.0118" y2="-0.0857" width="0.1016" layer="21"/>
<wire x1="-5.0118" y1="-0.0857" x2="-5.3331" y2="-0.3641" width="0.1016" layer="21"/>
<wire x1="-4.9904" y1="0.8353" x2="5.0118" y2="0.8353" width="0.1016" layer="21"/>
<wire x1="5.0118" y1="0.8353" x2="5.483" y2="1.2208" width="0.1016" layer="21"/>
<wire x1="5.0118" y1="0.8353" x2="5.0118" y2="-0.0857" width="0.1016" layer="21"/>
<wire x1="5.0118" y1="-0.0857" x2="5.3545" y2="-0.3855" width="0.1016" layer="21"/>
<wire x1="5.0118" y1="-0.0857" x2="-5.0118" y2="-0.0857" width="0.1016" layer="51"/>
<wire x1="-4.1337" y1="1.2637" x2="-4.1337" y2="2.5273" width="0.1016" layer="21"/>
<wire x1="-4.1337" y1="2.5273" x2="-2.8058" y2="2.5273" width="0.1016" layer="21"/>
<wire x1="-2.8058" y1="2.5273" x2="-2.8058" y2="1.2637" width="0.1016" layer="21"/>
<wire x1="-1.6706" y1="1.2422" x2="-1.6492" y2="1.2422" width="0.1016" layer="21"/>
<wire x1="-1.6492" y1="1.2422" x2="-1.6492" y2="2.5273" width="0.1016" layer="21"/>
<wire x1="-1.6492" y1="2.5273" x2="-0.3427" y2="2.5273" width="0.1016" layer="21"/>
<wire x1="-0.3427" y1="2.5273" x2="-0.3427" y2="1.2851" width="0.1016" layer="21"/>
<wire x1="0.3427" y1="1.2637" x2="0.3427" y2="2.5273" width="0.1016" layer="21"/>
<wire x1="0.3427" y1="2.5273" x2="1.6492" y2="2.5273" width="0.1016" layer="21"/>
<wire x1="1.6492" y1="2.5273" x2="1.6492" y2="1.2422" width="0.1016" layer="21"/>
<wire x1="2.8272" y1="1.2422" x2="2.8272" y2="2.5273" width="0.1016" layer="21"/>
<wire x1="2.8272" y1="2.5273" x2="4.1337" y2="2.5273" width="0.1016" layer="21"/>
<wire x1="4.1337" y1="2.5273" x2="4.1337" y2="1.2422" width="0.1016" layer="21"/>
<wire x1="-6.2112" y1="2.0775" x2="-5.9114" y2="1.7991" width="0.1016" layer="51"/>
<wire x1="-5.9114" y1="1.7991" x2="-5.9114" y2="0.664" width="0.1016" layer="51"/>
<wire x1="-5.9114" y1="0.664" x2="-6.1898" y2="0.4069" width="0.1016" layer="21"/>
<wire x1="6.1684" y1="0.4284" x2="5.9114" y2="0.7068" width="0.1016" layer="21"/>
<wire x1="5.9114" y1="0.7068" x2="5.9114" y2="1.7563" width="0.1016" layer="51"/>
<wire x1="5.9114" y1="1.7563" x2="6.1684" y2="2.0133" width="0.1016" layer="51"/>
<wire x1="-1.178" y1="-1.3065" x2="1.949" y2="-1.3065" width="0.1016" layer="21"/>
<wire x1="1.949" y1="-1.3065" x2="2.2917" y2="-0.8996" width="0.1016" layer="21"/>
<wire x1="2.2917" y1="-0.8996" x2="3.6411" y2="-0.8996" width="0.1016" layer="21"/>
<wire x1="3.6411" y1="-0.8996" x2="3.9837" y2="-1.3065" width="0.1016" layer="21"/>
<wire x1="3.9837" y1="-1.3065" x2="3.8552" y2="-1.435" width="0.1016" layer="21"/>
<wire x1="3.8552" y1="-1.435" x2="3.8552" y2="-1.8419" width="0.1016" layer="21"/>
<wire x1="3.8552" y1="-1.8419" x2="2.0347" y2="-1.8419" width="0.1016" layer="21"/>
<wire x1="2.0347" y1="-1.8419" x2="2.0347" y2="-1.3922" width="0.1016" layer="21"/>
<wire x1="2.0347" y1="-1.3922" x2="1.949" y2="-1.3065" width="0.1016" layer="21"/>
<wire x1="2.3346" y1="-0.9424" x2="2.0561" y2="-1.4564" width="0.1016" layer="21"/>
<wire x1="2.3346" y1="-0.9424" x2="2.4631" y2="-1.5207" width="0.1016" layer="21"/>
<wire x1="2.4631" y1="-1.5207" x2="3.4055" y2="-1.5207" width="0.1016" layer="21"/>
<wire x1="3.4055" y1="-1.5207" x2="3.6196" y2="-0.9424" width="0.1016" layer="21"/>
<wire x1="3.5982" y1="-0.9638" x2="3.8552" y2="-1.435" width="0.1016" layer="21"/>
<wire x1="1.949" y1="3.7696" x2="2.0347" y2="3.8552" width="0.1016" layer="21"/>
<wire x1="-5.5473" y1="3.791" x2="-3.9195" y2="3.791" width="0.1016" layer="21"/>
<wire x1="-3.9195" y1="3.791" x2="-3.8338" y2="3.8981" width="0.1016" layer="21"/>
<wire x1="-3.8338" y1="3.8981" x2="-3.8338" y2="4.1979" width="0.1016" layer="21"/>
<wire x1="-3.8338" y1="4.1979" x2="-3.7053" y2="4.3264" width="0.1016" layer="21" curve="-90"/>
<wire x1="-3.7053" y1="4.3264" x2="-2.1632" y2="4.3264" width="0.1016" layer="21"/>
<wire x1="-2.1632" y1="4.3264" x2="-2.0133" y2="4.1765" width="0.1016" layer="21" curve="-90"/>
<wire x1="-2.0133" y1="4.1765" x2="-2.0133" y2="3.8552" width="0.1016" layer="21"/>
<wire x1="-1.178" y1="3.7696" x2="-1.9276" y2="3.7696" width="0.1016" layer="21"/>
<wire x1="-1.9276" y1="3.7696" x2="-2.2917" y2="3.3412" width="0.1016" layer="21"/>
<wire x1="-2.2917" y1="3.3412" x2="-3.5982" y2="3.3412" width="0.1016" layer="21"/>
<wire x1="-3.5982" y1="3.3412" x2="-3.9409" y2="3.7696" width="0.1016" layer="21"/>
<wire x1="-1.9276" y1="3.7696" x2="-2.0133" y2="3.8552" width="0.1016" layer="21"/>
<wire x1="-1.178" y1="3.7696" x2="1.1994" y2="3.7696" width="0.1016" layer="21"/>
<wire x1="5.5687" y1="-1.3065" x2="3.9837" y2="-1.3065" width="0.1016" layer="21"/>
<pad name="M1" x="-6.57" y="2.71" drill="2.3" diameter="2.8"/>
<pad name="M2" x="6.57" y="2.71" drill="2.3" diameter="2.8"/>
<pad name="1" x="3.5" y="0" drill="0.9" diameter="1.3"/>
<pad name="2" x="1" y="0" drill="0.9" diameter="1.3"/>
<pad name="3" x="-1" y="0" drill="0.9" diameter="1.3"/>
<pad name="4" x="-3.5" y="0" drill="0.9" diameter="1.3"/>
<text x="-8.0896" y="4.9398" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-8.0896" y="-4.2602" size="1.27" layer="27" font="vector">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="USB">
<wire x1="-0.635" y1="5.588" x2="-2.159" y2="5.588" width="0.254" layer="94"/>
<wire x1="-2.159" y1="5.588" x2="-2.159" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.159" y1="5.08" x2="-2.159" y2="4.572" width="0.254" layer="94"/>
<wire x1="-2.159" y1="4.572" x2="-0.635" y2="4.572" width="0.254" layer="94"/>
<wire x1="-0.635" y1="3.048" x2="-2.159" y2="3.048" width="0.254" layer="94"/>
<wire x1="-2.159" y1="3.048" x2="-2.159" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.159" y1="2.54" x2="-2.159" y2="2.032" width="0.254" layer="94"/>
<wire x1="-2.159" y1="2.032" x2="-0.635" y2="2.032" width="0.254" layer="94"/>
<wire x1="-0.635" y1="0.508" x2="-2.159" y2="0.508" width="0.254" layer="94"/>
<wire x1="-2.159" y1="0.508" x2="-2.159" y2="0" width="0.254" layer="94"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-2.159" y1="-0.508" x2="-0.635" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-0.635" y1="-2.032" x2="-2.159" y2="-2.032" width="0.254" layer="94"/>
<wire x1="-2.159" y1="-2.032" x2="-2.159" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.159" y1="-2.54" x2="-2.159" y2="-3.048" width="0.254" layer="94"/>
<wire x1="-2.159" y1="-3.048" x2="-0.635" y2="-3.048" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.905" y2="-5.08" width="0.127" layer="94"/>
<wire x1="-1.524" y1="-5.08" x2="-0.762" y2="-5.08" width="0.127" layer="94"/>
<wire x1="-0.254" y1="-5.08" x2="0.508" y2="-5.08" width="0.127" layer="94"/>
<wire x1="0.508" y1="-5.08" x2="0.508" y2="-4.572" width="0.127" layer="94"/>
<wire x1="0.508" y1="4.826" x2="0.508" y2="5.334" width="0.127" layer="94"/>
<wire x1="0.508" y1="5.842" x2="0.508" y2="6.35" width="0.127" layer="94"/>
<wire x1="0.508" y1="6.35" x2="0" y2="6.35" width="0.127" layer="94"/>
<wire x1="-0.635" y1="6.35" x2="-1.27" y2="6.35" width="0.127" layer="94"/>
<wire x1="-1.905" y1="6.35" x2="-2.54" y2="6.35" width="0.127" layer="94"/>
<wire x1="-2.54" y1="6.35" x2="-2.54" y2="5.588" width="0.127" layer="94"/>
<wire x1="-2.54" y1="4.572" x2="-2.54" y2="3.048" width="0.127" layer="94"/>
<wire x1="-2.54" y1="2.032" x2="-2.54" y2="0.508" width="0.127" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-2.54" y2="-2.032" width="0.127" layer="94"/>
<wire x1="-2.54" y1="-3.048" x2="-2.54" y2="-5.08" width="0.127" layer="94"/>
<wire x1="2.032" y1="-2.413" x2="4.572" y2="-2.413" width="0.1998" layer="94"/>
<wire x1="4.572" y1="-2.413" x2="4.572" y2="-1.778" width="0.1998" layer="94"/>
<wire x1="4.572" y1="-1.778" x2="4.953" y2="-1.778" width="0.1998" layer="94"/>
<wire x1="4.953" y1="-1.778" x2="4.953" y2="2.032" width="0.1998" layer="94"/>
<wire x1="4.953" y1="2.032" x2="4.572" y2="2.032" width="0.1998" layer="94"/>
<wire x1="4.572" y1="2.032" x2="4.572" y2="2.794" width="0.1998" layer="94"/>
<wire x1="4.572" y1="2.794" x2="2.032" y2="2.794" width="0.1998" layer="94"/>
<wire x1="0.508" y1="3.556" x2="0.508" y2="4.064" width="0.127" layer="94"/>
<wire x1="0.508" y1="2.286" x2="0.508" y2="2.794" width="0.127" layer="94"/>
<wire x1="0.508" y1="1.016" x2="0.508" y2="1.524" width="0.127" layer="94"/>
<wire x1="0.508" y1="-0.254" x2="0.508" y2="0.254" width="0.127" layer="94"/>
<wire x1="0.508" y1="-1.524" x2="0.508" y2="-1.016" width="0.127" layer="94"/>
<wire x1="0.508" y1="-2.794" x2="0.508" y2="-2.286" width="0.127" layer="94"/>
<wire x1="0.508" y1="-4.064" x2="0.508" y2="-3.556" width="0.127" layer="94"/>
<wire x1="2.032" y1="2.794" x2="2.032" y2="2.032" width="0.1998" layer="94"/>
<wire x1="2.032" y1="2.032" x2="1.651" y2="2.032" width="0.1998" layer="94"/>
<wire x1="1.651" y1="2.032" x2="1.651" y2="-1.778" width="0.1998" layer="94"/>
<wire x1="1.651" y1="-1.778" x2="2.032" y2="-1.778" width="0.1998" layer="94"/>
<wire x1="2.032" y1="-1.778" x2="2.032" y2="-2.413" width="0.1998" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.159" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.159" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.159" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.159" y2="5.08" width="0.1524" layer="94"/>
<text x="1.27" y="5.588" size="1.778" layer="95">&gt;NAME</text>
<text x="1.27" y="-5.842" size="1.778" layer="96">&gt;VALUE</text>
<text x="3.937" y="-1.397" size="1.27" layer="94" font="vector" rot="R90">USB</text>
<pin name="1" x="-5.08" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="3" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="4" x="-5.08" y="-2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="S2" x="0" y="-7.62" visible="off" length="short" direction="pas" swaplevel="2" rot="R90"/>
<pin name="S1" x="-2.54" y="-7.62" visible="off" length="short" direction="pas" swaplevel="2" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="KUSBVX" prefix="X">
<description>&lt;b&gt;Vertical,Top Entry Universal Serial Bus Connector&lt;/b&gt; KUSBVX Series&lt;p&gt;
Source: KYCON Sibalco USB vertical socket KUSBV.pdf</description>
<gates>
<gate name="G$1" symbol="USB" x="0" y="0"/>
</gates>
<devices>
<device name="" package="KUSBVX">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="S1" pad="M1"/>
<connect gate="G$1" pin="S2" pad="M2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="5566-2">
<description>&lt;b&gt;Mini FIT connector 2 pol&lt;/b&gt;&lt;p&gt;
Source: http://www.molex.com</description>
<wire x1="-2.6" y1="4.5" x2="2.6" y2="4.5" width="0.254" layer="21"/>
<wire x1="2.6" y1="4.5" x2="2.6" y2="-2.2" width="0.254" layer="21"/>
<wire x1="2.6" y1="-3.3" x2="2.6" y2="-4.9" width="0.254" layer="21"/>
<wire x1="2.6" y1="-4.9" x2="-2.6" y2="-4.9" width="0.254" layer="21"/>
<wire x1="-2.6" y1="-4.9" x2="-2.6" y2="4.5" width="0.254" layer="21"/>
<wire x1="-6.1" y1="3.2" x2="-3.3" y2="3.2" width="0.254" layer="21" curve="-114.529547"/>
<wire x1="-6.1" y1="1.4" x2="-3.3" y2="1.4" width="0.254" layer="21" curve="114.529547"/>
<wire x1="-6.1" y1="3.2" x2="-6.1" y2="1.4" width="0.254" layer="21"/>
<wire x1="-3.4" y1="3.3" x2="-2.7" y2="3.3" width="0.254" layer="21"/>
<wire x1="-3.4" y1="1.3" x2="-2.7" y2="1.3" width="0.254" layer="21"/>
<wire x1="3.3" y1="1.4" x2="6.1" y2="1.4" width="0.254" layer="21" curve="114.529547"/>
<wire x1="3.3" y1="3.2" x2="6.1" y2="3.2" width="0.254" layer="21" curve="-114.529547"/>
<wire x1="6.1" y1="1.4" x2="6.1" y2="3.2" width="0.254" layer="21"/>
<wire x1="3.4" y1="1.3" x2="2.7" y2="1.3" width="0.254" layer="21"/>
<wire x1="3.4" y1="3.3" x2="2.7" y2="3.3" width="0.254" layer="21"/>
<wire x1="2.6" y1="-2.2" x2="2.6" y2="-3.3" width="0.254" layer="21" curve="-180"/>
<pad name="1" x="0" y="-2.75" drill="1.4" shape="square"/>
<pad name="2" x="0" y="2.75" drill="1.4" shape="square"/>
<text x="-1.27" y="5.08" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-6.35" size="1.27" layer="27">&gt;VALUE</text>
<hole x="4.7" y="2.29" drill="3"/>
<hole x="-4.7" y="2.29" drill="3"/>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="5566-2" prefix="X">
<description>&lt;b&gt;Mini FIT connector 2 pol&lt;/b&gt;&lt;p&gt;
Source: http://www.molex.com</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="2.54" addlevel="always"/>
<gate name="-2" symbol="MV" x="0" y="-2.54" addlevel="always"/>
</gates>
<devices>
<device name="" package="5566-2">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="1822072" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
We've spent an enormous amount of time creating and checking these footprints and parts. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; CC v3.0 Share-Alike You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1X07">
<wire x1="14.605" y1="1.27" x2="15.875" y2="1.27" width="0.2032" layer="21"/>
<wire x1="15.875" y1="1.27" x2="16.51" y2="0.635" width="0.2032" layer="21"/>
<wire x1="16.51" y1="-0.635" x2="15.875" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="11.43" y1="0.635" x2="12.065" y2="1.27" width="0.2032" layer="21"/>
<wire x1="12.065" y1="1.27" x2="13.335" y2="1.27" width="0.2032" layer="21"/>
<wire x1="13.335" y1="1.27" x2="13.97" y2="0.635" width="0.2032" layer="21"/>
<wire x1="13.97" y1="-0.635" x2="13.335" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="12.065" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="11.43" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="14.605" y1="1.27" x2="13.97" y2="0.635" width="0.2032" layer="21"/>
<wire x1="13.97" y1="-0.635" x2="14.605" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="15.875" y1="-1.27" x2="14.605" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.635" x2="9.525" y2="1.27" width="0.2032" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.795" y2="1.27" width="0.2032" layer="21"/>
<wire x1="10.795" y1="1.27" x2="11.43" y2="0.635" width="0.2032" layer="21"/>
<wire x1="11.43" y1="-0.635" x2="10.795" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="9.525" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="16.51" y1="0.635" x2="16.51" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5" x="10.16" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="6" x="12.7" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="7" x="15.24" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="14.986" y1="-0.254" x2="15.494" y2="0.254" layer="51"/>
<rectangle x1="12.446" y1="-0.254" x2="12.954" y2="0.254" layer="51"/>
<rectangle x1="9.906" y1="-0.254" x2="10.414" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X07_LOCK">
<wire x1="14.605" y1="1.27" x2="15.875" y2="1.27" width="0.2032" layer="21"/>
<wire x1="15.875" y1="1.27" x2="16.51" y2="0.635" width="0.2032" layer="21"/>
<wire x1="16.51" y1="-0.635" x2="15.875" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="11.43" y1="0.635" x2="12.065" y2="1.27" width="0.2032" layer="21"/>
<wire x1="12.065" y1="1.27" x2="13.335" y2="1.27" width="0.2032" layer="21"/>
<wire x1="13.335" y1="1.27" x2="13.97" y2="0.635" width="0.2032" layer="21"/>
<wire x1="13.97" y1="-0.635" x2="13.335" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="12.065" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="11.43" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="14.605" y1="1.27" x2="13.97" y2="0.635" width="0.2032" layer="21"/>
<wire x1="13.97" y1="-0.635" x2="14.605" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="15.875" y1="-1.27" x2="14.605" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.635" x2="9.525" y2="1.27" width="0.2032" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.795" y2="1.27" width="0.2032" layer="21"/>
<wire x1="10.795" y1="1.27" x2="11.43" y2="0.635" width="0.2032" layer="21"/>
<wire x1="11.43" y1="-0.635" x2="10.795" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="9.525" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="16.51" y1="0.635" x2="16.51" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5" x="10.16" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="6" x="12.7" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="7" x="15.24" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="14.986" y1="-0.254" x2="15.494" y2="0.254" layer="51"/>
<rectangle x1="12.446" y1="-0.254" x2="12.954" y2="0.254" layer="51"/>
<rectangle x1="9.906" y1="-0.254" x2="10.414" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X07_LOCK_LONGPADS">
<wire x1="1.524" y1="0" x2="1.016" y2="0" width="0.2032" layer="21"/>
<wire x1="4.064" y1="0" x2="3.556" y2="0" width="0.2032" layer="21"/>
<wire x1="6.604" y1="0" x2="6.096" y2="0" width="0.2032" layer="21"/>
<wire x1="9.144" y1="0" x2="8.636" y2="0" width="0.2032" layer="21"/>
<wire x1="11.684" y1="0" x2="11.176" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.016" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.9906" x2="-0.9906" y2="1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.9906" x2="-0.9906" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="16.51" y1="0" x2="16.256" y2="0" width="0.2032" layer="21"/>
<wire x1="16.51" y1="0" x2="16.51" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="16.51" y1="-0.9906" x2="16.2306" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="16.51" y1="0" x2="16.51" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="16.51" y1="0.9906" x2="16.2306" y2="1.27" width="0.2032" layer="21"/>
<wire x1="14.224" y1="0" x2="13.716" y2="0" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="7.62" y="-0.127" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="10.16" y="0.127" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="12.7" y="-0.127" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="15.24" y="0.127" drill="1.016" shape="long" rot="R90"/>
<text x="-1.27" y="1.905" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
<rectangle x1="4.7879" y1="-0.2921" x2="5.3721" y2="0.2921" layer="51"/>
<rectangle x1="7.3279" y1="-0.2921" x2="7.9121" y2="0.2921" layer="51" rot="R90"/>
<rectangle x1="9.8679" y1="-0.2921" x2="10.4521" y2="0.2921" layer="51"/>
<rectangle x1="12.4079" y1="-0.2921" x2="12.9921" y2="0.2921" layer="51"/>
<rectangle x1="14.9479" y1="-0.2921" x2="15.5321" y2="0.2921" layer="51"/>
</package>
<package name="1X07_LONGPADS">
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="16.51" y1="0.635" x2="16.51" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" shape="long" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" shape="long" rot="R90"/>
<pad name="5" x="10.16" y="0" drill="1.016" diameter="1.8796" shape="long" rot="R90"/>
<pad name="6" x="12.7" y="0" drill="1.016" diameter="1.8796" shape="long" rot="R90"/>
<pad name="7" x="15.24" y="0" drill="1.016" diameter="1.8796" shape="long" rot="R90"/>
<text x="-1.3462" y="2.4638" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="14.986" y1="-0.254" x2="15.494" y2="0.254" layer="51"/>
<rectangle x1="12.446" y1="-0.254" x2="12.954" y2="0.254" layer="51"/>
<rectangle x1="9.906" y1="-0.254" x2="10.414" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<hole x="0" y="0" drill="1.016"/>
<hole x="2.54" y="0" drill="1.016"/>
<hole x="5.08" y="0" drill="1.016"/>
<hole x="7.62" y="0" drill="1.016"/>
<hole x="10.16" y="0" drill="1.016"/>
<hole x="12.7" y="0" drill="1.016"/>
<hole x="15.24" y="0" drill="1.016"/>
</package>
<package name="1X07_HOLES_ONLY">
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="2.54" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="5.08" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="7.62" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="10.16" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="12.7" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="15.24" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<pad name="5" x="10.16" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<pad name="6" x="12.7" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<pad name="7" x="15.24" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<hole x="0" y="0" drill="1.4732"/>
<hole x="2.54" y="0" drill="1.4732"/>
<hole x="5.08" y="0" drill="1.4732"/>
<hole x="7.62" y="0" drill="1.4732"/>
<hole x="10.16" y="0" drill="1.4732"/>
<hole x="12.7" y="0" drill="1.4732"/>
<hole x="15.24" y="0" drill="1.4732"/>
</package>
</packages>
<symbols>
<symbol name="M07">
<wire x1="1.27" y1="-7.62" x2="-5.08" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="0" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="0" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="-5.08" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="1.27" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="1.27" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="0" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="0" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="10.16" x2="0" y2="10.16" width="0.6096" layer="94"/>
<text x="-5.08" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-5.08" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="5.08" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="5.08" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="5.08" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="5.08" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M07" prefix="JP" uservalue="yes">
<description>&lt;b&gt;Header 7&lt;/b&gt;
Standard 7-pin 0.1" header. Use with straight break away headers (SKU : PRT-00116), right angle break away headers (PRT-00553), swiss pins (PRT-00743), machine pins (PRT-00117), and female headers (PRT-00115).  NOTES ON THE VARIANTS LOCK and LOCK_LONGPADS... This footprint was designed to help hold the alignment of a through-hole component (i.e. 7-pin header) while soldering it into place. You may notice that each hole has been shifted either up or down by 0.005 of an inch from it's more standard position (which is usually a perfectly straight line). This slight alteration caused the pins (the squares in the middle) to touch the edges of the holes. Because they are alternating, it causes a "brace" to hold the header in place. 0.005 has proven to be the perfect amount of "off-center" position when using our standard breakaway headers. Although looks a little odd when you look at the bare footprint, once you have a header in there, the alteration is very hard to notice. Also, if you push a header all the way into place, it is covered up entirely on the bottom side. This idea of altering the position of holes to aid alignment will be further integrated into the Sparkfun Library for other footprints. It can help hold any component with 3 or more connection pins.</description>
<gates>
<gate name="G$1" symbol="M07" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="1X07">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK" package="1X07_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X07_LOCK_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LONGPADS" package="1X07_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POGOPINS_HOLES_ONLY" package="1X07_HOLES_ONLY">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
</connects>
<technologies>
<technology name=""/>
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
<part name="FRAME1" library="frames" deviceset="A4L-LOC" device=""/>
<part name="U$1" library="equinox" deviceset="EQUINOX_LOGO_SMALL" device=""/>
<part name="U$2" library="equinox" deviceset="KYCON_KLDVX-0202" device=""/>
<part name="U$3" library="equinox" deviceset="KYCON_KLDVX-0202" device=""/>
<part name="U$4" library="equinox" deviceset="KYCON_KLDVX-0202" device=""/>
<part name="X1" library="con-kycon" deviceset="KUSBVX" device=""/>
<part name="X2" library="con-kycon" deviceset="KUSBVX" device=""/>
<part name="X3" library="con-molex" deviceset="5566-2" device=""/>
<part name="DIS1" library="equinox" deviceset="LCD_16X2_R2" device=""/>
<part name="JP1" library="SparkFun" deviceset="M07" device=""/>
<part name="U$5" library="equinox" deviceset="STM32F050C6T6A" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="U$1" gate="G$1" x="187.96" y="12.7"/>
<instance part="U$2" gate="G$1" x="195.58" y="134.62"/>
<instance part="U$3" gate="G$1" x="195.58" y="119.38"/>
<instance part="U$4" gate="G$1" x="195.58" y="104.14"/>
<instance part="X1" gate="G$1" x="198.12" y="81.28"/>
<instance part="X2" gate="G$1" x="198.12" y="58.42"/>
<instance part="X3" gate="-1" x="76.2" y="137.16" rot="MR0"/>
<instance part="X3" gate="-2" x="76.2" y="132.08" rot="MR0"/>
<instance part="DIS1" gate="G$1" x="38.1" y="147.32"/>
<instance part="JP1" gate="G$1" x="165.1" y="45.72"/>
<instance part="U$5" gate="G$1" x="73.66" y="60.96"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PAD1"/>
<pinref part="U$3" gate="G$1" pin="PAD1"/>
<wire x1="182.88" y1="137.16" x2="187.96" y2="137.16" width="0.1524" layer="91"/>
<wire x1="187.96" y1="121.92" x2="182.88" y2="121.92" width="0.1524" layer="91"/>
<wire x1="182.88" y1="121.92" x2="182.88" y2="137.16" width="0.1524" layer="91"/>
<wire x1="182.88" y1="106.68" x2="182.88" y2="121.92" width="0.1524" layer="91"/>
<junction x="182.88" y="121.92"/>
<pinref part="U$4" gate="G$1" pin="PAD1"/>
<wire x1="182.88" y1="106.68" x2="187.96" y2="106.68" width="0.1524" layer="91"/>
<pinref part="X3" gate="-1" pin="S"/>
<wire x1="78.74" y1="137.16" x2="182.88" y2="137.16" width="0.1524" layer="91"/>
<junction x="182.88" y="137.16"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X3" gate="-2" pin="S"/>
<pinref part="U$2" gate="G$1" pin="PAD2"/>
<wire x1="78.74" y1="132.08" x2="185.42" y2="132.08" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="PAD3"/>
<wire x1="185.42" y1="132.08" x2="187.96" y2="132.08" width="0.1524" layer="91"/>
<wire x1="187.96" y1="134.62" x2="185.42" y2="134.62" width="0.1524" layer="91"/>
<wire x1="185.42" y1="134.62" x2="185.42" y2="132.08" width="0.1524" layer="91"/>
<junction x="185.42" y="132.08"/>
<wire x1="185.42" y1="132.08" x2="185.42" y2="119.38" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="PAD3"/>
<wire x1="185.42" y1="119.38" x2="187.96" y2="119.38" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="PAD2"/>
<wire x1="187.96" y1="116.84" x2="185.42" y2="116.84" width="0.1524" layer="91"/>
<wire x1="185.42" y1="116.84" x2="185.42" y2="119.38" width="0.1524" layer="91"/>
<junction x="185.42" y="119.38"/>
<pinref part="U$4" gate="G$1" pin="PAD3"/>
<wire x1="187.96" y1="104.14" x2="185.42" y2="104.14" width="0.1524" layer="91"/>
<wire x1="185.42" y1="104.14" x2="185.42" y2="116.84" width="0.1524" layer="91"/>
<junction x="185.42" y="116.84"/>
<pinref part="U$4" gate="G$1" pin="PAD2"/>
<wire x1="187.96" y1="101.6" x2="185.42" y2="101.6" width="0.1524" layer="91"/>
<wire x1="185.42" y1="101.6" x2="185.42" y2="104.14" width="0.1524" layer="91"/>
<junction x="185.42" y="104.14"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
