<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
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
<package name="DIL16">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
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
<wire x1="4.699" y1="1.9558" x2="-4.699" y2="1.9558" width="0.1524" layer="51"/>
<wire x1="4.699" y1="-1.9558" x2="5.08" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.5748" x2="-4.699" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.9558" x2="5.08" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.5748" x2="-4.699" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="-1.9558" x2="4.699" y2="-1.9558" width="0.1524" layer="51"/>
<wire x1="5.08" y1="-1.5748" x2="5.08" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.5748" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-5.08" y1="-1.6002" x2="5.08" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="-3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.81" y="-0.762" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.461" y="-1.905" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
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
<symbol name="74595">
<wire x1="-7.62" y1="-15.24" x2="7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="12.7" width="0.4064" layer="94"/>
<wire x1="7.62" y1="12.7" x2="-7.62" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="12.7" x2="-7.62" y2="-15.24" width="0.4064" layer="94"/>
<text x="-7.62" y="13.335" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-7.62" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="QB" x="12.7" y="7.62" length="middle" direction="hiz" rot="R180"/>
<pin name="QC" x="12.7" y="5.08" length="middle" direction="hiz" rot="R180"/>
<pin name="QD" x="12.7" y="2.54" length="middle" direction="hiz" rot="R180"/>
<pin name="QE" x="12.7" y="0" length="middle" direction="hiz" rot="R180"/>
<pin name="QF" x="12.7" y="-2.54" length="middle" direction="hiz" rot="R180"/>
<pin name="QG" x="12.7" y="-5.08" length="middle" direction="hiz" rot="R180"/>
<pin name="QH" x="12.7" y="-7.62" length="middle" direction="hiz" rot="R180"/>
<pin name="SCL" x="-12.7" y="2.54" length="middle" direction="in" function="dot"/>
<pin name="SCK" x="-12.7" y="5.08" length="middle" direction="in" function="clk"/>
<pin name="RCK" x="-12.7" y="-2.54" length="middle" direction="in" function="clk"/>
<pin name="G" x="-12.7" y="-12.7" length="middle" direction="in" function="dot"/>
<pin name="SER" x="-12.7" y="10.16" length="middle" direction="in"/>
<pin name="QA" x="12.7" y="10.16" length="middle" direction="hiz" rot="R180"/>
<pin name="QH*" x="12.7" y="-12.7" length="middle" direction="hiz" rot="R180"/>
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
<deviceset name="74*595" prefix="IC">
<description>8-bit &lt;b&gt;SHIFT REGISTER&lt;/b&gt;, output latch</description>
<gates>
<gate name="A" symbol="74595" x="22.86" y="0"/>
<gate name="P" symbol="PWRN" x="-5.08" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL16">
<connects>
<connect gate="A" pin="G" pad="13"/>
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
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
</technologies>
</device>
<device name="D" package="SO16">
<connects>
<connect gate="A" pin="G" pad="13"/>
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
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="HC"/>
<technology name="HCT"/>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="G" pad="17"/>
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
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA03-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.81" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="-3.81" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
</package>
<package name="MA08-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-10.16" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-9.398" y="-2.921" size="1.27" layer="21" ratio="10">1</text>
<text x="8.255" y="1.651" size="1.27" layer="21" ratio="10">8</text>
<text x="-1.27" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA03-1">
<wire x1="3.81" y1="-5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-1.27" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="MA08-1">
<wire x1="3.81" y1="-10.16" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="12.7" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="12.7" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<text x="-1.27" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA03-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA03-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA03-1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
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
<deviceset name="MA08-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA08-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA08-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
<connect gate="1" pin="7" pad="7"/>
<connect gate="1" pin="8" pad="8"/>
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
<part name="IC1" library="74xx-eu" deviceset="74*595" device="D" technology="HC"/>
<part name="IC2" library="74xx-eu" deviceset="74*595" device="D" technology="HC"/>
<part name="IC3" library="74xx-eu" deviceset="74*595" device="D" technology="HC"/>
<part name="IC4" library="74xx-eu" deviceset="74*595" device="D" technology="HC"/>
<part name="IC5" library="74xx-eu" deviceset="74*595" device="D" technology="HC"/>
<part name="IC6" library="74xx-eu" deviceset="74*595" device="D" technology="HC"/>
<part name="SV1" library="con-lstb" deviceset="MA03-1" device=""/>
<part name="SV2" library="con-lstb" deviceset="MA03-1" device=""/>
<part name="SV3" library="con-lstb" deviceset="MA08-1" device=""/>
<part name="SV4" library="con-lstb" deviceset="MA08-1" device=""/>
<part name="SV5" library="con-lstb" deviceset="MA08-1" device=""/>
<part name="SV6" library="con-lstb" deviceset="MA08-1" device=""/>
<part name="SV7" library="con-lstb" deviceset="MA08-1" device=""/>
<part name="SV8" library="con-lstb" deviceset="MA08-1" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="A" x="-45.72" y="-20.32" rot="R90"/>
<instance part="IC2" gate="A" x="-7.62" y="-20.32" rot="R90"/>
<instance part="IC3" gate="A" x="30.48" y="-20.32" rot="R90"/>
<instance part="IC4" gate="A" x="68.58" y="-20.32" rot="R90"/>
<instance part="IC5" gate="A" x="106.68" y="-20.32" rot="R90"/>
<instance part="IC6" gate="A" x="144.78" y="-20.32" rot="R90"/>
<instance part="SV1" gate="G$1" x="-53.34" y="-48.26" rot="R90"/>
<instance part="SV2" gate="G$1" x="-73.66" y="-50.8" rot="R90"/>
<instance part="SV3" gate="1" x="-48.26" y="7.62" rot="R270"/>
<instance part="SV4" gate="1" x="-10.16" y="7.62" rot="R270"/>
<instance part="SV5" gate="1" x="27.94" y="7.62" rot="R270"/>
<instance part="SV6" gate="1" x="66.04" y="7.62" rot="R270"/>
<instance part="SV7" gate="1" x="104.14" y="7.62" rot="R270"/>
<instance part="SV8" gate="1" x="142.24" y="7.62" rot="R270"/>
<instance part="IC1" gate="P" x="-73.66" y="-27.94" rot="R270"/>
<instance part="IC2" gate="P" x="-73.66" y="-20.32" rot="R270"/>
<instance part="IC3" gate="P" x="-73.66" y="-12.7" rot="R270"/>
<instance part="IC4" gate="P" x="-73.66" y="-5.08" rot="R270"/>
<instance part="IC5" gate="P" x="-73.66" y="2.54" rot="R270"/>
<instance part="IC6" gate="P" x="-73.66" y="10.16" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QH*"/>
<wire x1="-33.02" y1="-7.62" x2="-25.4" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="-7.62" x2="-25.4" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="SER"/>
<wire x1="-25.4" y1="-33.02" x2="-17.78" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QH*"/>
<wire x1="5.08" y1="-7.62" x2="12.7" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-7.62" x2="12.7" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="SER"/>
<wire x1="12.7" y1="-33.02" x2="20.32" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QH*"/>
<wire x1="43.18" y1="-7.62" x2="50.8" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-7.62" x2="50.8" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="SER"/>
<wire x1="50.8" y1="-33.02" x2="58.42" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QH*"/>
<wire x1="81.28" y1="-7.62" x2="88.9" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-7.62" x2="88.9" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="IC5" gate="A" pin="SER"/>
<wire x1="88.9" y1="-33.02" x2="96.52" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC5" gate="A" pin="QH*"/>
<wire x1="119.38" y1="-7.62" x2="127" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="127" y1="-7.62" x2="127" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="IC6" gate="A" pin="SER"/>
<wire x1="127" y1="-33.02" x2="134.62" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QA"/>
<pinref part="SV3" gate="1" pin="1"/>
<wire x1="-55.88" y1="0" x2="-55.88" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QB"/>
<pinref part="SV3" gate="1" pin="2"/>
<wire x1="-53.34" y1="0" x2="-53.34" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QC"/>
<pinref part="SV3" gate="1" pin="3"/>
<wire x1="-50.8" y1="0" x2="-50.8" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QD"/>
<pinref part="SV3" gate="1" pin="4"/>
<wire x1="-48.26" y1="0" x2="-48.26" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QE"/>
<pinref part="SV3" gate="1" pin="5"/>
<wire x1="-45.72" y1="0" x2="-45.72" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QF"/>
<pinref part="SV3" gate="1" pin="6"/>
<wire x1="-43.18" y1="0" x2="-43.18" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QG"/>
<pinref part="SV3" gate="1" pin="7"/>
<wire x1="-40.64" y1="0" x2="-40.64" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QH"/>
<pinref part="SV3" gate="1" pin="8"/>
<wire x1="-38.1" y1="0" x2="-38.1" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QA"/>
<pinref part="SV4" gate="1" pin="1"/>
<wire x1="-17.78" y1="0" x2="-17.78" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QB"/>
<pinref part="SV4" gate="1" pin="2"/>
<wire x1="-15.24" y1="0" x2="-15.24" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QC"/>
<pinref part="SV4" gate="1" pin="3"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QD"/>
<pinref part="SV4" gate="1" pin="4"/>
<wire x1="-10.16" y1="0" x2="-10.16" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QE"/>
<pinref part="SV4" gate="1" pin="5"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QF"/>
<pinref part="SV4" gate="1" pin="6"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QG"/>
<pinref part="SV4" gate="1" pin="7"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QH"/>
<pinref part="SV4" gate="1" pin="8"/>
<wire x1="0" y1="0" x2="0" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QA"/>
<pinref part="SV5" gate="1" pin="1"/>
<wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QB"/>
<pinref part="SV5" gate="1" pin="2"/>
<wire x1="22.86" y1="0" x2="22.86" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QC"/>
<pinref part="SV5" gate="1" pin="3"/>
<wire x1="25.4" y1="0" x2="25.4" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QD"/>
<pinref part="SV5" gate="1" pin="4"/>
<wire x1="27.94" y1="0" x2="27.94" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QE"/>
<pinref part="SV5" gate="1" pin="5"/>
<wire x1="30.48" y1="0" x2="30.48" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QF"/>
<pinref part="SV5" gate="1" pin="6"/>
<wire x1="33.02" y1="0" x2="33.02" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QG"/>
<pinref part="SV5" gate="1" pin="7"/>
<wire x1="35.56" y1="0" x2="35.56" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QH"/>
<pinref part="SV5" gate="1" pin="8"/>
<wire x1="38.1" y1="0" x2="38.1" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QA"/>
<pinref part="SV6" gate="1" pin="1"/>
<wire x1="58.42" y1="0" x2="58.42" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QB"/>
<pinref part="SV6" gate="1" pin="2"/>
<wire x1="60.96" y1="0" x2="60.96" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QC"/>
<pinref part="SV6" gate="1" pin="3"/>
<wire x1="63.5" y1="0" x2="63.5" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QD"/>
<pinref part="SV6" gate="1" pin="4"/>
<wire x1="66.04" y1="0" x2="66.04" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QE"/>
<pinref part="SV6" gate="1" pin="5"/>
<wire x1="68.58" y1="0" x2="68.58" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QF"/>
<pinref part="SV6" gate="1" pin="6"/>
<wire x1="71.12" y1="0" x2="71.12" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QG"/>
<pinref part="SV6" gate="1" pin="7"/>
<wire x1="73.66" y1="0" x2="73.66" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QH"/>
<pinref part="SV6" gate="1" pin="8"/>
<wire x1="76.2" y1="0" x2="76.2" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="IC5" gate="A" pin="QA"/>
<pinref part="SV7" gate="1" pin="1"/>
<wire x1="96.52" y1="0" x2="96.52" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="IC5" gate="A" pin="QB"/>
<pinref part="SV7" gate="1" pin="2"/>
<wire x1="99.06" y1="0" x2="99.06" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="IC5" gate="A" pin="QC"/>
<pinref part="SV7" gate="1" pin="3"/>
<wire x1="101.6" y1="0" x2="101.6" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="IC5" gate="A" pin="QD"/>
<pinref part="SV7" gate="1" pin="4"/>
<wire x1="104.14" y1="0" x2="104.14" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="IC5" gate="A" pin="QE"/>
<pinref part="SV7" gate="1" pin="5"/>
<wire x1="106.68" y1="0" x2="106.68" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="IC5" gate="A" pin="QF"/>
<pinref part="SV7" gate="1" pin="6"/>
<wire x1="109.22" y1="0" x2="109.22" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="IC5" gate="A" pin="QG"/>
<pinref part="SV7" gate="1" pin="7"/>
<wire x1="111.76" y1="0" x2="111.76" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="IC5" gate="A" pin="QH"/>
<pinref part="SV7" gate="1" pin="8"/>
<wire x1="114.3" y1="0" x2="114.3" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="IC6" gate="A" pin="QA"/>
<pinref part="SV8" gate="1" pin="1"/>
<wire x1="134.62" y1="0" x2="134.62" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="IC6" gate="A" pin="QB"/>
<pinref part="SV8" gate="1" pin="2"/>
<wire x1="137.16" y1="0" x2="137.16" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="IC6" gate="A" pin="QC"/>
<pinref part="SV8" gate="1" pin="3"/>
<wire x1="139.7" y1="0" x2="139.7" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="IC6" gate="A" pin="QD"/>
<pinref part="SV8" gate="1" pin="4"/>
<wire x1="142.24" y1="0" x2="142.24" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="IC6" gate="A" pin="QE"/>
<pinref part="SV8" gate="1" pin="5"/>
<wire x1="144.78" y1="0" x2="144.78" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="IC6" gate="A" pin="QF"/>
<pinref part="SV8" gate="1" pin="6"/>
<wire x1="147.32" y1="0" x2="147.32" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="IC6" gate="A" pin="QG"/>
<pinref part="SV8" gate="1" pin="7"/>
<wire x1="149.86" y1="0" x2="149.86" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="IC6" gate="A" pin="QH"/>
<pinref part="SV8" gate="1" pin="8"/>
<wire x1="152.4" y1="0" x2="152.4" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="3"/>
<pinref part="IC1" gate="A" pin="SER"/>
<wire x1="-55.88" y1="-40.64" x2="-55.88" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="1"/>
<wire x1="-50.8" y1="-40.64" x2="-50.8" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-38.1" x2="-43.18" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="IC6" gate="A" pin="RCK"/>
<wire x1="-43.18" y1="-38.1" x2="-5.08" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-38.1" x2="33.02" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-38.1" x2="71.12" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-38.1" x2="109.22" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="109.22" y1="-38.1" x2="147.32" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="147.32" y1="-33.02" x2="147.32" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="RCK"/>
<wire x1="-43.18" y1="-38.1" x2="-43.18" y2="-33.02" width="0.1524" layer="91"/>
<junction x="-43.18" y="-38.1"/>
<pinref part="IC2" gate="A" pin="RCK"/>
<wire x1="-5.08" y1="-38.1" x2="-5.08" y2="-33.02" width="0.1524" layer="91"/>
<junction x="-5.08" y="-38.1"/>
<pinref part="IC3" gate="A" pin="RCK"/>
<wire x1="33.02" y1="-38.1" x2="33.02" y2="-33.02" width="0.1524" layer="91"/>
<junction x="33.02" y="-38.1"/>
<pinref part="IC4" gate="A" pin="RCK"/>
<wire x1="71.12" y1="-38.1" x2="71.12" y2="-33.02" width="0.1524" layer="91"/>
<junction x="71.12" y="-38.1"/>
<pinref part="IC5" gate="A" pin="RCK"/>
<wire x1="109.22" y1="-38.1" x2="109.22" y2="-33.02" width="0.1524" layer="91"/>
<junction x="109.22" y="-38.1"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<wire x1="-53.34" y1="-40.64" x2="-53.34" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="IC6" gate="A" pin="SCK"/>
<wire x1="-53.34" y1="-35.56" x2="-50.8" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-35.56" x2="-12.7" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="-35.56" x2="25.4" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-35.56" x2="63.5" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-35.56" x2="101.6" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-35.56" x2="139.7" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="139.7" y1="-35.56" x2="139.7" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="SCK"/>
<wire x1="-50.8" y1="-33.02" x2="-50.8" y2="-35.56" width="0.1524" layer="91"/>
<junction x="-50.8" y="-35.56"/>
<pinref part="IC2" gate="A" pin="SCK"/>
<wire x1="-12.7" y1="-33.02" x2="-12.7" y2="-35.56" width="0.1524" layer="91"/>
<junction x="-12.7" y="-35.56"/>
<pinref part="IC3" gate="A" pin="SCK"/>
<wire x1="25.4" y1="-33.02" x2="25.4" y2="-35.56" width="0.1524" layer="91"/>
<junction x="25.4" y="-35.56"/>
<pinref part="IC4" gate="A" pin="SCK"/>
<wire x1="63.5" y1="-33.02" x2="63.5" y2="-35.56" width="0.1524" layer="91"/>
<junction x="63.5" y="-35.56"/>
<pinref part="IC5" gate="A" pin="SCK"/>
<wire x1="101.6" y1="-33.02" x2="101.6" y2="-35.56" width="0.1524" layer="91"/>
<junction x="101.6" y="-35.56"/>
<pinref part="SV1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="IC1" gate="P" pin="GND"/>
<pinref part="IC2" gate="P" pin="GND"/>
<wire x1="-81.28" y1="-27.94" x2="-81.28" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="IC3" gate="P" pin="GND"/>
<wire x1="-81.28" y1="-20.32" x2="-81.28" y2="-12.7" width="0.1524" layer="91"/>
<junction x="-81.28" y="-20.32"/>
<pinref part="IC4" gate="P" pin="GND"/>
<wire x1="-81.28" y1="-12.7" x2="-81.28" y2="-5.08" width="0.1524" layer="91"/>
<junction x="-81.28" y="-12.7"/>
<pinref part="IC5" gate="P" pin="GND"/>
<wire x1="-81.28" y1="-5.08" x2="-81.28" y2="2.54" width="0.1524" layer="91"/>
<junction x="-81.28" y="-5.08"/>
<pinref part="IC6" gate="P" pin="GND"/>
<wire x1="-81.28" y1="2.54" x2="-81.28" y2="10.16" width="0.1524" layer="91"/>
<junction x="-81.28" y="2.54"/>
<wire x1="-81.28" y1="-27.94" x2="-81.28" y2="-43.18" width="0.1524" layer="91"/>
<junction x="-81.28" y="-27.94"/>
<pinref part="SV2" gate="G$1" pin="3"/>
<wire x1="-81.28" y1="-43.18" x2="-76.2" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="IC1" gate="A" pin="SCL"/>
<wire x1="-48.26" y1="-33.02" x2="-48.26" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="G"/>
<wire x1="-48.26" y1="-43.18" x2="-43.18" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-43.18" x2="-33.02" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-43.18" x2="-33.02" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="G"/>
<wire x1="-33.02" y1="-43.18" x2="-10.16" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="-43.18" x2="5.08" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-43.18" x2="5.08" y2="-33.02" width="0.1524" layer="91"/>
<junction x="-33.02" y="-43.18"/>
<pinref part="IC2" gate="A" pin="SCL"/>
<wire x1="-10.16" y1="-43.18" x2="-10.16" y2="-33.02" width="0.1524" layer="91"/>
<junction x="-10.16" y="-43.18"/>
<wire x1="5.08" y1="-43.18" x2="27.94" y2="-43.18" width="0.1524" layer="91"/>
<junction x="5.08" y="-43.18"/>
<pinref part="IC3" gate="A" pin="SCL"/>
<wire x1="27.94" y1="-43.18" x2="43.18" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-33.02" x2="27.94" y2="-43.18" width="0.1524" layer="91"/>
<junction x="27.94" y="-43.18"/>
<pinref part="IC3" gate="A" pin="G"/>
<wire x1="43.18" y1="-33.02" x2="43.18" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="SCL"/>
<wire x1="66.04" y1="-33.02" x2="66.04" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-43.18" x2="43.18" y2="-43.18" width="0.1524" layer="91"/>
<junction x="43.18" y="-43.18"/>
<pinref part="IC4" gate="A" pin="G"/>
<wire x1="66.04" y1="-43.18" x2="81.28" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-43.18" x2="81.28" y2="-33.02" width="0.1524" layer="91"/>
<junction x="66.04" y="-43.18"/>
<pinref part="IC5" gate="A" pin="SCL"/>
<wire x1="81.28" y1="-43.18" x2="104.14" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-43.18" x2="104.14" y2="-33.02" width="0.1524" layer="91"/>
<junction x="81.28" y="-43.18"/>
<pinref part="IC5" gate="A" pin="G"/>
<wire x1="104.14" y1="-43.18" x2="119.38" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="119.38" y1="-43.18" x2="119.38" y2="-33.02" width="0.1524" layer="91"/>
<junction x="104.14" y="-43.18"/>
<pinref part="IC6" gate="A" pin="SCL"/>
<wire x1="119.38" y1="-43.18" x2="142.24" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="142.24" y1="-43.18" x2="142.24" y2="-33.02" width="0.1524" layer="91"/>
<junction x="119.38" y="-43.18"/>
<pinref part="IC6" gate="A" pin="G"/>
<wire x1="142.24" y1="-43.18" x2="157.48" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-43.18" x2="157.48" y2="-33.02" width="0.1524" layer="91"/>
<junction x="142.24" y="-43.18"/>
<wire x1="-43.18" y1="-43.18" x2="-43.18" y2="-50.8" width="0.1524" layer="91"/>
<junction x="-43.18" y="-43.18"/>
<wire x1="-43.18" y1="-50.8" x2="-63.5" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="-50.8" x2="-63.5" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="IC1" gate="P" pin="VCC"/>
<pinref part="IC6" gate="P" pin="VCC"/>
<wire x1="-66.04" y1="-27.94" x2="-66.04" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="IC5" gate="P" pin="VCC"/>
<wire x1="-66.04" y1="-20.32" x2="-66.04" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-12.7" x2="-66.04" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-5.08" x2="-66.04" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="2.54" x2="-66.04" y2="10.16" width="0.1524" layer="91"/>
<junction x="-66.04" y="2.54"/>
<pinref part="IC3" gate="P" pin="VCC"/>
<junction x="-66.04" y="-12.7"/>
<pinref part="IC4" gate="P" pin="VCC"/>
<junction x="-66.04" y="-5.08"/>
<pinref part="IC2" gate="P" pin="VCC"/>
<junction x="-66.04" y="-20.32"/>
<pinref part="SV2" gate="G$1" pin="1"/>
<wire x1="-71.12" y1="-43.18" x2="-66.04" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-43.18" x2="-66.04" y2="-35.56" width="0.1524" layer="91"/>
<junction x="-66.04" y="-27.94"/>
<wire x1="-66.04" y1="-35.56" x2="-66.04" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="-35.56" x2="-66.04" y2="-35.56" width="0.1524" layer="91"/>
<junction x="-66.04" y="-35.56"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>