<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
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
<layer number="21" name="tPlace" color="15" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="14" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="7" fill="1" visible="yes" active="yes"/>
<layer number="114" name="Badge_Outline" color="7" fill="1" visible="yes" active="yes"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="SparkFun-DigitalIC">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find all manner of digital ICs- microcontrollers, memory chips, logic chips, FPGAs, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="DIL16">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.3048" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="-1.016" x2="-10.16" y2="1.016" width="0.3048" layer="21" curve="180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO16">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.699" y1="1.9558" x2="-4.699" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.9558" x2="5.08" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="1.9558" x2="-5.08" y2="1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="5.08" y1="1.5748" x2="4.699" y2="1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.5748" x2="-4.699" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="-1.9558" x2="4.699" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.5748" x2="5.08" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.5748" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="0.508" width="0.1524" layer="21" curve="180"/>
<wire x1="-5.08" y1="-1.6002" x2="5.08" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-4.445" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="2" x="-3.175" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="3" x="-1.905" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="4" x="-0.635" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="5" x="0.635" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="6" x="1.905" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="7" x="3.175" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="8" x="4.445" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="9" x="4.445" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="10" x="3.175" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="11" x="1.905" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="12" x="0.635" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="13" x="-0.635" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="14" x="-1.905" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="15" x="-3.175" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="16" x="-4.445" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<text x="-4.064" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.461" y="-1.778" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.889" y1="1.9558" x2="-0.381" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="-3.0988" x2="-4.191" y2="-1.9558" layer="51"/>
<rectangle x1="-3.429" y1="-3.0988" x2="-2.921" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="-3.0734" x2="-1.651" y2="-1.9304" layer="51"/>
<rectangle x1="-0.889" y1="-3.0988" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="1.9558" x2="-1.651" y2="3.0988" layer="51"/>
<rectangle x1="-3.429" y1="1.9558" x2="-2.921" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="1.9558" x2="-4.191" y2="3.0988" layer="51"/>
<rectangle x1="0.381" y1="-3.0988" x2="0.889" y2="-1.9558" layer="51"/>
<rectangle x1="1.651" y1="-3.0988" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="2.921" y1="-3.0988" x2="3.429" y2="-1.9558" layer="51"/>
<rectangle x1="4.191" y1="-3.0988" x2="4.699" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="1.9558" x2="0.889" y2="3.0988" layer="51"/>
<rectangle x1="1.651" y1="1.9558" x2="2.159" y2="3.0988" layer="51"/>
<rectangle x1="2.921" y1="1.9558" x2="3.429" y2="3.0988" layer="51"/>
<rectangle x1="4.191" y1="1.9558" x2="4.699" y2="3.0988" layer="51"/>
</package>
<package name="LCC20">
<description>&lt;b&gt;Leadless Chip Carrier&lt;/b&gt;&lt;p&gt; Ceramic Package</description>
<wire x1="-0.4001" y1="4.4" x2="-0.87" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="4.3985" x2="0.4001" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.3985" x2="-0.8699" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="2.14" x2="-4.3985" y2="2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="-2.9401" y1="4.4" x2="-3.3" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.4" x2="0.4001" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.3985" x2="1.67" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="3.3" x2="-4.4" y2="2.9401" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="2.14" x2="-4.4" y2="1.6701" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="0.87" x2="-4.3985" y2="1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-0.4001" x2="-4.3985" y2="0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-1.6701" x2="-4.3985" y2="-0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="0.87" x2="-4.4" y2="0.4001" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-0.4001" x2="-4.4" y2="-0.87" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-2.9401" x2="-4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-4.4" y2="-4.4099" width="0.2032" layer="51"/>
<wire x1="2.14" y1="4.3985" x2="2.94" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="2.14" y1="4.4" x2="1.6701" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="4.4" x2="2.9401" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.4001" y1="-4.4" x2="0.87" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="0.4001" y1="-4.3985" x2="-0.4001" y2="-4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="1.67" y1="-4.3985" x2="0.87" y2="-4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="2.9401" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.87" y1="-4.4" x2="-0.4001" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.8699" y1="-4.3985" x2="-1.6701" y2="-4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-2.1399" y1="-4.3985" x2="-2.9401" y2="-4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-2.14" y1="-4.4" x2="-1.6701" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-2.9401" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="0.4001" x2="4.4" y2="0.87" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="0.4001" x2="4.3985" y2="-0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="1.6701" x2="4.3985" y2="0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="2.9401" x2="4.4" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-0.87" x2="4.4" y2="-0.4001" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="-0.87" x2="4.3985" y2="-1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="-2.14" x2="4.3985" y2="-2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="-2.14" x2="4.4" y2="-1.6701" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-2.9401" width="0.2032" layer="51"/>
<wire x1="-2.9401" y1="4.3985" x2="-2.1399" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.4" x2="-2.14" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="-2.9401" x2="-4.3985" y2="-2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="-1.6701" x2="-4.4" y2="-2.14" width="0.2032" layer="51"/>
<wire x1="1.6701" y1="-4.4" x2="2.14" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="2.94" y1="-4.3985" x2="2.14" y2="-4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="2.9401" x2="4.3985" y2="2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="1.6701" x2="4.4" y2="2.14" width="0.2032" layer="51"/>
<smd name="1" x="0" y="3.8001" dx="0.8" dy="3.4" layer="1"/>
<smd name="2" x="-1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="3" x="-2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="4" x="-4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="5" x="-4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="6" x="-4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="7" x="-4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="8" x="-4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="9" x="-2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="10" x="-1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="11" x="0" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="12" x="1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="13" x="2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="14" x="4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="15" x="4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="16" x="4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="17" x="4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="18" x="4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="19" x="2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="20" x="1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<text x="-3.4971" y="5.811" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.9751" y="-7.6871" size="1.778" layer="27">&gt;VALUE</text>
</package>
<package name="TSSOP16">
<description>&lt;b&gt;TSOP16&lt;/b&gt;&lt;p&gt;
thin small outline package</description>
<wire x1="3.1" y1="-2.4" x2="-3" y2="-2.4" width="0.2032" layer="51"/>
<wire x1="-3" y1="2.6" x2="3.1" y2="2.6" width="0.2032" layer="51"/>
<wire x1="3.1" y1="-2.4" x2="3.1" y2="2.6" width="0.2032" layer="51"/>
<wire x1="-3" y1="2.6" x2="-2.8" y2="2.6" width="0.2032" layer="21"/>
<wire x1="-3" y1="2.6" x2="-3" y2="0.5" width="0.2032" layer="21"/>
<wire x1="-3" y1="-0.5" x2="-3" y2="-2.4" width="0.2032" layer="21"/>
<wire x1="-3" y1="-2.4" x2="-2.8" y2="-2.4" width="0.2032" layer="21"/>
<wire x1="2.9" y1="-2.4" x2="3.1" y2="-2.4" width="0.2032" layer="21"/>
<wire x1="3.1" y1="-2.4" x2="3.1" y2="2.6" width="0.2032" layer="21"/>
<wire x1="3.1" y1="2.6" x2="2.9" y2="2.6" width="0.2032" layer="21"/>
<wire x1="-3" y1="0.5" x2="-3" y2="-0.5" width="0.2032" layer="21" curve="-180"/>
<smd name="1" x="-2.225" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="2" x="-1.575" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="3" x="-0.925" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="4" x="-0.275" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="5" x="0.375" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="6" x="1.025" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="7" x="1.675" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="8" x="2.325" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="9" x="2.325" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="10" x="1.675" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="11" x="1.025" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="12" x="0.375" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="13" x="-0.275" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="14" x="-0.925" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="15" x="-1.575" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="16" x="-2.225" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<text x="-1.524" y="-1.27" size="0.6096" layer="25">&gt;NAME</text>
<text x="-1.524" y="0.889" size="0.6096" layer="27">&gt;VALUE</text>
<rectangle x1="-2.425" y1="-3.3501" x2="-2.0249" y2="-2.5299" layer="51"/>
<rectangle x1="-1.775" y1="-3.3501" x2="-1.3749" y2="-2.5299" layer="51"/>
<rectangle x1="-1.125" y1="-3.3501" x2="-0.725" y2="-2.5299" layer="51"/>
<rectangle x1="-0.475" y1="-3.3501" x2="-0.075" y2="-2.5299" layer="51"/>
<rectangle x1="0.175" y1="-3.3501" x2="0.575" y2="-2.5299" layer="51"/>
<rectangle x1="0.825" y1="-3.3501" x2="1.225" y2="-2.5299" layer="51"/>
<rectangle x1="1.4749" y1="-3.3501" x2="1.875" y2="-2.5299" layer="51"/>
<rectangle x1="2.1249" y1="-3.3501" x2="2.525" y2="-2.5299" layer="51"/>
<rectangle x1="2.1249" y1="2.7299" x2="2.525" y2="3.5501" layer="51"/>
<rectangle x1="1.4749" y1="2.7299" x2="1.875" y2="3.5501" layer="51"/>
<rectangle x1="0.825" y1="2.7299" x2="1.225" y2="3.5501" layer="51"/>
<rectangle x1="0.175" y1="2.7299" x2="0.575" y2="3.5501" layer="51"/>
<rectangle x1="-0.475" y1="2.7299" x2="-0.075" y2="3.5501" layer="51"/>
<rectangle x1="-1.125" y1="2.7299" x2="-0.725" y2="3.5501" layer="51"/>
<rectangle x1="-1.775" y1="2.7299" x2="-1.3749" y2="3.5501" layer="51"/>
<rectangle x1="-2.425" y1="2.7299" x2="-2.0249" y2="3.5501" layer="51"/>
<rectangle x1="-2.425" y1="-3.3501" x2="-2.0249" y2="-2.5299" layer="51"/>
<rectangle x1="-1.775" y1="-3.3501" x2="-1.3749" y2="-2.5299" layer="51"/>
<rectangle x1="-1.125" y1="-3.3501" x2="-0.725" y2="-2.5299" layer="51"/>
<rectangle x1="-0.475" y1="-3.3501" x2="-0.075" y2="-2.5299" layer="51"/>
<rectangle x1="0.175" y1="-3.3501" x2="0.575" y2="-2.5299" layer="51"/>
<rectangle x1="0.825" y1="-3.3501" x2="1.225" y2="-2.5299" layer="51"/>
<rectangle x1="1.4749" y1="-3.3501" x2="1.875" y2="-2.5299" layer="51"/>
<rectangle x1="2.1249" y1="-3.3501" x2="2.525" y2="-2.5299" layer="51"/>
<rectangle x1="2.1249" y1="2.7299" x2="2.525" y2="3.5501" layer="51"/>
<rectangle x1="1.4749" y1="2.7299" x2="1.875" y2="3.5501" layer="51"/>
<rectangle x1="0.825" y1="2.7299" x2="1.225" y2="3.5501" layer="51"/>
<rectangle x1="0.175" y1="2.7299" x2="0.575" y2="3.5501" layer="51"/>
<rectangle x1="-0.475" y1="2.7299" x2="-0.075" y2="3.5501" layer="51"/>
<rectangle x1="-1.125" y1="2.7299" x2="-0.725" y2="3.5501" layer="51"/>
<rectangle x1="-1.775" y1="2.7299" x2="-1.3749" y2="3.5501" layer="51"/>
<rectangle x1="-2.425" y1="2.7299" x2="-2.0249" y2="3.5501" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="74595">
<wire x1="-5.08" y1="-15.24" x2="10.16" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="10.16" y2="12.7" width="0.4064" layer="94"/>
<wire x1="10.16" y1="12.7" x2="-5.08" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="-5.08" y2="-15.24" width="0.4064" layer="94"/>
<text x="-5.08" y="13.335" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="QB" x="15.24" y="5.08" length="middle" direction="hiz" rot="R180"/>
<pin name="QC" x="15.24" y="2.54" length="middle" direction="hiz" rot="R180"/>
<pin name="QD" x="15.24" y="0" length="middle" direction="hiz" rot="R180"/>
<pin name="QE" x="15.24" y="-2.54" length="middle" direction="hiz" rot="R180"/>
<pin name="QF" x="15.24" y="-5.08" length="middle" direction="hiz" rot="R180"/>
<pin name="QG" x="15.24" y="-7.62" length="middle" direction="hiz" rot="R180"/>
<pin name="QH" x="15.24" y="-10.16" length="middle" direction="hiz" rot="R180"/>
<pin name="SCL" x="-10.16" y="2.54" length="middle" direction="in" function="dot"/>
<pin name="SCK" x="-10.16" y="5.08" length="middle" direction="in" function="clk"/>
<pin name="RCK" x="-10.16" y="-2.54" length="middle" direction="in" function="clk"/>
<pin name="G" x="-10.16" y="-7.62" length="middle" direction="in" function="dot"/>
<pin name="SER" x="-10.16" y="10.16" length="middle" direction="in"/>
<pin name="QA" x="15.24" y="7.62" length="middle" direction="hiz" rot="R180"/>
<pin name="QH*" x="15.24" y="-12.7" length="middle" direction="hiz" rot="R180"/>
<pin name="GND" x="-10.16" y="-12.7" length="middle" direction="pwr"/>
<pin name="VCC" x="15.24" y="10.16" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*595" prefix="IC">
<description>8-bit &lt;b&gt;SHIFT REGISTER&lt;/b&gt;, output latch</description>
<gates>
<gate name="A" symbol="74595" x="22.86" y="0"/>
</gates>
<devices>
<device name="N" package="DIL16">
<connects>
<connect gate="A" pin="G" pad="13"/>
<connect gate="A" pin="GND" pad="8"/>
<connect gate="A" pin="QA" pad="15"/>
<connect gate="A" pin="QB" pad="1"/>
<connect gate="A" pin="QC" pad="2"/>
<connect gate="A" pin="QD" pad="3"/>
<connect gate="A" pin="QE" pad="4"/>
<connect gate="A" pin="QF" pad="5"/>
<connect gate="A" pin="QG" pad="6"/>
<connect gate="A" pin="QH" pad="7"/>
<connect gate="A" pin="QH*" pad="9"/>
<connect gate="A" pin="RCK" pad="12"/>
<connect gate="A" pin="SCK" pad="11"/>
<connect gate="A" pin="SCL" pad="10"/>
<connect gate="A" pin="SER" pad="14"/>
<connect gate="A" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="LS"/>
</technologies>
</device>
<device name="D" package="SO16">
<connects>
<connect gate="A" pin="G" pad="13"/>
<connect gate="A" pin="GND" pad="8"/>
<connect gate="A" pin="QA" pad="15"/>
<connect gate="A" pin="QB" pad="1"/>
<connect gate="A" pin="QC" pad="2"/>
<connect gate="A" pin="QD" pad="3"/>
<connect gate="A" pin="QE" pad="4"/>
<connect gate="A" pin="QF" pad="5"/>
<connect gate="A" pin="QG" pad="6"/>
<connect gate="A" pin="QH" pad="7"/>
<connect gate="A" pin="QH*" pad="9"/>
<connect gate="A" pin="RCK" pad="12"/>
<connect gate="A" pin="SCK" pad="11"/>
<connect gate="A" pin="SCL" pad="10"/>
<connect gate="A" pin="SER" pad="14"/>
<connect gate="A" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="LS">
<attribute name="PROD_ID" value="IC-07875" constant="no"/>
</technology>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="G" pad="17"/>
<connect gate="A" pin="GND" pad="10"/>
<connect gate="A" pin="QA" pad="19"/>
<connect gate="A" pin="QB" pad="2"/>
<connect gate="A" pin="QC" pad="3"/>
<connect gate="A" pin="QD" pad="4"/>
<connect gate="A" pin="QE" pad="5"/>
<connect gate="A" pin="QF" pad="7"/>
<connect gate="A" pin="QG" pad="8"/>
<connect gate="A" pin="QH" pad="9"/>
<connect gate="A" pin="QH*" pad="12"/>
<connect gate="A" pin="RCK" pad="15"/>
<connect gate="A" pin="SCK" pad="14"/>
<connect gate="A" pin="SCL" pad="13"/>
<connect gate="A" pin="SER" pad="18"/>
<connect gate="A" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="LS"/>
</technologies>
</device>
<device name="" package="TSSOP16">
<connects>
<connect gate="A" pin="G" pad="13"/>
<connect gate="A" pin="GND" pad="8"/>
<connect gate="A" pin="QA" pad="15"/>
<connect gate="A" pin="QB" pad="1"/>
<connect gate="A" pin="QC" pad="2"/>
<connect gate="A" pin="QD" pad="3"/>
<connect gate="A" pin="QE" pad="4"/>
<connect gate="A" pin="QF" pad="5"/>
<connect gate="A" pin="QG" pad="6"/>
<connect gate="A" pin="QH" pad="7"/>
<connect gate="A" pin="QH*" pad="9"/>
<connect gate="A" pin="RCK" pad="12"/>
<connect gate="A" pin="SCK" pad="11"/>
<connect gate="A" pin="SCL" pad="10"/>
<connect gate="A" pin="SER" pad="14"/>
<connect gate="A" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Connectors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find connectors and sockets- basically anything that can be plugged into or onto.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1X05">
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
<wire x1="11.43" y1="0.635" x2="11.43" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5" x="10.16" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="9.906" y1="-0.254" x2="10.414" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X05-1.27MM">
<description>Header for OS4000-T</description>
<wire x1="-0.381" y1="-0.889" x2="0.381" y2="-0.889" width="0.127" layer="21"/>
<wire x1="0.381" y1="-0.889" x2="0.635" y2="-0.635" width="0.127" layer="21"/>
<wire x1="0.635" y1="-0.635" x2="0.889" y2="-0.889" width="0.127" layer="21"/>
<wire x1="0.889" y1="-0.889" x2="1.651" y2="-0.889" width="0.127" layer="21"/>
<wire x1="1.651" y1="-0.889" x2="1.905" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.905" y1="-0.635" x2="2.159" y2="-0.889" width="0.127" layer="21"/>
<wire x1="2.159" y1="-0.889" x2="2.921" y2="-0.889" width="0.127" layer="21"/>
<wire x1="2.921" y1="-0.889" x2="3.175" y2="-0.635" width="0.127" layer="21"/>
<wire x1="3.175" y1="-0.635" x2="3.429" y2="-0.889" width="0.127" layer="21"/>
<wire x1="3.429" y1="-0.889" x2="4.191" y2="-0.889" width="0.127" layer="21"/>
<wire x1="4.191" y1="-0.889" x2="4.445" y2="-0.635" width="0.127" layer="21"/>
<wire x1="4.445" y1="-0.635" x2="4.699" y2="-0.889" width="0.127" layer="21"/>
<wire x1="4.699" y1="-0.889" x2="5.461" y2="-0.889" width="0.127" layer="21"/>
<wire x1="5.461" y1="0.889" x2="4.699" y2="0.889" width="0.127" layer="21"/>
<wire x1="4.699" y1="0.889" x2="4.445" y2="0.635" width="0.127" layer="21"/>
<wire x1="4.445" y1="0.635" x2="4.191" y2="0.889" width="0.127" layer="21"/>
<wire x1="4.191" y1="0.889" x2="3.429" y2="0.889" width="0.127" layer="21"/>
<wire x1="3.429" y1="0.889" x2="3.175" y2="0.635" width="0.127" layer="21"/>
<wire x1="3.175" y1="0.635" x2="2.921" y2="0.889" width="0.127" layer="21"/>
<wire x1="2.921" y1="0.889" x2="2.159" y2="0.889" width="0.127" layer="21"/>
<wire x1="2.159" y1="0.889" x2="1.905" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.905" y1="0.635" x2="1.651" y2="0.889" width="0.127" layer="21"/>
<wire x1="1.651" y1="0.889" x2="0.889" y2="0.889" width="0.127" layer="21"/>
<wire x1="0.889" y1="0.889" x2="0.635" y2="0.635" width="0.127" layer="21"/>
<wire x1="0.635" y1="0.635" x2="0.381" y2="0.889" width="0.127" layer="21"/>
<wire x1="0.381" y1="0.889" x2="-0.381" y2="0.889" width="0.127" layer="21"/>
<wire x1="-0.381" y1="0.889" x2="-0.889" y2="0.381" width="0.127" layer="21"/>
<wire x1="-0.889" y1="-0.381" x2="-0.381" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-0.889" y1="0.381" x2="-0.889" y2="-0.381" width="0.127" layer="21"/>
<wire x1="5.461" y1="0.889" x2="5.969" y2="0.381" width="0.127" layer="21"/>
<wire x1="5.969" y1="0.381" x2="5.969" y2="-0.381" width="0.127" layer="21"/>
<wire x1="5.969" y1="-0.381" x2="5.461" y2="-0.889" width="0.127" layer="21"/>
<pad name="5" x="5.08" y="0" drill="0.508" diameter="1"/>
<pad name="4" x="3.81" y="0" drill="0.508" diameter="1"/>
<pad name="3" x="2.54" y="0" drill="0.508" diameter="1"/>
<pad name="2" x="1.27" y="0" drill="0.508" diameter="1"/>
<pad name="1" x="0" y="0" drill="0.508" diameter="1"/>
<text x="-0.508" y="1.27" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.508" y="-1.651" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X05_LOCK">
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
<wire x1="11.43" y1="0.635" x2="11.43" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5" x="10.16" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="9.906" y1="-0.254" x2="10.414" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X05_LOCK_LONGPADS">
<description>This footprint was designed to help hold the alignment of a through-hole component (i.e.  6-pin header) while soldering it into place.  
You may notice that each hole has been shifted either up or down by 0.005 of an inch from it's more standard position (which is a perfectly straight line).  
This slight alteration caused the pins (the squares in the middle) to touch the edges of the holes.  Because they are alternating, it causes a "brace" 
to hold the component in place.  0.005 has proven to be the perfect amount of "off-center" position when using our standard breakaway headers.
Although looks a little odd when you look at the bare footprint, once you have a header in there, the alteration is very hard to notice.  Also,
if you push a header all the way into place, it is covered up entirely on the bottom side.  This idea of altering the position of holes to aid alignment 
will be further integrated into the Sparkfun Library for other footprints.  It can help hold any component with 3 or more connection pins.</description>
<wire x1="1.524" y1="-0.127" x2="1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="4.064" y1="-0.127" x2="3.556" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="6.604" y1="-0.127" x2="6.096" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="9.144" y1="-0.127" x2="8.636" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.8636" x2="-0.9906" y2="1.143" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.1176" x2="-0.9906" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="11.43" y1="-0.127" x2="11.176" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="11.43" y1="-0.127" x2="11.43" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="11.43" y1="-1.1176" x2="11.1506" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="11.43" y1="-0.127" x2="11.43" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="11.43" y1="0.8636" x2="11.1506" y2="1.143" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="-0.254" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="7.62" y="-0.254" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="10.16" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-1.27" y="1.778" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-1.27" y="-3.302" size="1.27" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.4191" x2="0.2921" y2="0.1651" layer="51"/>
<rectangle x1="2.2479" y1="-0.4191" x2="2.8321" y2="0.1651" layer="51"/>
<rectangle x1="4.7879" y1="-0.4191" x2="5.3721" y2="0.1651" layer="51"/>
<rectangle x1="7.3279" y1="-0.4191" x2="7.9121" y2="0.1651" layer="51" rot="R90"/>
<rectangle x1="9.8679" y1="-0.4191" x2="10.4521" y2="0.1651" layer="51"/>
</package>
<package name="1X05_LONGPADS">
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="11.43" y1="0.635" x2="11.43" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="5" x="10.16" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="9.906" y1="-0.254" x2="10.414" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X05-1MM">
<wire x1="2" y1="2.921" x2="-2.08" y2="2.921" width="0.254" layer="21"/>
<wire x1="3.778" y1="0.762" x2="3.778" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-2.842" y1="-0.635" x2="-3.858" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-3.858" y1="-0.635" x2="-3.858" y2="0.762" width="0.254" layer="21"/>
<wire x1="3.778" y1="-0.635" x2="2.762" y2="-0.635" width="0.254" layer="21"/>
<smd name="NC2" x="3.3" y="2.225" dx="1.2" dy="1.8" layer="1" rot="R180"/>
<smd name="NC1" x="-3.3" y="2.225" dx="1.2" dy="1.8" layer="1" rot="R180"/>
<smd name="5" x="2" y="0" dx="0.6" dy="1.55" layer="1" rot="R180"/>
<smd name="4" x="1" y="0" dx="0.6" dy="1.55" layer="1" rot="R180"/>
<smd name="3" x="0" y="0" dx="0.6" dy="1.55" layer="1" rot="R180"/>
<smd name="2" x="-1" y="0" dx="0.6" dy="1.55" layer="1" rot="R180"/>
<smd name="1" x="-2" y="0" dx="0.6" dy="1.55" layer="1" rot="R180"/>
<text x="1.73" y="-1.73" size="0.4064" layer="25">&gt;NAME</text>
<text x="-3.46" y="-1.73" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X05-1MM-RA">
<wire x1="-2" y1="-4.6" x2="2" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-3.5" y1="-2" x2="-3.5" y2="-0.35" width="0.254" layer="21"/>
<wire x1="2.75" y1="-0.35" x2="3.5" y2="-0.35" width="0.254" layer="21"/>
<wire x1="3.5" y1="-0.35" x2="3.5" y2="-2" width="0.254" layer="21"/>
<wire x1="-3.5" y1="-0.35" x2="-2.75" y2="-0.35" width="0.254" layer="21"/>
<circle x="-3" y="0.3" radius="0.1414" width="0.4" layer="21"/>
<smd name="NC2" x="-3.3" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="NC1" x="3.3" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="1" x="-2" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="2" x="-1" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="3" x="0" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="4" x="1" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="5" x="2" y="0" dx="0.6" dy="1.35" layer="1"/>
<text x="-3.27" y="1.27" size="0.4064" layer="25">&gt;NAME</text>
<text x="1.54" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X05_NO_SILK">
<description>No outline in silkscreen</description>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5" x="10.16" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="9.906" y1="-0.254" x2="10.414" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="JST-5-PTH">
<pad name="1" x="-4" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="-2" y="0" drill="0.7" diameter="1.6"/>
<pad name="3" x="0" y="0" drill="0.7" diameter="1.6"/>
<pad name="4" x="2" y="0" drill="0.7" diameter="1.6"/>
<text x="-3.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-3.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<pad name="5" x="4" y="0" drill="0.7" diameter="1.6"/>
<wire x1="-5.95" y1="-1.6" x2="-5.95" y2="6" width="0.2032" layer="21"/>
<wire x1="-5.95" y1="6" x2="5.95" y2="6" width="0.2032" layer="21"/>
<wire x1="5.95" y1="6" x2="5.95" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-5.95" y1="-1.6" x2="-5.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="5.95" y1="-1.6" x2="5.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-5.3" y1="-1.6" x2="-5.3" y2="0" width="0.2032" layer="21"/>
<wire x1="5.3" y1="-1.6" x2="5.3" y2="0" width="0.2032" layer="21"/>
</package>
<package name="JST-5-PTH-VERT">
<wire x1="-5.95" y1="-1.52" x2="-5.95" y2="2.98" width="0.2032" layer="21"/>
<wire x1="-5.95" y1="2.98" x2="5.95" y2="2.98" width="0.2032" layer="21"/>
<wire x1="5.95" y1="-1.52" x2="1" y2="-1.52" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.52" x2="-5.95" y2="-1.52" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.02" x2="1" y2="-1.02" width="0.2032" layer="21"/>
<wire x1="1" y1="-1.02" x2="1" y2="-1.52" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.02" x2="-1" y2="-1.52" width="0.2032" layer="21"/>
<wire x1="5.95" y1="2.98" x2="5.95" y2="-1.52" width="0.2032" layer="21"/>
<pad name="1" x="-4" y="0.18" drill="0.7" diameter="1.6"/>
<pad name="2" x="-2" y="0.18" drill="0.7" diameter="1.6"/>
<pad name="3" x="0" y="0.18" drill="0.7" diameter="1.6"/>
<pad name="4" x="2" y="0.18" drill="0.7" diameter="1.6"/>
<text x="-4" y="3.73" size="0.4064" layer="25">&gt;Name</text>
<text x="0" y="3.73" size="0.4064" layer="27">&gt;Value</text>
<pad name="5" x="4" y="0.18" drill="0.7" diameter="1.6"/>
</package>
<package name="SCREWTERMINAL-3.5MM-5">
<wire x1="-1.75" y1="3.4" x2="15.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="15.75" y1="3.4" x2="15.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="15.75" y1="-2.8" x2="15.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="15.75" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="15.75" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.25" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-1.35" x2="-2.25" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="15.75" y1="3.15" x2="16.25" y2="3.15" width="0.2032" layer="51"/>
<wire x1="16.25" y1="3.15" x2="16.25" y2="2.15" width="0.2032" layer="51"/>
<wire x1="16.25" y1="2.15" x2="15.75" y2="2.15" width="0.2032" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<pad name="3" x="7" y="0" drill="1.2" diameter="2.032"/>
<pad name="4" x="10.5" y="0" drill="1.2" diameter="2.032"/>
<pad name="5" x="14" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="M05">
<wire x1="3.81" y1="-7.62" x2="-2.54" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<text x="-2.54" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M05" prefix="J" uservalue="yes">
<description>&lt;b&gt;Header 5&lt;/b&gt;
Standard 5-pin 0.1" header. Use with straight break away headers (SKU : PRT-00116), right angle break away headers (PRT-00553), swiss pins (PRT-00743), machine pins (PRT-00117), and female headers (PRT-00115). Molex polarized connector foot print use with SKU : PRT-08230 with associated crimp pins and housings.</description>
<gates>
<gate name="G$1" symbol="M05" x="-2.54" y="0"/>
</gates>
<devices>
<device name="PTH" package="1X05">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1.27MM" package="1X05-1.27MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK" package="1X05_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X05_LOCK_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH_LONGPADS" package="1X05_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="1X05-1MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD2" package="1X05-1MM-RA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="NO_SILK" package="1X05_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST" package="JST-5-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-VERT" package="JST-5-PTH-VERT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SCREW" package="SCREWTERMINAL-3.5MM-5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="Combine 8288+8399" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Displays">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find all manner of display devices- LED displays, LCD displays, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="7-SEGMENT-1&quot;PTH">
<description>7 Segment display Storefront SKU#: COM-08546</description>
<wire x1="-9" y1="-12.5" x2="-9" y2="12.5" width="0.254" layer="21"/>
<wire x1="-9" y1="12.5" x2="9" y2="12.5" width="0.254" layer="21"/>
<wire x1="9" y1="12.5" x2="9" y2="-11" width="0.254" layer="21"/>
<wire x1="7.5" y1="-12.5" x2="-9" y2="-12.5" width="0.254" layer="21"/>
<wire x1="-2.3" y1="6.4" x2="-1.4" y2="5.4" width="0.127" layer="51"/>
<wire x1="-1.4" y1="5.4" x2="-2.2" y2="1.1" width="0.127" layer="51"/>
<wire x1="-2.2" y1="1.1" x2="-3.3" y2="0.3" width="0.127" layer="51"/>
<wire x1="-3.3" y1="0.3" x2="-3.8" y2="1" width="0.127" layer="51"/>
<wire x1="-3.8" y1="1" x2="-2.9" y2="5.8" width="0.127" layer="51"/>
<wire x1="-2.9" y1="5.8" x2="-2.3" y2="6.4" width="0.127" layer="51"/>
<wire x1="-2.9" y1="0" x2="-2" y2="0.7" width="0.127" layer="51"/>
<wire x1="-2" y1="0.7" x2="2.5" y2="0.7" width="0.127" layer="51"/>
<wire x1="2.5" y1="0.7" x2="3.1" y2="0" width="0.127" layer="51"/>
<wire x1="3.1" y1="0" x2="2.2" y2="-0.8" width="0.127" layer="51"/>
<wire x1="2.2" y1="-0.8" x2="-2.4" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-2.4" y1="-0.8" x2="-2.9" y2="0" width="0.127" layer="51"/>
<wire x1="4.3" y1="6.4" x2="5.2" y2="5.4" width="0.127" layer="51"/>
<wire x1="5.2" y1="5.4" x2="4.4" y2="1.1" width="0.127" layer="51"/>
<wire x1="4.4" y1="1.1" x2="3.3" y2="0.3" width="0.127" layer="51"/>
<wire x1="3.3" y1="0.3" x2="2.8" y2="1" width="0.127" layer="51"/>
<wire x1="2.8" y1="1" x2="3.7" y2="5.8" width="0.127" layer="51"/>
<wire x1="3.7" y1="5.8" x2="4.3" y2="6.4" width="0.127" layer="51"/>
<wire x1="-3.4" y1="-0.2" x2="-2.5" y2="-1.2" width="0.127" layer="51"/>
<wire x1="-2.5" y1="-1.2" x2="-3.3" y2="-5.5" width="0.127" layer="51"/>
<wire x1="-3.3" y1="-5.5" x2="-4.4" y2="-6.3" width="0.127" layer="51"/>
<wire x1="-4.4" y1="-6.3" x2="-4.9" y2="-5.6" width="0.127" layer="51"/>
<wire x1="-4.9" y1="-5.6" x2="-4" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-4" y1="-0.8" x2="-3.4" y2="-0.2" width="0.127" layer="51"/>
<wire x1="3.2" y1="-0.4" x2="4.1" y2="-1.4" width="0.127" layer="51"/>
<wire x1="4.1" y1="-1.4" x2="3.3" y2="-5.7" width="0.127" layer="51"/>
<wire x1="3.3" y1="-5.7" x2="2.2" y2="-6.5" width="0.127" layer="51"/>
<wire x1="2.2" y1="-6.5" x2="1.7" y2="-5.8" width="0.127" layer="51"/>
<wire x1="1.7" y1="-5.8" x2="2.6" y2="-1" width="0.127" layer="51"/>
<wire x1="2.6" y1="-1" x2="3.2" y2="-0.4" width="0.127" layer="51"/>
<wire x1="-1.9" y1="6.7" x2="-1" y2="7.4" width="0.127" layer="51"/>
<wire x1="-1" y1="7.4" x2="3.5" y2="7.4" width="0.127" layer="51"/>
<wire x1="3.5" y1="7.4" x2="4.1" y2="6.7" width="0.127" layer="51"/>
<wire x1="4.1" y1="6.7" x2="3.2" y2="5.9" width="0.127" layer="51"/>
<wire x1="3.2" y1="5.9" x2="-1.4" y2="5.9" width="0.127" layer="51"/>
<wire x1="-1.4" y1="5.9" x2="-1.9" y2="6.7" width="0.127" layer="51"/>
<wire x1="-4.1" y1="-6.6" x2="-3.2" y2="-5.9" width="0.127" layer="51"/>
<wire x1="-3.2" y1="-5.9" x2="1.3" y2="-5.9" width="0.127" layer="51"/>
<wire x1="1.3" y1="-5.9" x2="1.9" y2="-6.6" width="0.127" layer="51"/>
<wire x1="1.9" y1="-6.6" x2="1" y2="-7.4" width="0.127" layer="51"/>
<wire x1="1" y1="-7.4" x2="-3.6" y2="-7.4" width="0.127" layer="51"/>
<wire x1="-3.6" y1="-7.4" x2="-4.1" y2="-6.6" width="0.127" layer="51"/>
<wire x1="9" y1="-11" x2="7.5" y2="-12.5" width="0.254" layer="21"/>
<circle x="7" y="-8" radius="0.6" width="0.2032" layer="21"/>
<circle x="5.5" y="-7.2" radius="0.7211" width="0.2032" layer="51"/>
<circle x="-6.1" y="-7.3" radius="0.7211" width="0.2032" layer="51"/>
<pad name="6" x="5.08" y="10.16" drill="1" diameter="1.8796"/>
<pad name="7" x="2.54" y="10.16" drill="1" diameter="1.8796"/>
<pad name="8" x="0" y="10.16" drill="1" diameter="1.8796"/>
<pad name="9" x="-2.54" y="10.16" drill="1" diameter="1.8796"/>
<pad name="10" x="-5.08" y="10.16" drill="1" diameter="1.8796"/>
<pad name="1" x="-5.08" y="-10.16" drill="1" diameter="1.8796"/>
<pad name="2" x="-2.54" y="-10.16" drill="1" diameter="1.8796"/>
<pad name="3" x="0" y="-10.16" drill="1" diameter="1.8796"/>
<pad name="4" x="2.54" y="-10.16" drill="1" diameter="1.8796"/>
<pad name="5" x="5.08" y="-10.16" drill="1" diameter="1.8796"/>
</package>
<package name="7-SEGMENT-1&quot;PTH-EZ">
<wire x1="-9" y1="-12.5" x2="-9" y2="12.5" width="0.254" layer="21"/>
<wire x1="-9" y1="12.5" x2="9" y2="12.5" width="0.254" layer="21"/>
<wire x1="9" y1="12.5" x2="9" y2="-10.5174" width="0.254" layer="21"/>
<wire x1="7.0174" y1="-12.5" x2="-9" y2="-12.5" width="0.254" layer="21"/>
<wire x1="-2.3" y1="6.4" x2="-1.4" y2="5.4" width="0.127" layer="21"/>
<wire x1="-1.4" y1="5.4" x2="-2.2" y2="1.1" width="0.127" layer="21"/>
<wire x1="-2.2" y1="1.1" x2="-3.3" y2="0.3" width="0.127" layer="21"/>
<wire x1="-3.3" y1="0.3" x2="-3.8" y2="1" width="0.127" layer="21"/>
<wire x1="-3.8" y1="1" x2="-2.9" y2="5.8" width="0.127" layer="21"/>
<wire x1="-2.9" y1="5.8" x2="-2.3" y2="6.4" width="0.127" layer="21"/>
<wire x1="-2.9" y1="0" x2="-2" y2="0.7" width="0.127" layer="21"/>
<wire x1="-2" y1="0.7" x2="2.5" y2="0.7" width="0.127" layer="21"/>
<wire x1="2.5" y1="0.7" x2="3.1" y2="0" width="0.127" layer="21"/>
<wire x1="3.1" y1="0" x2="2.2" y2="-0.8" width="0.127" layer="21"/>
<wire x1="2.2" y1="-0.8" x2="-2.4" y2="-0.8" width="0.127" layer="21"/>
<wire x1="-2.4" y1="-0.8" x2="-2.9" y2="0" width="0.127" layer="21"/>
<wire x1="4.3" y1="6.4" x2="5.2" y2="5.4" width="0.127" layer="21"/>
<wire x1="5.2" y1="5.4" x2="4.4" y2="1.1" width="0.127" layer="21"/>
<wire x1="4.4" y1="1.1" x2="3.3" y2="0.3" width="0.127" layer="21"/>
<wire x1="3.3" y1="0.3" x2="2.8" y2="1" width="0.127" layer="21"/>
<wire x1="2.8" y1="1" x2="3.7" y2="5.8" width="0.127" layer="21"/>
<wire x1="3.7" y1="5.8" x2="4.3" y2="6.4" width="0.127" layer="21"/>
<wire x1="-3.4" y1="-0.2" x2="-2.5" y2="-1.2" width="0.127" layer="21"/>
<wire x1="-2.5" y1="-1.2" x2="-3.3" y2="-5.5" width="0.127" layer="21"/>
<wire x1="-3.3" y1="-5.5" x2="-4.4" y2="-6.3" width="0.127" layer="21"/>
<wire x1="-4.4" y1="-6.3" x2="-4.9" y2="-5.6" width="0.127" layer="21"/>
<wire x1="-4.9" y1="-5.6" x2="-4" y2="-0.8" width="0.127" layer="21"/>
<wire x1="-4" y1="-0.8" x2="-3.4" y2="-0.2" width="0.127" layer="21"/>
<wire x1="3.2" y1="-0.4" x2="4.1" y2="-1.4" width="0.127" layer="21"/>
<wire x1="4.1" y1="-1.4" x2="3.3" y2="-5.7" width="0.127" layer="21"/>
<wire x1="3.3" y1="-5.7" x2="2.2" y2="-6.5" width="0.127" layer="21"/>
<wire x1="2.2" y1="-6.5" x2="1.7" y2="-5.8" width="0.127" layer="21"/>
<wire x1="1.7" y1="-5.8" x2="2.6" y2="-1" width="0.127" layer="21"/>
<wire x1="2.6" y1="-1" x2="3.2" y2="-0.4" width="0.127" layer="21"/>
<wire x1="-1.9" y1="6.7" x2="-1" y2="7.4" width="0.127" layer="21"/>
<wire x1="-1" y1="7.4" x2="3.5" y2="7.4" width="0.127" layer="21"/>
<wire x1="3.5" y1="7.4" x2="4.1" y2="6.7" width="0.127" layer="21"/>
<wire x1="4.1" y1="6.7" x2="3.2" y2="5.9" width="0.127" layer="21"/>
<wire x1="3.2" y1="5.9" x2="-1.4" y2="5.9" width="0.127" layer="21"/>
<wire x1="-1.4" y1="5.9" x2="-1.9" y2="6.7" width="0.127" layer="21"/>
<wire x1="-4.1" y1="-6.6" x2="-3.2" y2="-5.9" width="0.127" layer="21"/>
<wire x1="-3.2" y1="-5.9" x2="1.3" y2="-5.9" width="0.127" layer="21"/>
<wire x1="1.3" y1="-5.9" x2="1.9" y2="-6.6" width="0.127" layer="21"/>
<wire x1="1.9" y1="-6.6" x2="1" y2="-7.4" width="0.127" layer="21"/>
<wire x1="1" y1="-7.4" x2="-3.6" y2="-7.4" width="0.127" layer="21"/>
<wire x1="-3.6" y1="-7.4" x2="-4.1" y2="-6.6" width="0.127" layer="21"/>
<wire x1="9" y1="-10.5174" x2="7.0174" y2="-12.5" width="0.254" layer="21"/>
<pad name="6" x="5.08" y="10.16" drill="1" diameter="1.8796" stop="no"/>
<pad name="7" x="2.54" y="10.16" drill="1" diameter="1.8796" stop="no"/>
<pad name="8" x="0" y="10.16" drill="1" diameter="1.8796" stop="no"/>
<pad name="9" x="-2.54" y="10.16" drill="1" diameter="1.8796" stop="no"/>
<pad name="10" x="-5.08" y="10.16" drill="1" diameter="1.8796" stop="no"/>
<pad name="1" x="-5.08" y="-10.16" drill="1" diameter="1.8796" stop="no"/>
<pad name="2" x="-2.54" y="-10.16" drill="1" diameter="1.8796" stop="no"/>
<pad name="3" x="0" y="-10.16" drill="1" diameter="1.8796" stop="no"/>
<pad name="4" x="2.54" y="-10.16" drill="1" diameter="1.8796" stop="no"/>
<pad name="5" x="5.08" y="-10.16" drill="1" diameter="1.8796" stop="no"/>
<polygon width="0.127" layer="30">
<vertex x="-5.090159375" y="9.243059375" curve="-90"/>
<vertex x="-6.0198" y="10.15491875" curve="-90"/>
<vertex x="-5.08508125" y="11.0871" curve="-90"/>
<vertex x="-4.1529" y="10.16" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-2.550159375" y="9.243059375" curve="-90"/>
<vertex x="-3.4798" y="10.15491875" curve="-90"/>
<vertex x="-2.54508125" y="11.0871" curve="-90"/>
<vertex x="-1.6129" y="10.16" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-0.010159375" y="9.243059375" curve="-90"/>
<vertex x="-0.9398" y="10.15491875" curve="-90"/>
<vertex x="-0.00508125" y="11.0871" curve="-90"/>
<vertex x="0.9271" y="10.16" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="2.529840625" y="9.243059375" curve="-90"/>
<vertex x="1.6002" y="10.15491875" curve="-90"/>
<vertex x="2.53491875" y="11.0871" curve="-90"/>
<vertex x="3.4671" y="10.16" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="5.069840625" y="9.243059375" curve="-90"/>
<vertex x="4.1402" y="10.15491875" curve="-90"/>
<vertex x="5.07491875" y="11.0871" curve="-90"/>
<vertex x="6.0071" y="10.16" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-5.090159375" y="-11.076940625" curve="-90"/>
<vertex x="-6.0198" y="-10.16508125" curve="-90"/>
<vertex x="-5.08508125" y="-9.2329" curve="-90"/>
<vertex x="-4.1529" y="-10.16" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-2.550159375" y="-11.076940625" curve="-90"/>
<vertex x="-3.4798" y="-10.16508125" curve="-90"/>
<vertex x="-2.54508125" y="-9.2329" curve="-90"/>
<vertex x="-1.6129" y="-10.16" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-0.010159375" y="-11.076940625" curve="-90"/>
<vertex x="-0.9398" y="-10.16508125" curve="-90"/>
<vertex x="-0.00508125" y="-9.2329" curve="-90"/>
<vertex x="0.9271" y="-10.16" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="2.529840625" y="-11.076940625" curve="-90"/>
<vertex x="1.6002" y="-10.16508125" curve="-90"/>
<vertex x="2.53491875" y="-9.2329" curve="-90"/>
<vertex x="3.4671" y="-10.16" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="5.069840625" y="-11.076940625" curve="-90"/>
<vertex x="4.1402" y="-10.16508125" curve="-90"/>
<vertex x="5.07491875" y="-9.2329" curve="-90"/>
<vertex x="6.0071" y="-10.16" curve="-90"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-4.6482" y="10.152378125" curve="90"/>
<vertex x="-5.082540625" y="10.5918" curve="90"/>
<vertex x="-5.5118" y="10.162540625" curve="90"/>
<vertex x="-5.077459375" y="9.72311875" curve="90"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-2.1082" y="10.152378125" curve="90"/>
<vertex x="-2.542540625" y="10.5918" curve="90"/>
<vertex x="-2.9718" y="10.162540625" curve="90"/>
<vertex x="-2.537459375" y="9.72311875" curve="90"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="0.4318" y="10.152378125" curve="90"/>
<vertex x="-0.002540625" y="10.5918" curve="90"/>
<vertex x="-0.4318" y="10.162540625" curve="90"/>
<vertex x="0.002540625" y="9.72311875" curve="90"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="2.9718" y="10.152378125" curve="90"/>
<vertex x="2.537459375" y="10.5918" curve="90"/>
<vertex x="2.1082" y="10.162540625" curve="90"/>
<vertex x="2.542540625" y="9.72311875" curve="90"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="5.5118" y="10.152378125" curve="90"/>
<vertex x="5.077459375" y="10.5918" curve="90"/>
<vertex x="4.6482" y="10.162540625" curve="90"/>
<vertex x="5.082540625" y="9.72311875" curve="90"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-4.6482" y="-10.167621875" curve="90"/>
<vertex x="-5.082540625" y="-9.7282" curve="90"/>
<vertex x="-5.5118" y="-10.157459375" curve="90"/>
<vertex x="-5.077459375" y="-10.59688125" curve="90"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-2.1082" y="-10.167621875" curve="90"/>
<vertex x="-2.542540625" y="-9.7282" curve="90"/>
<vertex x="-2.9718" y="-10.157459375" curve="90"/>
<vertex x="-2.537459375" y="-10.59688125" curve="90"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="0.4318" y="-10.167621875" curve="90"/>
<vertex x="-0.002540625" y="-9.7282" curve="90"/>
<vertex x="-0.4318" y="-10.157459375" curve="90"/>
<vertex x="0.002540625" y="-10.59688125" curve="90"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="2.9718" y="-10.167621875" curve="90"/>
<vertex x="2.537459375" y="-9.7282" curve="90"/>
<vertex x="2.1082" y="-10.157459375" curve="90"/>
<vertex x="2.542540625" y="-10.59688125" curve="90"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="5.5118" y="-10.167621875" curve="90"/>
<vertex x="5.077459375" y="-9.7282" curve="90"/>
<vertex x="4.6482" y="-10.157459375" curve="90"/>
<vertex x="5.082540625" y="-10.59688125" curve="90"/>
</polygon>
<polygon width="0.127" layer="21">
<vertex x="-6.0706" y="-6.5278" curve="-90"/>
<vertex x="-5.334" y="-7.366" curve="-90"/>
<vertex x="-6.1468" y="-8.0518" curve="-90"/>
<vertex x="-6.858" y="-7.2898" curve="-90"/>
</polygon>
<polygon width="0.127" layer="21">
<vertex x="5.5372" y="-6.4262" curve="-90"/>
<vertex x="6.2738" y="-7.2644" curve="-90"/>
<vertex x="5.461" y="-7.9502" curve="-90"/>
<vertex x="4.7498" y="-7.1882" curve="-90"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="7-SEGMENT-1&quot;">
<wire x1="-15.24" y1="-15.24" x2="-15.24" y2="15.24" width="0.254" layer="94"/>
<wire x1="-15.24" y1="15.24" x2="10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="15.24" x2="10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-15.24" x2="10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-3.81" y1="12.7" x2="-2.54" y2="13.97" width="0.508" layer="94"/>
<wire x1="-2.54" y1="13.97" x2="5.08" y2="13.97" width="0.508" layer="94"/>
<wire x1="5.08" y1="13.97" x2="6.35" y2="12.7" width="0.508" layer="94"/>
<wire x1="6.35" y1="12.7" x2="5.08" y2="11.43" width="0.508" layer="94"/>
<wire x1="5.08" y1="11.43" x2="-2.54" y2="11.43" width="0.508" layer="94"/>
<wire x1="-2.54" y1="11.43" x2="-3.81" y2="12.7" width="0.508" layer="94"/>
<wire x1="5.334" y1="10.16" x2="4.064" y2="2.54" width="0.508" layer="94"/>
<wire x1="4.064" y1="2.54" x2="5.334" y2="1.27" width="0.508" layer="94"/>
<wire x1="5.334" y1="1.27" x2="6.604" y2="2.54" width="0.508" layer="94"/>
<wire x1="6.604" y1="2.54" x2="7.874" y2="10.16" width="0.508" layer="94"/>
<wire x1="7.874" y1="10.16" x2="6.604" y2="11.43" width="0.508" layer="94"/>
<wire x1="6.604" y1="11.43" x2="5.334" y2="10.16" width="0.508" layer="94"/>
<wire x1="-5.588" y1="10.414" x2="-6.858" y2="2.794" width="0.508" layer="94"/>
<wire x1="-6.858" y1="2.794" x2="-5.588" y2="1.524" width="0.508" layer="94"/>
<wire x1="-5.588" y1="1.524" x2="-4.318" y2="2.794" width="0.508" layer="94"/>
<wire x1="-4.318" y1="2.794" x2="-3.048" y2="10.414" width="0.508" layer="94"/>
<wire x1="-3.048" y1="10.414" x2="-4.318" y2="11.684" width="0.508" layer="94"/>
<wire x1="-4.318" y1="11.684" x2="-5.588" y2="10.414" width="0.508" layer="94"/>
<wire x1="-5.334" y1="0.508" x2="-4.064" y2="1.778" width="0.508" layer="94"/>
<wire x1="-4.064" y1="1.778" x2="3.556" y2="1.778" width="0.508" layer="94"/>
<wire x1="3.556" y1="1.778" x2="4.826" y2="0.508" width="0.508" layer="94"/>
<wire x1="4.826" y1="0.508" x2="3.556" y2="-0.762" width="0.508" layer="94"/>
<wire x1="3.556" y1="-0.762" x2="-4.064" y2="-0.762" width="0.508" layer="94"/>
<wire x1="-4.064" y1="-0.762" x2="-5.334" y2="0.508" width="0.508" layer="94"/>
<wire x1="-7.112" y1="-1.524" x2="-8.382" y2="-9.144" width="0.508" layer="94"/>
<wire x1="-8.382" y1="-9.144" x2="-7.112" y2="-10.414" width="0.508" layer="94"/>
<wire x1="-7.112" y1="-10.414" x2="-5.842" y2="-9.144" width="0.508" layer="94"/>
<wire x1="-5.842" y1="-9.144" x2="-4.572" y2="-1.524" width="0.508" layer="94"/>
<wire x1="-4.572" y1="-1.524" x2="-5.842" y2="-0.254" width="0.508" layer="94"/>
<wire x1="-5.842" y1="-0.254" x2="-7.112" y2="-1.524" width="0.508" layer="94"/>
<wire x1="3.81" y1="-1.778" x2="2.54" y2="-9.398" width="0.508" layer="94"/>
<wire x1="2.54" y1="-9.398" x2="3.81" y2="-10.668" width="0.508" layer="94"/>
<wire x1="3.81" y1="-10.668" x2="5.08" y2="-9.398" width="0.508" layer="94"/>
<wire x1="5.08" y1="-9.398" x2="6.35" y2="-1.778" width="0.508" layer="94"/>
<wire x1="6.35" y1="-1.778" x2="5.08" y2="-0.508" width="0.508" layer="94"/>
<wire x1="5.08" y1="-0.508" x2="3.81" y2="-1.778" width="0.508" layer="94"/>
<wire x1="-6.858" y1="-11.43" x2="-5.588" y2="-10.16" width="0.508" layer="94"/>
<wire x1="-5.588" y1="-10.16" x2="2.032" y2="-10.16" width="0.508" layer="94"/>
<wire x1="2.032" y1="-10.16" x2="3.302" y2="-11.43" width="0.508" layer="94"/>
<wire x1="3.302" y1="-11.43" x2="2.032" y2="-12.7" width="0.508" layer="94"/>
<wire x1="2.032" y1="-12.7" x2="-5.588" y2="-12.7" width="0.508" layer="94"/>
<wire x1="-5.588" y1="-12.7" x2="-6.858" y2="-11.43" width="0.508" layer="94"/>
<circle x="7.62" y="-12.7" radius="1.27" width="0.508" layer="94"/>
<text x="0.762" y="12.192" size="1.016" layer="94" ratio="15">A</text>
<text x="5.588" y="5.842" size="1.016" layer="94" ratio="15">B</text>
<text x="4.064" y="-6.35" size="1.016" layer="94" ratio="15">C</text>
<text x="-2.286" y="-11.938" size="1.016" layer="94" ratio="15">D</text>
<text x="-6.858" y="-5.842" size="1.016" layer="94" ratio="15">E</text>
<text x="-5.334" y="6.096" size="1.016" layer="94" ratio="15">F</text>
<text x="-0.762" y="0" size="1.016" layer="94" ratio="15">G</text>
<text x="6.604" y="-13.208" size="1.016" layer="94" ratio="15">DP</text>
<pin name="A" x="-20.32" y="10.16" length="middle"/>
<pin name="B" x="-20.32" y="7.62" length="middle"/>
<pin name="C" x="-20.32" y="5.08" length="middle"/>
<pin name="D" x="-20.32" y="2.54" length="middle"/>
<pin name="E" x="-20.32" y="0" length="middle"/>
<pin name="F" x="-20.32" y="-2.54" length="middle"/>
<pin name="G" x="-20.32" y="-5.08" length="middle"/>
<pin name="DP" x="-20.32" y="-7.62" length="middle"/>
<pin name="G1" x="-20.32" y="-10.16" length="middle"/>
<pin name="G2" x="-20.32" y="-12.7" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="7-SEGMENT-DISPLAY-1&quot;-RED">
<description>7-Segment Display 1" Red (COM-08546)

EZ is for kits. Pads are only exposed on the bottom side to help prevent soldering in upside down.</description>
<gates>
<gate name="G$1" symbol="7-SEGMENT-1&quot;" x="0" y="0"/>
</gates>
<devices>
<device name="" package="7-SEGMENT-1&quot;PTH">
<connects>
<connect gate="G$1" pin="A" pad="7"/>
<connect gate="G$1" pin="B" pad="6"/>
<connect gate="G$1" pin="C" pad="4"/>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="DP" pad="5"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="F" pad="9"/>
<connect gate="G$1" pin="G" pad="10"/>
<connect gate="G$1" pin="G1" pad="3"/>
<connect gate="G$1" pin="G2" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EZ" package="7-SEGMENT-1&quot;PTH-EZ">
<connects>
<connect gate="G$1" pin="A" pad="7"/>
<connect gate="G$1" pin="B" pad="6"/>
<connect gate="G$1" pin="C" pad="4"/>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="DP" pad="5"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="F" pad="9"/>
<connect gate="G$1" pin="G" pad="10"/>
<connect gate="G$1" pin="G1" pad="3"/>
<connect gate="G$1" pin="G2" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Resistors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1206">
<wire x1="-2.4003" y1="1.1049" x2="2.4003" y2="1.1049" width="0.0508" layer="39"/>
<wire x1="2.4003" y1="-1.1049" x2="-2.4003" y2="-1.1049" width="0.0508" layer="39"/>
<wire x1="-2.4003" y1="-1.1049" x2="-2.4003" y2="1.1049" width="0.0508" layer="39"/>
<wire x1="2.4003" y1="1.1049" x2="2.4003" y2="-1.1049" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.397" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="AXIAL-0.3">
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="R2010">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="1.5621" x2="3.302" y2="1.5621" width="0.0508" layer="39"/>
<wire x1="3.302" y1="1.5621" x2="3.302" y2="-1.5621" width="0.0508" layer="39"/>
<wire x1="3.302" y1="-1.5621" x2="-3.302" y2="-1.5621" width="0.0508" layer="39"/>
<wire x1="-3.302" y1="-1.5621" x2="-3.302" y2="1.5621" width="0.0508" layer="39"/>
<wire x1="-1.027" y1="1.245" x2="1.027" y2="1.245" width="0.1524" layer="21"/>
<wire x1="-1.002" y1="-1.245" x2="1.016" y2="-1.245" width="0.1524" layer="21"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-2.54" y="1.5875" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.032" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="0805">
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
<wire x1="-1.4986" y1="0.8128" x2="1.4986" y2="0.8128" width="0.0508" layer="39"/>
<wire x1="1.4986" y1="0.8128" x2="1.4986" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="1.4986" y1="-0.8128" x2="-1.4986" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="-0.8128" x2="-1.4986" y2="0.8128" width="0.0508" layer="39"/>
</package>
<package name="0603-RES">
<wire x1="-1.6002" y1="0.6858" x2="1.6002" y2="0.6858" width="0.0508" layer="39"/>
<wire x1="1.6002" y1="0.6858" x2="1.6002" y2="-0.6858" width="0.0508" layer="39"/>
<wire x1="1.6002" y1="-0.6858" x2="-1.6002" y2="-0.6858" width="0.0508" layer="39"/>
<wire x1="-1.6002" y1="-0.6858" x2="-1.6002" y2="0.6858" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.1905" y1="-0.381" x2="0.1905" y2="0.381" layer="21"/>
</package>
<package name="1/6W-RES">
<description>1/6W Thru-hole Resistor - *UNPROVEN*</description>
<wire x1="-1.55" y1="0.85" x2="-1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="-1.55" y1="-0.85" x2="1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="-0.85" x2="1.55" y2="0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="0.85" x2="-1.55" y2="0.85" width="0.2032" layer="21"/>
<pad name="1" x="-2.5" y="0" drill="0.762" diameter="1.6764"/>
<pad name="2" x="2.5" y="0" drill="0.762" diameter="1.6764"/>
<text x="-1.2662" y="0.9552" size="0.6096" layer="25">&gt;NAME</text>
<text x="-1.423" y="-0.4286" size="0.8128" layer="21" ratio="15">&gt;VALUE</text>
</package>
<package name="R2512">
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<wire x1="-3.9116" y1="-1.8034" x2="3.9116" y2="-1.8034" width="0.0508" layer="39"/>
<wire x1="3.9116" y1="-1.8034" x2="3.9116" y2="1.8034" width="0.0508" layer="39"/>
<wire x1="3.9116" y1="1.8034" x2="-3.9116" y2="1.8034" width="0.0508" layer="39"/>
<wire x1="-3.9116" y1="1.8034" x2="-3.9116" y2="-1.8034" width="0.0508" layer="39"/>
</package>
<package name="AXIAL-0.4">
<description>1/4W Resistor, 0.4" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-3.15" y1="-1.2" x2="-3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="-3.15" y1="1.2" x2="3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="1.2" x2="3.15" y2="-1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="-1.2" x2="-3.15" y2="-1.2" width="0.2032" layer="21"/>
<pad name="P$1" x="-5.08" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="5.08" y="0" drill="0.9" diameter="1.8796"/>
<text x="-3.175" y="1.905" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-2.286" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.5">
<description>1/2W Resistor, 0.5" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-4.5" y1="-1.65" x2="-4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="1.65" x2="4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="1.65" x2="4.5" y2="-1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="-1.65" x2="-4.5" y2="-1.65" width="0.2032" layer="21"/>
<pad name="P$1" x="-6.35" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="6.35" y="0" drill="0.9" diameter="1.8796"/>
<text x="-4.445" y="2.54" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-3.429" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.6">
<description>1W Resistor, 0.6" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-5.75" y1="-2.25" x2="-5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-5.75" y1="2.25" x2="5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="2.25" x2="5.75" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="-2.25" x2="-5.75" y2="-2.25" width="0.2032" layer="21"/>
<pad name="P$1" x="-7.62" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="7.62" y="0" drill="1.2" diameter="1.8796"/>
<text x="-5.715" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-4.064" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.8">
<description>2W Resistor, 0.8" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-7.75" y1="-2.5" x2="-7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="-7.75" y1="2.5" x2="7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="2.5" x2="7.75" y2="-2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="-2.5" x2="-7.75" y2="-2.5" width="0.2032" layer="21"/>
<pad name="P$1" x="-10.16" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="10.16" y="0" drill="1.2" diameter="1.8796"/>
<text x="-7.62" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-5.969" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.3-KIT">
<description>&lt;h3&gt;AXIAL-0.3-KIT&lt;/h3&gt;

Commonly used for 1/4W through-hole resistors. 0.3" pitch between holes.&lt;br&gt;
&lt;br&gt;

&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of the AXIAL-0.3 package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.159" y="-0.762" size="1.27" layer="21" font="vector" ratio="15">&gt;Value</text>
<polygon width="0.127" layer="30">
<vertex x="3.8201" y="-0.9449" curve="-90"/>
<vertex x="2.8652" y="-0.0152" curve="-90.011749"/>
<vertex x="3.8176" y="0.9602" curve="-90"/>
<vertex x="4.7676" y="-0.0178" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.8176" y="-0.4369" curve="-90.012891"/>
<vertex x="3.3731" y="-0.0127" curve="-90"/>
<vertex x="3.8176" y="0.4546" curve="-90"/>
<vertex x="4.2595" y="-0.0025" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.8075" y="-0.9525" curve="-90"/>
<vertex x="-4.7624" y="-0.0228" curve="-90.011749"/>
<vertex x="-3.81" y="0.9526" curve="-90"/>
<vertex x="-2.86" y="-0.0254" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.81" y="-0.4445" curve="-90.012891"/>
<vertex x="-4.2545" y="-0.0203" curve="-90"/>
<vertex x="-3.81" y="0.447" curve="-90"/>
<vertex x="-3.3681" y="-0.0101" curve="-90.012967"/>
</polygon>
</package>
<package name="AXIAL-0.3EZ">
<description>This is the "EZ" version of the standard .3" spaced resistor package.&lt;br&gt;
It has a reduced top mask to make it harder to install upside-down.</description>
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="-3.81" y="0" radius="0.508" width="0" layer="29"/>
<circle x="3.81" y="0" radius="0.523634375" width="0" layer="29"/>
<circle x="-3.81" y="0" radius="1.02390625" width="0" layer="30"/>
<circle x="3.81" y="0" radius="1.04726875" width="0" layer="30"/>
</package>
<package name="AXIAL-0.1EZ">
<wire x1="1.27" y1="-0.762" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.524" y1="0" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.016" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="2.54" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="0" y="1.27" size="1.016" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="0" y="-2.159" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="0" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="0" y="0" radius="1.016" width="0" layer="30"/>
<circle x="2.54" y="0" radius="1.016" width="0" layer="30"/>
<circle x="0" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="2.54" y="0" radius="0.4572" width="0" layer="29"/>
</package>
<package name="AXIAL-0.1">
<wire x1="1.27" y1="-0.762" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.524" y1="0" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.016" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="2.54" y="0" drill="0.9" diameter="1.8796"/>
<text x="0" y="1.27" size="1.016" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="0" y="-2.159" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="0402-RES">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.2065" y1="0.6477" x2="1.2065" y2="0.6477" width="0.0508" layer="39"/>
<wire x1="1.2065" y1="0.6477" x2="1.2065" y2="-0.6477" width="0.0508" layer="39"/>
<wire x1="1.2065" y1="-0.6477" x2="-1.2065" y2="-0.6477" width="0.0508" layer="39"/>
<wire x1="-1.2065" y1="-0.6477" x2="-1.2065" y2="0.6477" width="0.0508" layer="39"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2032" y1="-0.3556" x2="0.2032" y2="0.3556" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RESISTOR" prefix="R" uservalue="yes">
<description>&lt;b&gt;Resistor&lt;/b&gt;
Basic schematic elements and footprints for 0603, 1206, and PTH resistors.</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AXIAL-0.3" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805-RES" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603-RES" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/6W" package="1/6W-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W" package="AXIAL-0.4">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/2W" package="AXIAL-0.5">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1W" package="AXIAL-0.6">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-2W" package="AXIAL-0.8">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="AXIAL-0.3-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EZ" package="AXIAL-0.3EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W-VERT-KIT" package="AXIAL-0.1EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W-VERT" package="AXIAL-0.1">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402" package="0402-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
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
<class number="0" name="default" width="0.4064" drill="0.381">
<clearance class="0" value="0.3048"/>
</class>
</classes>
<parts>
<part name="IC1" library="SparkFun-DigitalIC" deviceset="74*595" device="D" technology="LS"/>
<part name="SR_IN" library="SparkFun-Connectors" deviceset="M05" device="PTH"/>
<part name="SR_OUT" library="SparkFun-Connectors" deviceset="M05" device="PTH"/>
<part name="U$1" library="SparkFun-Displays" deviceset="7-SEGMENT-DISPLAY-1&quot;-RED" device="EZ"/>
<part name="R1" library="SparkFun-Resistors" deviceset="RESISTOR" device="1206"/>
<part name="R2" library="SparkFun-Resistors" deviceset="RESISTOR" device="1206"/>
<part name="R3" library="SparkFun-Resistors" deviceset="RESISTOR" device="1206"/>
<part name="R4" library="SparkFun-Resistors" deviceset="RESISTOR" device="1206"/>
<part name="R5" library="SparkFun-Resistors" deviceset="RESISTOR" device="1206"/>
<part name="R6" library="SparkFun-Resistors" deviceset="RESISTOR" device="1206"/>
<part name="R7" library="SparkFun-Resistors" deviceset="RESISTOR" device="1206"/>
<part name="R8" library="SparkFun-Resistors" deviceset="RESISTOR" device="1206"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="A" x="55.88" y="58.42"/>
<instance part="SR_IN" gate="G$1" x="2.54" y="68.58"/>
<instance part="SR_OUT" gate="G$1" x="2.54" y="45.72"/>
<instance part="U$1" gate="G$1" x="127" y="55.88"/>
<instance part="R1" gate="G$1" x="91.44" y="66.04"/>
<instance part="R2" gate="G$1" x="91.44" y="63.5"/>
<instance part="R3" gate="G$1" x="91.44" y="60.96"/>
<instance part="R4" gate="G$1" x="91.44" y="58.42"/>
<instance part="R5" gate="G$1" x="91.44" y="55.88"/>
<instance part="R6" gate="G$1" x="91.44" y="53.34"/>
<instance part="R7" gate="G$1" x="91.44" y="50.8"/>
<instance part="R8" gate="G$1" x="91.44" y="48.26"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QA"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="71.12" y1="66.04" x2="86.36" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="U$1" gate="G$1" pin="A"/>
<wire x1="96.52" y1="66.04" x2="106.68" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QB"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="71.12" y1="63.5" x2="86.36" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="U$1" gate="G$1" pin="B"/>
<wire x1="96.52" y1="63.5" x2="106.68" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QC"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="71.12" y1="60.96" x2="86.36" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="U$1" gate="G$1" pin="C"/>
<wire x1="96.52" y1="60.96" x2="106.68" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QD"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="71.12" y1="58.42" x2="86.36" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="U$1" gate="G$1" pin="D"/>
<wire x1="96.52" y1="58.42" x2="106.68" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QE"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="71.12" y1="55.88" x2="86.36" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<pinref part="U$1" gate="G$1" pin="E"/>
<wire x1="96.52" y1="55.88" x2="106.68" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QF"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="71.12" y1="53.34" x2="86.36" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="2"/>
<pinref part="U$1" gate="G$1" pin="F"/>
<wire x1="96.52" y1="53.34" x2="106.68" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QG"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="71.12" y1="50.8" x2="86.36" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="2"/>
<pinref part="U$1" gate="G$1" pin="G"/>
<wire x1="96.52" y1="50.8" x2="106.68" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QH"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="71.12" y1="48.26" x2="86.36" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="2"/>
<pinref part="U$1" gate="G$1" pin="DP"/>
<wire x1="96.52" y1="48.26" x2="106.68" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="G1"/>
<pinref part="U$1" gate="G$1" pin="G2"/>
<wire x1="106.68" y1="45.72" x2="106.68" y2="43.18" width="0.1524" layer="91"/>
<wire x1="106.68" y1="43.18" x2="106.68" y2="38.1" width="0.1524" layer="91"/>
<wire x1="106.68" y1="38.1" x2="88.9" y2="38.1" width="0.1524" layer="91"/>
<junction x="106.68" y="43.18"/>
<label x="88.9" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="GND"/>
<wire x1="45.72" y1="45.72" x2="33.02" y2="45.72" width="0.1524" layer="91"/>
<label x="33.02" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="G"/>
<wire x1="33.02" y1="50.8" x2="45.72" y2="50.8" width="0.1524" layer="91"/>
<label x="33.02" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SR_OUT" gate="G$1" pin="5"/>
<wire x1="22.86" y1="50.8" x2="10.16" y2="50.8" width="0.1524" layer="91"/>
<label x="15.24" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SR_IN" gate="G$1" pin="5"/>
<wire x1="22.86" y1="73.66" x2="10.16" y2="73.66" width="0.1524" layer="91"/>
<label x="15.24" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="SER_OUT" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QH*"/>
<wire x1="71.12" y1="45.72" x2="71.12" y2="43.18" width="0.1524" layer="91"/>
<wire x1="71.12" y1="43.18" x2="83.82" y2="43.18" width="0.1524" layer="91"/>
<label x="76.2" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SR_OUT" gate="G$1" pin="4"/>
<wire x1="22.86" y1="48.26" x2="10.16" y2="48.26" width="0.1524" layer="91"/>
<label x="15.24" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="RCLK" class="0">
<segment>
<pinref part="IC1" gate="A" pin="RCK"/>
<wire x1="33.02" y1="55.88" x2="45.72" y2="55.88" width="0.1524" layer="91"/>
<label x="33.02" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SR_OUT" gate="G$1" pin="2"/>
<wire x1="22.86" y1="43.18" x2="10.16" y2="43.18" width="0.1524" layer="91"/>
<label x="15.24" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SR_IN" gate="G$1" pin="2"/>
<wire x1="22.86" y1="66.04" x2="10.16" y2="66.04" width="0.1524" layer="91"/>
<label x="15.24" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="IC1" gate="A" pin="SCL"/>
<wire x1="33.02" y1="60.96" x2="45.72" y2="60.96" width="0.1524" layer="91"/>
<label x="33.02" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="VCC"/>
<wire x1="81.28" y1="68.58" x2="71.12" y2="68.58" width="0.1524" layer="91"/>
<label x="73.66" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SR_OUT" gate="G$1" pin="1"/>
<wire x1="22.86" y1="40.64" x2="10.16" y2="40.64" width="0.1524" layer="91"/>
<label x="15.24" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SR_IN" gate="G$1" pin="1"/>
<wire x1="22.86" y1="63.5" x2="10.16" y2="63.5" width="0.1524" layer="91"/>
<label x="15.24" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCLK" class="0">
<segment>
<pinref part="IC1" gate="A" pin="SCK"/>
<wire x1="33.02" y1="63.5" x2="45.72" y2="63.5" width="0.1524" layer="91"/>
<label x="33.02" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SR_OUT" gate="G$1" pin="3"/>
<wire x1="22.86" y1="45.72" x2="10.16" y2="45.72" width="0.1524" layer="91"/>
<label x="15.24" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SR_IN" gate="G$1" pin="3"/>
<wire x1="22.86" y1="68.58" x2="10.16" y2="68.58" width="0.1524" layer="91"/>
<label x="15.24" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="SER_IN" class="0">
<segment>
<pinref part="IC1" gate="A" pin="SER"/>
<wire x1="33.02" y1="68.58" x2="45.72" y2="68.58" width="0.1524" layer="91"/>
<label x="33.02" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SR_IN" gate="G$1" pin="4"/>
<wire x1="22.86" y1="71.12" x2="10.16" y2="71.12" width="0.1524" layer="91"/>
<label x="15.24" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
