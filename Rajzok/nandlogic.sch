<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.3">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="no" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="no" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="74xx-eu">
<description>&lt;b&gt;TTL Devices, 74xx Series with European Symbols&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Texas Instruments &lt;i&gt;TTL Data Book&lt;/i&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;Volume 1, 1996.
&lt;li&gt;TTL Data Book, Volume 2 , 1993
&lt;li&gt;National Seminconductor Databook 1990, ALS/LS Logic
&lt;li&gt;ttl 74er digital data dictionary, ECA Electronic + Acustic GmbH, ISBN 3-88109-032-0
&lt;li&gt;http://icmaster.com/ViewCompare.asp
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL14">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="8.89" y1="2.921" x2="-8.89" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="8.89" y1="2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="2.921" x2="-8.89" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="-8.89" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.016" x2="-8.89" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-9.271" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-6.731" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO14">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.064" y1="1.9558" x2="-4.064" y2="1.9558" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-1.9558" x2="4.445" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.445" y1="1.5748" x2="-4.064" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.064" y1="1.9558" x2="4.445" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.445" y1="-1.5748" x2="-4.064" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.064" y1="-1.9558" x2="4.064" y2="-1.9558" width="0.1524" layer="51"/>
<wire x1="4.445" y1="-1.5748" x2="4.445" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.5748" x2="-4.445" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-0.508" x2="-4.445" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-4.445" y1="-1.6002" x2="4.445" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="-1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="0" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="0" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.175" y="-0.762" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.826" y="-1.905" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.254" y1="1.9558" x2="0.254" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="-3.0988" x2="-3.556" y2="-1.9558" layer="51"/>
<rectangle x1="-2.794" y1="-3.0988" x2="-2.286" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="-3.0734" x2="-1.016" y2="-1.9304" layer="51"/>
<rectangle x1="-0.254" y1="-3.0988" x2="0.254" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="1.9558" x2="-1.016" y2="3.0988" layer="51"/>
<rectangle x1="-2.794" y1="1.9558" x2="-2.286" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="1.9558" x2="-3.556" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="1.9558" x2="1.524" y2="3.0988" layer="51"/>
<rectangle x1="2.286" y1="1.9558" x2="2.794" y2="3.0988" layer="51"/>
<rectangle x1="3.556" y1="1.9558" x2="4.064" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="-3.0988" x2="1.524" y2="-1.9558" layer="51"/>
<rectangle x1="2.286" y1="-3.0988" x2="2.794" y2="-1.9558" layer="51"/>
<rectangle x1="3.556" y1="-3.0988" x2="4.064" y2="-1.9558" layer="51"/>
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
<wire x1="-0.4001" y1="-4.3985" x2="0.4001" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="0.87" y1="-4.3985" x2="1.67" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="2.9401" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.87" y1="-4.4" x2="-0.4001" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-1.6701" y1="-4.3985" x2="-0.8699" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.9401" y1="-4.3985" x2="-2.1399" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
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
<wire x1="2.14" y1="-4.3985" x2="2.94" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="4.3985" y1="2.9401" x2="4.3985" y2="2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="1.6701" x2="4.4" y2="2.14" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="-3.1941" x2="-4.4" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="-4.4" x2="-3.1941" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="3.1941" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-3.1941" width="0.2032" layer="21"/>
<wire x1="4.4" y1="3.1941" x2="4.4" y2="4.4" width="0.2032" layer="21"/>
<wire x1="4.4" y1="4.4" x2="3.1941" y2="4.4" width="0.2032" layer="21"/>
<smd name="2" x="-1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="1" x="0" y="3.8001" dx="0.8" dy="3.4" layer="1"/>
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
<text x="-4.0051" y="6.065" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.9751" y="-7.5601" size="1.778" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="7400">
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.4064" layer="94" curve="-180"/>
<text x="2.54" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I0" x="-7.62" y="2.54" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I1" x="-7.62" y="-2.54" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="O" x="7.62" y="0" visible="pad" length="middle" direction="out" function="dot" rot="R180"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*00" prefix="IC">
<description>Quad 2-input &lt;b&gt;NAND&lt;/b&gt; gate</description>
<gates>
<gate name="A" symbol="7400" x="20.32" y="0" swaplevel="1"/>
<gate name="B" symbol="7400" x="20.32" y="-12.7" swaplevel="1"/>
<gate name="C" symbol="7400" x="43.18" y="0" swaplevel="1"/>
<gate name="D" symbol="7400" x="43.18" y="-12.7" swaplevel="1"/>
<gate name="P" symbol="PWRN" x="5.08" y="-5.08" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="A" pin="I0" pad="1"/>
<connect gate="A" pin="I1" pad="2"/>
<connect gate="A" pin="O" pad="3"/>
<connect gate="B" pin="I0" pad="4"/>
<connect gate="B" pin="I1" pad="5"/>
<connect gate="B" pin="O" pad="6"/>
<connect gate="C" pin="I0" pad="9"/>
<connect gate="C" pin="I1" pad="10"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="D" pin="I0" pad="12"/>
<connect gate="D" pin="I1" pad="13"/>
<connect gate="D" pin="O" pad="11"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name=""/>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="ALS"/>
<technology name="AS"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
<device name="D" package="SO14">
<connects>
<connect gate="A" pin="I0" pad="1"/>
<connect gate="A" pin="I1" pad="2"/>
<connect gate="A" pin="O" pad="3"/>
<connect gate="B" pin="I0" pad="4"/>
<connect gate="B" pin="I1" pad="5"/>
<connect gate="B" pin="O" pad="6"/>
<connect gate="C" pin="I0" pad="9"/>
<connect gate="C" pin="I1" pad="10"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="D" pin="I0" pad="12"/>
<connect gate="D" pin="I1" pad="13"/>
<connect gate="D" pin="O" pad="11"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name=""/>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="ALS"/>
<technology name="AS"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="I0" pad="2"/>
<connect gate="A" pin="I1" pad="3"/>
<connect gate="A" pin="O" pad="4"/>
<connect gate="B" pin="I0" pad="6"/>
<connect gate="B" pin="I1" pad="8"/>
<connect gate="B" pin="O" pad="9"/>
<connect gate="C" pin="I0" pad="13"/>
<connect gate="C" pin="I1" pad="14"/>
<connect gate="C" pin="O" pad="12"/>
<connect gate="D" pin="I0" pad="18"/>
<connect gate="D" pin="I1" pad="19"/>
<connect gate="D" pin="O" pad="16"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name=""/>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="ALS"/>
<technology name="AS"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
<technology name="S"/>
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
<part name="IC1" library="74xx-eu" deviceset="74*00" device="N" technology="AC" value=""/>
<part name="IC2" library="74xx-eu" deviceset="74*00" device="N" technology="AC" value=""/>
<part name="IC3" library="74xx-eu" deviceset="74*00" device="N" technology="AC" value=""/>
<part name="IC4" library="74xx-eu" deviceset="74*00" device="N" technology="AC"/>
<part name="IC5" library="74xx-eu" deviceset="74*00" device="N" technology="AC" value=""/>
<part name="IC6" library="74xx-eu" deviceset="74*00" device="N" technology="AC" value=""/>
<part name="IC7" library="74xx-eu" deviceset="74*00" device="N" technology="AC"/>
<part name="IC8" library="74xx-eu" deviceset="74*00" device="N" technology="AC"/>
</parts>
<sheets>
<sheet>
<description>NAND</description>
<plain>
<text x="-15.24" y="66.04" size="1.778" layer="91">A</text>
<text x="55.88" y="68.58" size="1.778" layer="91">A</text>
<text x="55.88" y="63.5" size="1.778" layer="91">B</text>
<text x="127" y="66.04" size="1.778" layer="91">A AND B</text>
<text x="38.1" y="66.04" size="1.778" layer="91">NOT A</text>
<text x="38.1" y="43.18" size="1.778" layer="91">A OR B</text>
<text x="-15.24" y="50.8" size="1.778" layer="91">A</text>
<text x="-15.24" y="35.56" size="1.778" layer="91">B</text>
<text x="55.88" y="50.8" size="1.778" layer="91">A</text>
<text x="55.88" y="35.56" size="1.778" layer="91">B</text>
<text x="127" y="43.18" size="1.778" layer="91">A NOR B</text>
<text x="-15.24" y="22.86" size="1.778" layer="91">A</text>
<text x="-15.24" y="-2.54" size="1.778" layer="91">B</text>
<text x="40.64" y="10.16" size="1.778" layer="91">A XOR B</text>
<text x="55.88" y="22.86" size="1.778" layer="91">A</text>
<text x="55.88" y="-2.54" size="1.778" layer="91">B</text>
<text x="127" y="10.16" size="1.778" layer="91">A XNOR B</text>
</plain>
<instances>
<instance part="IC1" gate="A" x="10.16" y="66.04"/>
<instance part="IC1" gate="B" x="73.66" y="66.04"/>
<instance part="IC1" gate="C" x="106.68" y="43.18"/>
<instance part="IC1" gate="D" x="91.44" y="66.04"/>
<instance part="IC2" gate="A" x="2.54" y="50.8"/>
<instance part="IC2" gate="B" x="2.54" y="35.56"/>
<instance part="IC2" gate="C" x="20.32" y="43.18"/>
<instance part="IC3" gate="A" x="73.66" y="50.8"/>
<instance part="IC3" gate="B" x="73.66" y="35.56"/>
<instance part="IC3" gate="C" x="88.9" y="43.18"/>
<instance part="IC2" gate="D" x="-2.54" y="10.16"/>
<instance part="IC3" gate="D" x="12.7" y="20.32"/>
<instance part="IC4" gate="A" x="12.7" y="0"/>
<instance part="IC4" gate="B" x="27.94" y="10.16"/>
<instance part="IC5" gate="D" x="68.58" y="10.16"/>
<instance part="IC6" gate="D" x="83.82" y="20.32"/>
<instance part="IC7" gate="A" x="83.82" y="0"/>
<instance part="IC7" gate="B" x="99.06" y="10.16"/>
<instance part="IC8" gate="B" x="116.84" y="10.16"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="A" pin="I1"/>
<wire x1="2.54" y1="63.5" x2="-5.08" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="63.5" x2="-5.08" y2="66.04" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="I0"/>
<wire x1="-5.08" y1="66.04" x2="-5.08" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="68.58" x2="2.54" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="66.04" x2="-12.7" y2="66.04" width="0.1524" layer="91"/>
<junction x="-5.08" y="66.04"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="A" pin="O"/>
<wire x1="17.78" y1="66.04" x2="35.56" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC1" gate="B" pin="I0"/>
<wire x1="66.04" y1="68.58" x2="58.42" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="B" pin="I1"/>
<wire x1="66.04" y1="63.5" x2="58.42" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC2" gate="C" pin="I0"/>
<wire x1="12.7" y1="45.72" x2="12.7" y2="50.8" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="O"/>
<wire x1="12.7" y1="50.8" x2="10.16" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC2" gate="B" pin="O"/>
<pinref part="IC2" gate="C" pin="I1"/>
<wire x1="10.16" y1="35.56" x2="12.7" y2="35.56" width="0.1524" layer="91"/>
<wire x1="12.7" y1="35.56" x2="12.7" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC2" gate="A" pin="I0"/>
<wire x1="-5.08" y1="53.34" x2="-7.62" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="53.34" x2="-7.62" y2="50.8" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="I1"/>
<wire x1="-7.62" y1="50.8" x2="-7.62" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="48.26" x2="-5.08" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="50.8" x2="-12.7" y2="50.8" width="0.1524" layer="91"/>
<junction x="-7.62" y="50.8"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC2" gate="B" pin="I0"/>
<wire x1="-5.08" y1="38.1" x2="-7.62" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="38.1" x2="-7.62" y2="35.56" width="0.1524" layer="91"/>
<pinref part="IC2" gate="B" pin="I1"/>
<wire x1="-7.62" y1="35.56" x2="-7.62" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="33.02" x2="-5.08" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="35.56" x2="-12.7" y2="35.56" width="0.1524" layer="91"/>
<junction x="-7.62" y="35.56"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC1" gate="D" pin="I0"/>
<pinref part="IC1" gate="D" pin="I1"/>
<wire x1="83.82" y1="68.58" x2="83.82" y2="66.04" width="0.1524" layer="91"/>
<pinref part="IC1" gate="B" pin="O"/>
<wire x1="83.82" y1="66.04" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
<wire x1="83.82" y1="66.04" x2="81.28" y2="66.04" width="0.1524" layer="91"/>
<junction x="83.82" y="66.04"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="IC1" gate="D" pin="O"/>
<wire x1="99.06" y1="66.04" x2="121.92" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC2" gate="C" pin="O"/>
<wire x1="27.94" y1="43.18" x2="35.56" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC3" gate="C" pin="I0"/>
<wire x1="81.28" y1="45.72" x2="81.28" y2="50.8" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="O"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC3" gate="B" pin="O"/>
<pinref part="IC3" gate="C" pin="I1"/>
<wire x1="81.28" y1="35.56" x2="81.28" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="IC3" gate="A" pin="I0"/>
<wire x1="66.04" y1="53.34" x2="63.5" y2="53.34" width="0.1524" layer="91"/>
<wire x1="63.5" y1="53.34" x2="63.5" y2="50.8" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="I1"/>
<wire x1="63.5" y1="50.8" x2="63.5" y2="48.26" width="0.1524" layer="91"/>
<wire x1="63.5" y1="48.26" x2="66.04" y2="48.26" width="0.1524" layer="91"/>
<wire x1="63.5" y1="50.8" x2="58.42" y2="50.8" width="0.1524" layer="91"/>
<junction x="63.5" y="50.8"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC3" gate="B" pin="I0"/>
<wire x1="66.04" y1="38.1" x2="63.5" y2="38.1" width="0.1524" layer="91"/>
<wire x1="63.5" y1="38.1" x2="63.5" y2="35.56" width="0.1524" layer="91"/>
<pinref part="IC3" gate="B" pin="I1"/>
<wire x1="63.5" y1="35.56" x2="63.5" y2="33.02" width="0.1524" layer="91"/>
<wire x1="63.5" y1="33.02" x2="66.04" y2="33.02" width="0.1524" layer="91"/>
<wire x1="63.5" y1="35.56" x2="58.42" y2="35.56" width="0.1524" layer="91"/>
<junction x="63.5" y="35.56"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="IC3" gate="C" pin="O"/>
<wire x1="96.52" y1="43.18" x2="99.06" y2="43.18" width="0.1524" layer="91"/>
<pinref part="IC1" gate="C" pin="I0"/>
<wire x1="99.06" y1="45.72" x2="99.06" y2="43.18" width="0.1524" layer="91"/>
<pinref part="IC1" gate="C" pin="I1"/>
<wire x1="99.06" y1="40.64" x2="99.06" y2="43.18" width="0.1524" layer="91"/>
<junction x="99.06" y="43.18"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="IC1" gate="C" pin="O"/>
<wire x1="114.3" y1="43.18" x2="121.92" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="IC3" gate="D" pin="I0"/>
<wire x1="5.08" y1="22.86" x2="-10.16" y2="22.86" width="0.1524" layer="91"/>
<pinref part="IC2" gate="D" pin="I0"/>
<wire x1="-10.16" y1="22.86" x2="-12.7" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="12.7" x2="-10.16" y2="22.86" width="0.1524" layer="91"/>
<junction x="-10.16" y="22.86"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="IC4" gate="A" pin="I1"/>
<wire x1="5.08" y1="-2.54" x2="-10.16" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="IC2" gate="D" pin="I1"/>
<wire x1="-10.16" y1="-2.54" x2="-12.7" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="-2.54" width="0.1524" layer="91"/>
<junction x="-10.16" y="-2.54"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="IC2" gate="D" pin="O"/>
<pinref part="IC3" gate="D" pin="I1"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="17.78" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="I0"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="2.54" width="0.1524" layer="91"/>
<junction x="5.08" y="10.16"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="IC3" gate="D" pin="O"/>
<pinref part="IC4" gate="B" pin="I0"/>
<wire x1="20.32" y1="20.32" x2="20.32" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="IC4" gate="A" pin="O"/>
<pinref part="IC4" gate="B" pin="I1"/>
<wire x1="20.32" y1="0" x2="20.32" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="IC4" gate="B" pin="O"/>
<wire x1="35.56" y1="10.16" x2="38.1" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="IC6" gate="D" pin="I0"/>
<wire x1="76.2" y1="22.86" x2="60.96" y2="22.86" width="0.1524" layer="91"/>
<pinref part="IC5" gate="D" pin="I0"/>
<wire x1="60.96" y1="22.86" x2="58.42" y2="22.86" width="0.1524" layer="91"/>
<wire x1="60.96" y1="12.7" x2="60.96" y2="22.86" width="0.1524" layer="91"/>
<junction x="60.96" y="22.86"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="IC7" gate="A" pin="I1"/>
<wire x1="76.2" y1="-2.54" x2="60.96" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="IC5" gate="D" pin="I1"/>
<wire x1="60.96" y1="-2.54" x2="58.42" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="60.96" y1="7.62" x2="60.96" y2="-2.54" width="0.1524" layer="91"/>
<junction x="60.96" y="-2.54"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="IC5" gate="D" pin="O"/>
<pinref part="IC6" gate="D" pin="I1"/>
<wire x1="76.2" y1="10.16" x2="76.2" y2="17.78" width="0.1524" layer="91"/>
<pinref part="IC7" gate="A" pin="I0"/>
<wire x1="76.2" y1="10.16" x2="76.2" y2="2.54" width="0.1524" layer="91"/>
<junction x="76.2" y="10.16"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="IC6" gate="D" pin="O"/>
<pinref part="IC7" gate="B" pin="I0"/>
<wire x1="91.44" y1="20.32" x2="91.44" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="IC7" gate="A" pin="O"/>
<pinref part="IC7" gate="B" pin="I1"/>
<wire x1="91.44" y1="0" x2="91.44" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="IC7" gate="B" pin="O"/>
<wire x1="106.68" y1="10.16" x2="109.22" y2="10.16" width="0.1524" layer="91"/>
<pinref part="IC8" gate="B" pin="I0"/>
<wire x1="109.22" y1="12.7" x2="109.22" y2="10.16" width="0.1524" layer="91"/>
<pinref part="IC8" gate="B" pin="I1"/>
<wire x1="109.22" y1="7.62" x2="109.22" y2="10.16" width="0.1524" layer="91"/>
<junction x="109.22" y="10.16"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
