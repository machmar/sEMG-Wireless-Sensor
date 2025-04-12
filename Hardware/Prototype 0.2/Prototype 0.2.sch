<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
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
<library name="frames" urn="urn:adsk.eagle:library:42976481">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC" urn="urn:adsk.eagle:symbol:42979716/1" library_version="4">
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
<text x="217.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" urn="urn:adsk.eagle:component:42979783/1" prefix="FRAME" uservalue="yes" library_version="4">
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
<library name="Ecg Electrodes" urn="urn:adsk.wipprod:fs.file:vf.46NIdcSXTXavAmWnSHNz0g">
<packages>
<package name="ELECTRODE_CONNECTOR" library_version="10">
<circle x="0" y="0" radius="1.825" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="1.95" width="0.1524" layer="51"/>
<pad name="P$1" x="-6" y="1.8" drill="0.45" diameter="1.27" shape="offset"/>
<pad name="P$2" x="-6" y="-1.8" drill="0.45" diameter="1.27" shape="offset"/>
<pad name="P$3" x="6" y="-1.8" drill="0.45" diameter="1.27" shape="offset" rot="R180"/>
<pad name="P$4" x="6" y="1.8" drill="0.45" diameter="1.27" shape="offset" rot="R180"/>
<wire x1="6" y1="1.8" x2="-6" y2="1.8" width="0.35" layer="21"/>
<wire x1="6" y1="-1.8" x2="-6" y2="-1.8" width="0.35" layer="21"/>
<hole x="0" y="0" drill="5.5"/>
</package>
<package name="SHIELDED-SMD" library_version="12">
<smd name="SIG" x="0.25" y="0" dx="1" dy="2.5" layer="1" rot="R90"/>
<smd name="GND1" x="0" y="1.27" dx="0.6" dy="3" layer="1" rot="R90"/>
<smd name="GND2" x="0" y="-1.27" dx="0.6" dy="3" layer="1" rot="R90"/>
<wire x1="1.5875" y1="1.905" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.5875" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.905" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.905" y1="-1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<text x="1.27" y="2.2225" size="1.016" layer="21" align="bottom-right">&gt;NAME</text>
</package>
<package name="QFN50P400X400X80-21T275" urn="urn:adsk.eagle:footprint:28349021/3" library_version="15">
<description>20-QFN, 0.50 mm pitch, 4.00 X 4.00 X 0.80 mm body, 2.75 X 2.75 mm thermal pad
 &lt;p&gt;20-pin QFN package with 0.50 mm pitch  with body size 4.00 X 4.00 X 0.80 mm and thermal pad size 2.75 X 2.75 mm&lt;/p&gt;</description>
<smd name="1" x="-2" y="1" dx="0.8" dy="0.3" layer="1" roundness="100"/>
<smd name="2" x="-2" y="0.5" dx="0.8" dy="0.3" layer="1" roundness="100"/>
<smd name="3" x="-2" y="0" dx="0.8" dy="0.3" layer="1" roundness="100"/>
<smd name="4" x="-2" y="-0.5" dx="0.8" dy="0.3" layer="1" roundness="100"/>
<smd name="5" x="-2" y="-1" dx="0.8" dy="0.3" layer="1" roundness="100"/>
<smd name="6" x="-1" y="-2" dx="0.8" dy="0.3" layer="1" roundness="100" rot="R90"/>
<smd name="7" x="-0.5" y="-2" dx="0.8" dy="0.3" layer="1" roundness="100" rot="R90"/>
<smd name="8" x="0" y="-2" dx="0.8" dy="0.3" layer="1" roundness="100" rot="R90"/>
<smd name="9" x="0.5" y="-2" dx="0.8" dy="0.3" layer="1" roundness="100" rot="R90"/>
<smd name="10" x="1" y="-2" dx="0.8" dy="0.3" layer="1" roundness="100" rot="R90"/>
<smd name="11" x="2" y="-1" dx="0.8" dy="0.3" layer="1" roundness="100"/>
<smd name="12" x="2" y="-0.5" dx="0.8" dy="0.3" layer="1" roundness="100"/>
<smd name="13" x="2" y="0" dx="0.8" dy="0.3" layer="1" roundness="100"/>
<smd name="14" x="2" y="0.5" dx="0.8" dy="0.3" layer="1" roundness="100"/>
<smd name="15" x="2" y="1" dx="0.8" dy="0.3" layer="1" roundness="100"/>
<smd name="16" x="1" y="2" dx="0.8" dy="0.3" layer="1" roundness="100" rot="R90"/>
<smd name="17" x="0.5" y="2" dx="0.8" dy="0.3" layer="1" roundness="100" rot="R90"/>
<smd name="18" x="0" y="2" dx="0.8" dy="0.3" layer="1" roundness="100" rot="R90"/>
<smd name="19" x="-0.5" y="2" dx="0.8" dy="0.3" layer="1" roundness="100" rot="R90"/>
<smd name="20" x="-1" y="2" dx="0.8" dy="0.3" layer="1" roundness="100" rot="R90"/>
<smd name="21" x="0" y="0" dx="2.75" dy="2.75" layer="1" thermals="no"/>
<circle x="-2.504" y="1.654" radius="0.25" width="0" layer="21"/>
<wire x1="-2" y1="1.404" x2="-2" y2="2" width="0.12" layer="21"/>
<wire x1="-2" y1="2" x2="-1.404" y2="2" width="0.12" layer="21"/>
<wire x1="2" y1="2" x2="2" y2="1.404" width="0.12" layer="21"/>
<wire x1="2" y1="2" x2="1.404" y2="2" width="0.12" layer="21"/>
<wire x1="-2" y1="-1.404" x2="-2" y2="-2" width="0.12" layer="21"/>
<wire x1="-2" y1="-2" x2="-1.404" y2="-2" width="0.12" layer="21"/>
<wire x1="2" y1="-2" x2="2" y2="-1.404" width="0.12" layer="21"/>
<wire x1="2" y1="-2" x2="1.404" y2="-2" width="0.12" layer="21"/>
<wire x1="-2" y1="-2" x2="-2" y2="2" width="0.12" layer="51"/>
<wire x1="-2" y1="2" x2="2" y2="2" width="0.12" layer="51"/>
<wire x1="2" y1="2" x2="2" y2="-2" width="0.12" layer="51"/>
<wire x1="2" y1="-2" x2="-2" y2="-2" width="0.12" layer="51"/>
<text x="0" y="3.81" size="1.27" layer="25" align="top-center">&gt;NAME</text>
<text x="0" y="-3.81" size="1.27" layer="27" align="bottom-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="QFN50P400X400X80-21T275" urn="urn:adsk.eagle:package:28349030/3" type="model" library_version="15">
<description>20-QFN, 0.50 mm pitch, 4.00 X 4.00 X 0.80 mm body, 2.75 X 2.75 mm thermal pad
 &lt;p&gt;20-pin QFN package with 0.50 mm pitch  with body size 4.00 X 4.00 X 0.80 mm and thermal pad size 2.75 X 2.75 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="QFN50P400X400X80-21T275"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="ECG_ELECTRODE_CONNECTOR" library_version="10">
<circle x="0" y="0" radius="1.27" width="0.1524" layer="94"/>
<circle x="0" y="0" radius="6.35" width="0.1524" layer="94"/>
<pin name="P$1" x="-7.62" y="0" visible="off"/>
<text x="-6.35" y="-8.382" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-10.922" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="SHIELDED-SMD" library_version="11">
<wire x1="0" y1="2.54" x2="0" y2="-2.54" width="0.1524" layer="94" curve="180"/>
<pin name="SIGNAL" x="-7.62" y="0" visible="pin"/>
<pin name="GND" x="-7.62" y="2.54" visible="pin"/>
<text x="-5.08" y="3.81" size="1.778" layer="95">&gt;NAME</text>
</symbol>
<symbol name="AD8232" library_version="14">
<pin name="HP_DRIVE" x="-20.32" y="12.7" length="middle"/>
<pin name="+IN" x="-20.32" y="10.16" length="middle"/>
<pin name="-IN" x="-20.32" y="7.62" length="middle"/>
<pin name="RLDFB" x="-20.32" y="5.08" length="middle"/>
<pin name="RLD" x="-20.32" y="2.54" length="middle"/>
<pin name="SW" x="-20.32" y="0" length="middle"/>
<pin name="OPAMP+" x="-20.32" y="-2.54" length="middle"/>
<pin name="REFOUT" x="-20.32" y="-5.08" length="middle"/>
<pin name="OPAMP-" x="-20.32" y="-7.62" length="middle"/>
<pin name="OUT" x="-20.32" y="-10.16" length="middle"/>
<pin name="HPSENSE" x="20.32" y="12.7" length="middle" rot="R180"/>
<pin name="IAOUT" x="20.32" y="10.16" length="middle" rot="R180"/>
<pin name="REFIN" x="20.32" y="7.62" length="middle" rot="R180"/>
<pin name="+VS" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="GND" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="FR" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="AC/DC" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="SDN" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="LO+" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="LO-" x="20.32" y="-10.16" length="middle" rot="R180"/>
<wire x1="-15.24" y1="15.24" x2="-15.24" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="-15.24" y1="-12.7" x2="15.24" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-12.7" x2="15.24" y2="15.24" width="0.1524" layer="94"/>
<wire x1="15.24" y1="15.24" x2="-15.24" y2="15.24" width="0.1524" layer="94"/>
<text x="-15.24" y="15.494" size="1.778" layer="95">&gt;NAME</text>
<text x="-15.24" y="-12.954" size="1.778" layer="96" align="top-left">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ECG_ELECTRODE_CONNECTOR" uservalue="yes" library_version="10">
<gates>
<gate name="G$1" symbol="ECG_ELECTRODE_CONNECTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ELECTRODE_CONNECTOR">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1 P$2 P$3 P$4" route="any"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SHIELDED-CONNECTOR" prefix="CON" library_version="12">
<gates>
<gate name="G$1" symbol="SHIELDED-SMD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SHIELDED-SMD">
<connects>
<connect gate="G$1" pin="GND" pad="GND1 GND2"/>
<connect gate="G$1" pin="SIGNAL" pad="SIG"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="AD8232" library_version="15">
<gates>
<gate name="IC" symbol="AD8232" x="0" y="0"/>
</gates>
<devices>
<device name="LFCSP" package="QFN50P400X400X80-21T275">
<connects>
<connect gate="IC" pin="+IN" pad="2"/>
<connect gate="IC" pin="+VS" pad="17"/>
<connect gate="IC" pin="-IN" pad="3"/>
<connect gate="IC" pin="AC/DC" pad="14"/>
<connect gate="IC" pin="FR" pad="15"/>
<connect gate="IC" pin="GND" pad="16 21"/>
<connect gate="IC" pin="HPSENSE" pad="20"/>
<connect gate="IC" pin="HP_DRIVE" pad="1"/>
<connect gate="IC" pin="IAOUT" pad="19"/>
<connect gate="IC" pin="LO+" pad="12"/>
<connect gate="IC" pin="LO-" pad="11"/>
<connect gate="IC" pin="OPAMP+" pad="7"/>
<connect gate="IC" pin="OPAMP-" pad="9"/>
<connect gate="IC" pin="OUT" pad="10"/>
<connect gate="IC" pin="REFIN" pad="18"/>
<connect gate="IC" pin="REFOUT" pad="8"/>
<connect gate="IC" pin="RLD" pad="5"/>
<connect gate="IC" pin="RLDFB" pad="4"/>
<connect gate="IC" pin="SDN" pad="13"/>
<connect gate="IC" pin="SW" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:28349030/3"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="batery holder" urn="urn:adsk.wipprod:fs.file:vf.gun4ivynSsSD8c7IOmTmhw">
<description>&lt;b&gt;https://componentsearchengine.com&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="BAT-HLD-005-THM" library_version="7">
<smd name="P$1" x="0" y="0" dx="17.9" dy="17.9" layer="1" roundness="100"/>
<pad name="P$2" x="-10.6" y="0" drill="1.9" diameter="2.6"/>
<pad name="P$3" x="10.6" y="0" drill="1.9" diameter="2.6"/>
<wire x1="-5.08" y1="-10.25" x2="5.08" y2="-10.25" width="0.3" layer="21"/>
<wire x1="-10.6" y1="3.65" x2="-10.6" y2="-5.65" width="0.3" layer="21"/>
<wire x1="10.6" y1="3.65" x2="10.6" y2="-5.65" width="0.3" layer="21"/>
<wire x1="-10.6" y1="-5.65" x2="-5.08" y2="-10.25" width="0.127" layer="21"/>
<wire x1="10.6" y1="-5.65" x2="5.08" y2="-10.25" width="0.127" layer="21"/>
<wire x1="-10.6" y1="3.65" x2="-10.6" y2="9.4" width="0.127" layer="21"/>
<wire x1="-10.6" y1="9.4" x2="10.6" y2="9.4" width="0.127" layer="21"/>
<wire x1="10.6" y1="9.4" x2="10.6" y2="3.65" width="0.127" layer="21"/>
</package>
<package name="3025" library_version="7">
<description>&lt;b&gt;3025-2&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="-11.925" y="0" drill="1.85" diameter="2.775" shape="square"/>
<pad name="2" x="11.925" y="0" drill="1.85" diameter="2.775"/>
<smd name="3" x="0" y="0" dx="3.96" dy="3.96" layer="1"/>
<wire x1="-14.313" y1="11.797" x2="14.313" y2="11.797" width="0.1" layer="51"/>
<wire x1="14.313" y1="11.797" x2="14.313" y2="-11.4" width="0.1" layer="51"/>
<wire x1="14.313" y1="-11.4" x2="-14.313" y2="-11.4" width="0.1" layer="51"/>
<wire x1="-14.313" y1="-11.4" x2="-14.313" y2="11.797" width="0.1" layer="51"/>
<wire x1="-3.785" y1="-10.4" x2="-11.925" y2="-3.9" width="0.1" layer="51"/>
<wire x1="-11.925" y1="-3.9" x2="-11.925" y2="3.9" width="0.1" layer="51"/>
<wire x1="-11.925" y1="3.9" x2="-7.5" y2="10.4" width="0.1" layer="51"/>
<wire x1="-7.5" y1="10.4" x2="-6" y2="10.4" width="0.1" layer="51" curve="-111.5"/>
<wire x1="-6" y1="10.4" x2="-3.785" y2="9.1" width="0.1" layer="51"/>
<wire x1="-3.785" y1="9.1" x2="3.785" y2="9.1" width="0.1" layer="51" curve="60.8"/>
<wire x1="3.785" y1="9.1" x2="6" y2="10.4" width="0.1" layer="51"/>
<wire x1="6" y1="10.4" x2="7.5" y2="10.4" width="0.1" layer="51" curve="-60.8"/>
<wire x1="7.5" y1="10.4" x2="11.925" y2="3.9" width="0.1" layer="51"/>
<wire x1="11.925" y1="3.9" x2="11.925" y2="-3.9" width="0.1" layer="51"/>
<wire x1="11.925" y1="-3.9" x2="3.785" y2="-10.4" width="0.1" layer="51"/>
<wire x1="3.785" y1="-10.4" x2="-3.785" y2="-10.4" width="0.1" layer="51"/>
<wire x1="-11.925" y1="-3.9" x2="-3.785" y2="-10.4" width="0.2" layer="21"/>
<wire x1="-3.785" y1="-10.4" x2="3.785" y2="-10.4" width="0.2" layer="21"/>
<wire x1="3.785" y1="-10.4" x2="11.925" y2="-3.9" width="0.2" layer="21"/>
<wire x1="-11.925" y1="3.9" x2="-7.5" y2="10.4" width="0.2" layer="21"/>
<wire x1="-7.5" y1="10.4" x2="-6" y2="10.4" width="0.2" layer="21" curve="-111.5"/>
<wire x1="-6" y1="10.4" x2="-3.785" y2="9.1" width="0.2" layer="21"/>
<wire x1="-3.785" y1="9.1" x2="3.785" y2="9.1" width="0.2" layer="21" curve="60.8"/>
<wire x1="3.785" y1="9.1" x2="6" y2="10.4" width="0.2" layer="21"/>
<wire x1="6" y1="10.4" x2="7.5" y2="10.4" width="0.2" layer="21" curve="-60.8"/>
<wire x1="7.5" y1="10.4" x2="11.925" y2="3.9" width="0.2" layer="21"/>
<wire x1="-13.8" y1="0" x2="-13.9" y2="0" width="0.1" layer="21" curve="180"/>
<wire x1="-13.9" y1="0" x2="-13.8" y2="0" width="0.1" layer="21" curve="180"/>
</package>
</packages>
<symbols>
<symbol name="3025" library_version="7">
<text x="8.89" y="5.08" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="2.54" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="+" x="0" y="0" visible="off" length="middle"/>
<pin name="-" x="12.7" y="0" visible="off" length="middle" rot="R180"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-2.54" width="0.508" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="2025" prefix="U" library_version="7">
<description>&lt;b&gt;Coin Cell Battery Holders THM COIN CELL CLIP FOR (2) 2032&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.keyelco.com/product-pdf.cfm?p=740"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="3025" x="0" y="0"/>
</gates>
<devices>
<device name="" package="3025">
<connects>
<connect gate="G$1" pin="+" pad="1 2" route="any"/>
<connect gate="G$1" pin="-" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Coin Cell Battery Holders THM COIN CELL CLIP FOR (2) 2032" constant="no"/>
<attribute name="HEIGHT" value="7.75mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Keystone Electronics" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="3025" constant="no"/>
<attribute name="TME_ELECTRONIC_COMPONENTS_PART_NUMBER" value="" constant="no"/>
<attribute name="TME_ELECTRONIC_COMPONENTS_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="BAT-HLD-005-THM" package="BAT-HLD-005-THM">
<connects>
<connect gate="G$1" pin="+" pad="P$2 P$3" route="any"/>
<connect gate="G$1" pin="-" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Texas Instruments" urn="urn:adsk.wipprod:fs.file:vf.rkiZc7xtTJmkp3nhtdsVfQ">
<packages>
<package name="QFN50P400X400X100-25T270" urn="urn:adsk.eagle:footprint:31971667/2" library_version="1">
<description>24-QFN, 0.50 mm pitch, 4.00 X 4.00 X 1.00 mm body, 2.70 X 2.70 mm thermal pad
 &lt;p&gt;24-pin QFN package with 0.50 mm pitch  with body size 4.00 X 4.00 X 1.00 mm and thermal pad size 2.70 X 2.70 mm&lt;/p&gt;</description>
<smd name="1" x="-2" y="1.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="2" x="-2" y="0.75" dx="0.8" dy="0.3" layer="1"/>
<smd name="3" x="-2" y="0.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="4" x="-2" y="-0.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="5" x="-2" y="-0.75" dx="0.8" dy="0.3" layer="1"/>
<smd name="6" x="-2" y="-1.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="7" x="-1.25" y="-2" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="8" x="-0.75" y="-2" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="9" x="-0.25" y="-2" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="10" x="0.25" y="-2" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="11" x="0.75" y="-2" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="12" x="1.25" y="-2" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="13" x="2" y="-1.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="14" x="2" y="-0.75" dx="0.8" dy="0.3" layer="1"/>
<smd name="15" x="2" y="-0.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="16" x="2" y="0.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="17" x="2" y="0.75" dx="0.8" dy="0.3" layer="1"/>
<smd name="18" x="2" y="1.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="19" x="1.25" y="2" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="20" x="0.75" y="2" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="21" x="0.25" y="2" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="22" x="-0.25" y="2" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="23" x="-0.75" y="2" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="24" x="-1.25" y="2" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="25" x="0" y="0" dx="2.7" dy="2.7" layer="1" thermals="no"/>
<circle x="-2.554" y="1.904" radius="0.25" width="0" layer="21"/>
<wire x1="-2.05" y1="1.654" x2="-2.05" y2="2.05" width="0.12" layer="21"/>
<wire x1="-2.05" y1="2.05" x2="-1.654" y2="2.05" width="0.12" layer="21"/>
<wire x1="2.05" y1="2.05" x2="2.05" y2="1.654" width="0.12" layer="21"/>
<wire x1="2.05" y1="2.05" x2="1.654" y2="2.05" width="0.12" layer="21"/>
<wire x1="-2.05" y1="-1.654" x2="-2.05" y2="-2.05" width="0.12" layer="21"/>
<wire x1="-2.05" y1="-2.05" x2="-1.654" y2="-2.05" width="0.12" layer="21"/>
<wire x1="2.05" y1="-2.05" x2="2.05" y2="-1.654" width="0.12" layer="21"/>
<wire x1="2.05" y1="-2.05" x2="1.654" y2="-2.05" width="0.12" layer="21"/>
<wire x1="-2.05" y1="-2.05" x2="-2.05" y2="2.05" width="0.12" layer="51"/>
<wire x1="-2.05" y1="2.05" x2="2.05" y2="2.05" width="0.12" layer="51"/>
<wire x1="2.05" y1="2.05" x2="2.05" y2="-2.05" width="0.12" layer="51"/>
<wire x1="2.05" y1="-2.05" x2="-2.05" y2="-2.05" width="0.12" layer="51"/>
<text x="0" y="3.035" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-3.035" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="QFN50P400X400X100-25T240" urn="urn:adsk.eagle:footprint:6269957/1" library_version="2">
<description>24-QFN, 0.50 mm pitch, 4.00 X 4.00 X 1.00 mm body, 2.40 X 2.40 mm thermal pad
&lt;p&gt;24-pin QFN package with 0.50 mm pitch with body size 4.00 X 4.00 X 1.00 mm and thermal pad size 2.40 X 2.40 mm&lt;/p&gt;</description>
<circle x="-2.504" y="1.889" radius="0.25" width="0" layer="21"/>
<wire x1="-2" y1="1.639" x2="-2" y2="2" width="0.12" layer="21"/>
<wire x1="-2" y1="2" x2="-1.639" y2="2" width="0.12" layer="21"/>
<wire x1="2" y1="1.639" x2="2" y2="2" width="0.12" layer="21"/>
<wire x1="2" y1="2" x2="1.639" y2="2" width="0.12" layer="21"/>
<wire x1="2" y1="-1.639" x2="2" y2="-2" width="0.12" layer="21"/>
<wire x1="2" y1="-2" x2="1.639" y2="-2" width="0.12" layer="21"/>
<wire x1="-2" y1="-1.639" x2="-2" y2="-2" width="0.12" layer="21"/>
<wire x1="-2" y1="-2" x2="-1.639" y2="-2" width="0.12" layer="21"/>
<wire x1="2" y1="-2" x2="-2" y2="-2" width="0.12" layer="51"/>
<wire x1="-2" y1="-2" x2="-2" y2="2" width="0.12" layer="51"/>
<wire x1="-2" y1="2" x2="2" y2="2" width="0.12" layer="51"/>
<wire x1="2" y1="2" x2="2" y2="-2" width="0.12" layer="51"/>
<smd name="1" x="-1.9373" y="1.25" dx="0.8373" dy="0.27" layer="1" roundness="100"/>
<smd name="2" x="-1.9373" y="0.75" dx="0.8373" dy="0.27" layer="1" roundness="100"/>
<smd name="3" x="-1.9373" y="0.25" dx="0.8373" dy="0.27" layer="1" roundness="100"/>
<smd name="4" x="-1.9373" y="-0.25" dx="0.8373" dy="0.27" layer="1" roundness="100"/>
<smd name="5" x="-1.9373" y="-0.75" dx="0.8373" dy="0.27" layer="1" roundness="100"/>
<smd name="6" x="-1.9373" y="-1.25" dx="0.8373" dy="0.27" layer="1" roundness="100"/>
<smd name="7" x="-1.25" y="-1.9373" dx="0.8373" dy="0.27" layer="1" roundness="100" rot="R90"/>
<smd name="8" x="-0.75" y="-1.9373" dx="0.8373" dy="0.27" layer="1" roundness="100" rot="R90"/>
<smd name="9" x="-0.25" y="-1.9373" dx="0.8373" dy="0.27" layer="1" roundness="100" rot="R90"/>
<smd name="10" x="0.25" y="-1.9373" dx="0.8373" dy="0.27" layer="1" roundness="100" rot="R90"/>
<smd name="11" x="0.75" y="-1.9373" dx="0.8373" dy="0.27" layer="1" roundness="100" rot="R90"/>
<smd name="12" x="1.25" y="-1.9373" dx="0.8373" dy="0.27" layer="1" roundness="100" rot="R90"/>
<smd name="13" x="1.9373" y="-1.25" dx="0.8373" dy="0.27" layer="1" roundness="100"/>
<smd name="14" x="1.9373" y="-0.75" dx="0.8373" dy="0.27" layer="1" roundness="100"/>
<smd name="15" x="1.9373" y="-0.25" dx="0.8373" dy="0.27" layer="1" roundness="100"/>
<smd name="16" x="1.9373" y="0.25" dx="0.8373" dy="0.27" layer="1" roundness="100"/>
<smd name="17" x="1.9373" y="0.75" dx="0.8373" dy="0.27" layer="1" roundness="100"/>
<smd name="18" x="1.9373" y="1.25" dx="0.8373" dy="0.27" layer="1" roundness="100"/>
<smd name="19" x="1.25" y="1.9373" dx="0.8373" dy="0.27" layer="1" roundness="100" rot="R90"/>
<smd name="20" x="0.75" y="1.9373" dx="0.8373" dy="0.27" layer="1" roundness="100" rot="R90"/>
<smd name="21" x="0.25" y="1.9373" dx="0.8373" dy="0.27" layer="1" roundness="100" rot="R90"/>
<smd name="22" x="-0.25" y="1.9373" dx="0.8373" dy="0.27" layer="1" roundness="100" rot="R90"/>
<smd name="23" x="-0.75" y="1.9373" dx="0.8373" dy="0.27" layer="1" roundness="100" rot="R90"/>
<smd name="24" x="-1.25" y="1.9373" dx="0.8373" dy="0.27" layer="1" roundness="100" rot="R90"/>
<smd name="25" x="0" y="0" dx="2.4" dy="2.4" layer="1" thermals="no"/>
<text x="0" y="2.9909" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.9909" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="QFN50P400X400X100-25T270" urn="urn:adsk.eagle:package:31971673/2" type="model">
<description>24-QFN, 0.50 mm pitch, 4.00 X 4.00 X 1.00 mm body, 2.70 X 2.70 mm thermal pad
 &lt;p&gt;24-pin QFN package with 0.50 mm pitch  with body size 4.00 X 4.00 X 1.00 mm and thermal pad size 2.70 X 2.70 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="QFN50P400X400X100-25T270"/>
</packageinstances>
</package3d>
<package3d name="QFN50P400X400X100-25T240" urn="urn:adsk.eagle:package:6269953/1" type="model" library_version="2">
<description>24-QFN, 0.50 mm pitch, 4.00 X 4.00 X 1.00 mm body, 2.40 X 2.40 mm thermal pad
&lt;p&gt;24-pin QFN package with 0.50 mm pitch with body size 4.00 X 4.00 X 1.00 mm and thermal pad size 2.40 X 2.40 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="QFN50P400X400X100-25T240"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MSPM0G110X" library_version="2">
<wire x1="-12.7" y1="22.86" x2="-12.7" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="-12.7" y1="-25.4" x2="12.7" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-25.4" x2="12.7" y2="22.86" width="0.1524" layer="94"/>
<wire x1="12.7" y1="22.86" x2="-12.7" y2="22.86" width="0.1524" layer="94"/>
<pin name="PA1" x="17.78" y="17.78" length="middle" rot="R180"/>
<pin name="NRST" x="-17.78" y="17.78" length="middle"/>
<pin name="VDD" x="-17.78" y="-17.78" length="middle"/>
<pin name="VSS" x="-17.78" y="-22.86" length="middle"/>
<pin name="PA2" x="17.78" y="15.24" length="middle" rot="R180"/>
<pin name="PA3" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="PA4" x="17.78" y="10.16" length="middle" rot="R180"/>
<pin name="PA9" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="PA10" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="PA11" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="PA15" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="PA16" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="PA17" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="PA18" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="PA19/SWDIO" x="-17.78" y="15.24" length="middle"/>
<pin name="PA20/SWCLK" x="-17.78" y="12.7" length="middle"/>
<pin name="PA21" x="17.78" y="-10.16" length="middle" rot="R180"/>
<pin name="PA22" x="17.78" y="-12.7" length="middle" rot="R180"/>
<pin name="PA23" x="17.78" y="-15.24" length="middle" rot="R180"/>
<pin name="PA24" x="17.78" y="-17.78" length="middle" rot="R180"/>
<pin name="PA25" x="17.78" y="-20.32" length="middle" rot="R180"/>
<pin name="PA26" x="17.78" y="-22.86" length="middle" rot="R180"/>
<pin name="VCORE" x="-17.78" y="20.32" length="middle"/>
<pin name="PA0" x="17.78" y="20.32" length="middle" rot="R180"/>
<text x="-12.7" y="23.114" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="-25.654" size="1.778" layer="96" align="top-left">&gt;VALUE</text>
<pin name="BASE" x="-17.78" y="-20.32" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MSPM0G1107" library_version="2">
<gates>
<gate name="G$1" symbol="MSPM0G110X" x="0" y="0"/>
</gates>
<devices>
<device name="VQFN24" package="QFN50P400X400X100-25T270">
<connects>
<connect gate="G$1" pin="BASE" pad="25"/>
<connect gate="G$1" pin="NRST" pad="2"/>
<connect gate="G$1" pin="PA0" pad="24"/>
<connect gate="G$1" pin="PA1" pad="1"/>
<connect gate="G$1" pin="PA10" pad="9"/>
<connect gate="G$1" pin="PA11" pad="10"/>
<connect gate="G$1" pin="PA15" pad="11"/>
<connect gate="G$1" pin="PA16" pad="12"/>
<connect gate="G$1" pin="PA17" pad="13"/>
<connect gate="G$1" pin="PA18" pad="14"/>
<connect gate="G$1" pin="PA19/SWDIO" pad="15"/>
<connect gate="G$1" pin="PA2" pad="5"/>
<connect gate="G$1" pin="PA20/SWCLK" pad="16"/>
<connect gate="G$1" pin="PA21" pad="17"/>
<connect gate="G$1" pin="PA22" pad="18"/>
<connect gate="G$1" pin="PA23" pad="19"/>
<connect gate="G$1" pin="PA24" pad="20"/>
<connect gate="G$1" pin="PA25" pad="21"/>
<connect gate="G$1" pin="PA26" pad="22"/>
<connect gate="G$1" pin="PA3" pad="6"/>
<connect gate="G$1" pin="PA4" pad="7"/>
<connect gate="G$1" pin="PA9" pad="8"/>
<connect gate="G$1" pin="VCORE" pad="23"/>
<connect gate="G$1" pin="VDD" pad="3"/>
<connect gate="G$1" pin="VSS" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:31971673/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VQFN24-ROUNDPADS" package="QFN50P400X400X100-25T240">
<connects>
<connect gate="G$1" pin="BASE" pad="25"/>
<connect gate="G$1" pin="NRST" pad="2"/>
<connect gate="G$1" pin="PA0" pad="24"/>
<connect gate="G$1" pin="PA1" pad="1"/>
<connect gate="G$1" pin="PA10" pad="9"/>
<connect gate="G$1" pin="PA11" pad="10"/>
<connect gate="G$1" pin="PA15" pad="11"/>
<connect gate="G$1" pin="PA16" pad="12"/>
<connect gate="G$1" pin="PA17" pad="13"/>
<connect gate="G$1" pin="PA18" pad="14"/>
<connect gate="G$1" pin="PA19/SWDIO" pad="15"/>
<connect gate="G$1" pin="PA2" pad="5"/>
<connect gate="G$1" pin="PA20/SWCLK" pad="16"/>
<connect gate="G$1" pin="PA21" pad="17"/>
<connect gate="G$1" pin="PA22" pad="18"/>
<connect gate="G$1" pin="PA23" pad="19"/>
<connect gate="G$1" pin="PA24" pad="20"/>
<connect gate="G$1" pin="PA25" pad="21"/>
<connect gate="G$1" pin="PA26" pad="22"/>
<connect gate="G$1" pin="PA3" pad="6"/>
<connect gate="G$1" pin="PA4" pad="7"/>
<connect gate="G$1" pin="PA9" pad="8"/>
<connect gate="G$1" pin="VCORE" pad="23"/>
<connect gate="G$1" pin="VDD" pad="3"/>
<connect gate="G$1" pin="VSS" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:6269953/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MemoryChips" urn="urn:adsk.wipprod:fs.file:vf.RhlJRgs0Q_29VW7bvhc80g">
<packages>
<package name="SON50P300X200X50-8" urn="urn:adsk.eagle:footprint:9246082/1" locally_modified="yes" library_version="1">
<description>8-SON, 0.50 mm pitch, 2.00 X 3.00 X 0.50 mm body
&lt;p&gt;8-pin SON package with 0.50 mm pitch with body size 2.00 X 3.00 X 0.50 mm&lt;/p&gt;</description>
<circle x="-2.004" y="1.364" radius="0.25" width="0" layer="21"/>
<wire x1="-1.5" y1="1.174" x2="1.5" y2="1.174" width="0.12" layer="21"/>
<wire x1="-1.5" y1="-1.174" x2="1.5" y2="-1.174" width="0.12" layer="21"/>
<wire x1="1.5" y1="-1" x2="-1.5" y2="-1" width="0.12" layer="51"/>
<wire x1="-1.5" y1="-1" x2="-1.5" y2="1" width="0.12" layer="51"/>
<wire x1="-1.5" y1="1" x2="1.5" y2="1" width="0.12" layer="51"/>
<wire x1="1.5" y1="1" x2="1.5" y2="-1" width="0.12" layer="51"/>
<smd name="1" x="-1.4623" y="0.75" dx="0.7873" dy="0.22" layer="1" roundness="100"/>
<smd name="2" x="-1.4623" y="0.25" dx="0.7873" dy="0.22" layer="1" roundness="100"/>
<smd name="3" x="-1.4623" y="-0.25" dx="0.7873" dy="0.22" layer="1" roundness="100"/>
<smd name="4" x="-1.4623" y="-0.75" dx="0.7873" dy="0.22" layer="1" roundness="100"/>
<smd name="5" x="1.4623" y="-0.75" dx="0.7873" dy="0.22" layer="1" roundness="100"/>
<smd name="6" x="1.4623" y="-0.25" dx="0.7873" dy="0.22" layer="1" roundness="100"/>
<smd name="7" x="1.4623" y="0.25" dx="0.7873" dy="0.22" layer="1" roundness="100"/>
<smd name="8" x="1.4623" y="0.75" dx="0.7873" dy="0.22" layer="1" roundness="100"/>
<text x="0" y="2.249" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.809" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
<smd name="9" x="0" y="0" dx="1.6" dy="0.2" layer="1" rot="R90"/>
</package>
</packages>
<packages3d>
<package3d name="SON50P300X200X50-8" urn="urn:adsk.eagle:package:9246079/2" type="model">
<description>8-SON, 0.50 mm pitch, 2.00 X 3.00 X 0.50 mm body
&lt;p&gt;8-pin SON package with 0.50 mm pitch with body size 2.00 X 3.00 X 0.50 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="SON50P300X200X50-8"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MX25V" library_version="1">
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="7.62" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="7.62" width="0.1524" layer="94"/>
<wire x1="7.62" y1="7.62" x2="-7.62" y2="7.62" width="0.1524" layer="94"/>
<pin name="CS" x="-12.7" y="-2.54" length="middle"/>
<pin name="SI" x="-12.7" y="5.08" length="middle"/>
<pin name="SO" x="-12.7" y="2.54" length="middle"/>
<pin name="SCLK" x="-12.7" y="0" length="middle"/>
<pin name="WP" x="-12.7" y="-5.08" length="middle"/>
<pin name="VCC" x="12.7" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="12.7" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<text x="-7.62" y="7.874" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-7.874" size="1.778" layer="96" align="top-left">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MX25V80066" library_version="1">
<gates>
<gate name="G$1" symbol="MX25V" x="0" y="0"/>
</gates>
<devices>
<device name="USON8L" package="SON50P300X200X50-8">
<connects>
<connect gate="G$1" pin="CS" pad="1"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="SCLK" pad="6"/>
<connect gate="G$1" pin="SI" pad="5"/>
<connect gate="G$1" pin="SO" pad="2"/>
<connect gate="G$1" pin="VCC" pad="7"/>
<connect gate="G$1" pin="WP" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9246079/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Capacitor" urn="urn:adsk.eagle:library:16290819">
<description>&lt;B&gt;Capacitors - Fixed, Variable, Trimmers</description>
<packages>
<package name="CAPC1005X60" urn="urn:adsk.eagle:footprint:16290849/5" library_version="21">
<description>Chip, 1.00 X 0.50 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.00 X 0.50 X 0.60 mm&lt;/p&gt;</description>
<wire x1="0.55" y1="0.6286" x2="-0.55" y2="0.6286" width="0.127" layer="21"/>
<wire x1="0.55" y1="-0.6286" x2="-0.55" y2="-0.6286" width="0.127" layer="21"/>
<wire x1="0.55" y1="-0.3" x2="-0.55" y2="-0.3" width="0.12" layer="51"/>
<wire x1="-0.55" y1="-0.3" x2="-0.55" y2="0.3" width="0.12" layer="51"/>
<wire x1="-0.55" y1="0.3" x2="0.55" y2="0.3" width="0.12" layer="51"/>
<wire x1="0.55" y1="0.3" x2="0.55" y2="-0.3" width="0.12" layer="51"/>
<smd name="1" x="-0.4846" y="0" dx="0.56" dy="0.6291" layer="1"/>
<smd name="2" x="0.4846" y="0" dx="0.56" dy="0.6291" layer="1"/>
<text x="0" y="1.2636" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.2636" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC1110X102" urn="urn:adsk.eagle:footprint:16290845/5" library_version="19">
<description>Chip, 1.17 X 1.02 X 1.02 mm body
&lt;p&gt;Chip package with body size 1.17 X 1.02 X 1.02 mm&lt;/p&gt;</description>
<wire x1="0.66" y1="0.9552" x2="-0.66" y2="0.9552" width="0.127" layer="21"/>
<wire x1="0.66" y1="-0.9552" x2="-0.66" y2="-0.9552" width="0.127" layer="21"/>
<wire x1="0.66" y1="-0.635" x2="-0.66" y2="-0.635" width="0.12" layer="51"/>
<wire x1="-0.66" y1="-0.635" x2="-0.66" y2="0.635" width="0.12" layer="51"/>
<wire x1="-0.66" y1="0.635" x2="0.66" y2="0.635" width="0.12" layer="51"/>
<wire x1="0.66" y1="0.635" x2="0.66" y2="-0.635" width="0.12" layer="51"/>
<smd name="1" x="-0.5388" y="0" dx="0.6626" dy="1.2823" layer="1"/>
<smd name="2" x="0.5388" y="0" dx="0.6626" dy="1.2823" layer="1"/>
<text x="0" y="1.5902" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.5902" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC1608X85" urn="urn:adsk.eagle:footprint:16290847/5" library_version="19">
<description>Chip, 1.60 X 0.80 X 0.85 mm body
&lt;p&gt;Chip package with body size 1.60 X 0.80 X 0.85 mm&lt;/p&gt;</description>
<wire x1="0.875" y1="0.7991" x2="-0.875" y2="0.7991" width="0.127" layer="21"/>
<wire x1="0.875" y1="-0.7991" x2="-0.875" y2="-0.7991" width="0.127" layer="21"/>
<wire x1="0.875" y1="-0.475" x2="-0.875" y2="-0.475" width="0.12" layer="51"/>
<wire x1="-0.875" y1="-0.475" x2="-0.875" y2="0.475" width="0.12" layer="51"/>
<wire x1="-0.875" y1="0.475" x2="0.875" y2="0.475" width="0.12" layer="51"/>
<wire x1="0.875" y1="0.475" x2="0.875" y2="-0.475" width="0.12" layer="51"/>
<smd name="1" x="-0.7746" y="0" dx="0.9209" dy="0.9702" layer="1"/>
<smd name="2" x="0.7746" y="0" dx="0.9209" dy="0.9702" layer="1"/>
<text x="0" y="1.4341" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.4341" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC2012X110" urn="urn:adsk.eagle:footprint:16290848/5" library_version="19">
<description>Chip, 2.00 X 1.25 X 1.10 mm body
&lt;p&gt;Chip package with body size 2.00 X 1.25 X 1.10 mm&lt;/p&gt;</description>
<wire x1="1.1" y1="1.0467" x2="-1.1" y2="1.0467" width="0.127" layer="21"/>
<wire x1="1.1" y1="-1.0467" x2="-1.1" y2="-1.0467" width="0.127" layer="21"/>
<wire x1="1.1" y1="-0.725" x2="-1.1" y2="-0.725" width="0.12" layer="51"/>
<wire x1="-1.1" y1="-0.725" x2="-1.1" y2="0.725" width="0.12" layer="51"/>
<wire x1="-1.1" y1="0.725" x2="1.1" y2="0.725" width="0.12" layer="51"/>
<wire x1="1.1" y1="0.725" x2="1.1" y2="-0.725" width="0.12" layer="51"/>
<smd name="1" x="-0.8754" y="0" dx="1.1646" dy="1.4653" layer="1"/>
<smd name="2" x="0.8754" y="0" dx="1.1646" dy="1.4653" layer="1"/>
<text x="0" y="1.6817" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.6817" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC3216X135" urn="urn:adsk.eagle:footprint:16290836/5" library_version="19">
<description>Chip, 3.20 X 1.60 X 1.35 mm body
&lt;p&gt;Chip package with body size 3.20 X 1.60 X 1.35 mm&lt;/p&gt;</description>
<wire x1="1.7" y1="1.2217" x2="-1.7" y2="1.2217" width="0.127" layer="21"/>
<wire x1="1.7" y1="-1.2217" x2="-1.7" y2="-1.2217" width="0.127" layer="21"/>
<wire x1="1.7" y1="-0.9" x2="-1.7" y2="-0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="-0.9" x2="-1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="0.9" x2="1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="1.7" y1="0.9" x2="1.7" y2="-0.9" width="0.12" layer="51"/>
<smd name="1" x="-1.4754" y="0" dx="1.1646" dy="1.8153" layer="1"/>
<smd name="2" x="1.4754" y="0" dx="1.1646" dy="1.8153" layer="1"/>
<text x="0" y="1.8567" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.8567" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC3225X135" urn="urn:adsk.eagle:footprint:16290843/5" library_version="19">
<description>Chip, 3.20 X 2.50 X 1.35 mm body
&lt;p&gt;Chip package with body size 3.20 X 2.50 X 1.35 mm&lt;/p&gt;</description>
<wire x1="1.7" y1="1.6717" x2="-1.7" y2="1.6717" width="0.127" layer="21"/>
<wire x1="1.7" y1="-1.6717" x2="-1.7" y2="-1.6717" width="0.12" layer="21"/>
<wire x1="1.7" y1="-1.35" x2="-1.7" y2="-1.35" width="0.12" layer="51"/>
<wire x1="-1.7" y1="-1.35" x2="-1.7" y2="1.35" width="0.12" layer="51"/>
<wire x1="-1.7" y1="1.35" x2="1.7" y2="1.35" width="0.12" layer="51"/>
<wire x1="1.7" y1="1.35" x2="1.7" y2="-1.35" width="0.12" layer="51"/>
<smd name="1" x="-1.4754" y="0" dx="1.1646" dy="2.7153" layer="1"/>
<smd name="2" x="1.4754" y="0" dx="1.1646" dy="2.7153" layer="1"/>
<text x="0" y="2.3067" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.3067" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC4532X135" urn="urn:adsk.eagle:footprint:16290841/5" library_version="19">
<description>Chip, 4.50 X 3.20 X 1.35 mm body
&lt;p&gt;Chip package with body size 4.50 X 3.20 X 1.35 mm&lt;/p&gt;</description>
<wire x1="2.4" y1="2.0217" x2="-2.4" y2="2.0217" width="0.127" layer="21"/>
<wire x1="2.4" y1="-2.0217" x2="-2.4" y2="-2.0217" width="0.127" layer="21"/>
<wire x1="2.4" y1="-1.7" x2="-2.4" y2="-1.7" width="0.12" layer="51"/>
<wire x1="-2.4" y1="-1.7" x2="-2.4" y2="1.7" width="0.12" layer="51"/>
<wire x1="-2.4" y1="1.7" x2="2.4" y2="1.7" width="0.12" layer="51"/>
<wire x1="2.4" y1="1.7" x2="2.4" y2="-1.7" width="0.12" layer="51"/>
<smd name="1" x="-2.0565" y="0" dx="1.3973" dy="3.4153" layer="1"/>
<smd name="2" x="2.0565" y="0" dx="1.3973" dy="3.4153" layer="1"/>
<text x="0" y="2.6567" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.6567" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPM3216X180" urn="urn:adsk.eagle:footprint:16290835/5" library_version="19">
<description>Molded Body, 3.20 X 1.60 X 1.80 mm body
&lt;p&gt;Molded Body package with body size 3.20 X 1.60 X 1.80 mm&lt;/p&gt;</description>
<wire x1="-1.7" y1="0.9084" x2="1.7" y2="0.9084" width="0.127" layer="21"/>
<wire x1="-1.7" y1="-0.9084" x2="1.7" y2="-0.9084" width="0.127" layer="21"/>
<wire x1="1.7" y1="-0.9" x2="-1.7" y2="-0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="-0.9" x2="-1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="0.9" x2="1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="1.7" y1="0.9" x2="1.7" y2="-0.9" width="0.12" layer="51"/>
<smd name="1" x="-1.3099" y="0" dx="1.7955" dy="1.1887" layer="1"/>
<smd name="2" x="1.3099" y="0" dx="1.7955" dy="1.1887" layer="1"/>
<text x="0" y="1.5434" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.5434" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPM3528X210" urn="urn:adsk.eagle:footprint:16290844/5" library_version="19">
<description>Molded Body, 3.50 X 2.80 X 2.10 mm body
&lt;p&gt;Molded Body package with body size 3.50 X 2.80 X 2.10 mm&lt;/p&gt;</description>
<wire x1="-1.85" y1="1.5" x2="1.85" y2="1.5" width="0.127" layer="21"/>
<wire x1="-1.85" y1="-1.5" x2="1.85" y2="-1.5" width="0.127" layer="21"/>
<wire x1="1.85" y1="-1.5" x2="-1.85" y2="-1.5" width="0.12" layer="51"/>
<wire x1="-1.85" y1="-1.5" x2="-1.85" y2="1.5" width="0.12" layer="51"/>
<wire x1="-1.85" y1="1.5" x2="1.85" y2="1.5" width="0.12" layer="51"/>
<wire x1="1.85" y1="1.5" x2="1.85" y2="-1.5" width="0.12" layer="51"/>
<smd name="1" x="-1.4599" y="0" dx="1.7955" dy="2.2036" layer="1"/>
<smd name="2" x="1.4599" y="0" dx="1.7955" dy="2.2036" layer="1"/>
<text x="0" y="2.135" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.135" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPM6032X280" urn="urn:adsk.eagle:footprint:16290839/5" library_version="19">
<description>Molded Body, 6.00 X 3.20 X 2.80 mm body
&lt;p&gt;Molded Body package with body size 6.00 X 3.20 X 2.80 mm&lt;/p&gt;</description>
<wire x1="-3.15" y1="1.75" x2="3.15" y2="1.75" width="0.127" layer="21"/>
<wire x1="-3.15" y1="-1.75" x2="3.15" y2="-1.75" width="0.127" layer="21"/>
<wire x1="3.15" y1="-1.75" x2="-3.15" y2="-1.75" width="0.12" layer="51"/>
<wire x1="-3.15" y1="-1.75" x2="-3.15" y2="1.75" width="0.12" layer="51"/>
<wire x1="-3.15" y1="1.75" x2="3.15" y2="1.75" width="0.12" layer="51"/>
<wire x1="3.15" y1="1.75" x2="3.15" y2="-1.75" width="0.12" layer="51"/>
<smd name="1" x="-2.4712" y="0" dx="2.368" dy="2.2036" layer="1"/>
<smd name="2" x="2.4712" y="0" dx="2.368" dy="2.2036" layer="1"/>
<text x="0" y="2.385" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.385" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPM7343X310" urn="urn:adsk.eagle:footprint:16290840/5" library_version="19">
<description>Molded Body, 7.30 X 4.30 X 3.10 mm body
&lt;p&gt;Molded Body package with body size 7.30 X 4.30 X 3.10 mm&lt;/p&gt;</description>
<wire x1="-3.8" y1="2.3" x2="3.8" y2="2.3" width="0.127" layer="21"/>
<wire x1="-3.8" y1="-2.3" x2="3.8" y2="-2.3" width="0.127" layer="21"/>
<wire x1="3.8" y1="-2.3" x2="-3.8" y2="-2.3" width="0.12" layer="51"/>
<wire x1="-3.8" y1="-2.3" x2="-3.8" y2="2.3" width="0.12" layer="51"/>
<wire x1="-3.8" y1="2.3" x2="3.8" y2="2.3" width="0.12" layer="51"/>
<wire x1="3.8" y1="2.3" x2="3.8" y2="-2.3" width="0.12" layer="51"/>
<smd name="1" x="-3.1212" y="0" dx="2.368" dy="2.4036" layer="1"/>
<smd name="2" x="3.1212" y="0" dx="2.368" dy="2.4036" layer="1"/>
<text x="0" y="2.935" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.935" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC4564X110" urn="urn:adsk.eagle:footprint:16290837/5" library_version="19">
<description>Chip, 4.50 X 6.40 X 1.10 mm body
&lt;p&gt;Chip package with body size 4.50 X 6.40 X 1.10 mm&lt;/p&gt;</description>
<wire x1="2.4" y1="3.7179" x2="-2.4" y2="3.7179" width="0.127" layer="21"/>
<wire x1="2.4" y1="-3.7179" x2="-2.4" y2="-3.7179" width="0.127" layer="21"/>
<wire x1="2.4" y1="-3.4" x2="-2.4" y2="-3.4" width="0.12" layer="51"/>
<wire x1="-2.4" y1="-3.4" x2="-2.4" y2="3.4" width="0.12" layer="51"/>
<wire x1="-2.4" y1="3.4" x2="2.4" y2="3.4" width="0.12" layer="51"/>
<wire x1="2.4" y1="3.4" x2="2.4" y2="-3.4" width="0.12" layer="51"/>
<smd name="1" x="-2.0565" y="0" dx="1.3973" dy="6.8078" layer="1"/>
<smd name="2" x="2.0565" y="0" dx="1.3973" dy="6.8078" layer="1"/>
<text x="0" y="4.3529" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-4.3529" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPRD550W60D1025H1250B" urn="urn:adsk.eagle:footprint:16290829/5" library_version="19">
<description>Radial Non-Polarized Capacitor, 5.50 mm pitch, 10.25 mm body diameter, 12.50 mm body height
&lt;p&gt;Radial Non-Polarized Capacitor package with 5.50 mm pitch (lead spacing), 0.60 mm lead diameter, 10.25 mm body diameter and 12.50 mm body height&lt;/p&gt;</description>
<circle x="0" y="0" radius="5.25" width="0.127" layer="21"/>
<circle x="0" y="0" radius="5.25" width="0.12" layer="51"/>
<pad name="1" x="-2.75" y="0" drill="0.8" diameter="1.4"/>
<pad name="2" x="2.75" y="0" drill="0.8" diameter="1.4"/>
<text x="0" y="5.885" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-5.885" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPRD2261W240D5080H5555B" urn="urn:adsk.eagle:footprint:16290850/5" library_version="19">
<description>Radial Non-Polarized Capacitor, 22.61 mm pitch, 50.80 mm body diameter, 55.55 mm body height
&lt;p&gt;Radial Non-Polarized Capacitor package with 22.61 mm pitch (lead spacing), 2.40 mm lead diameter, 50.80 mm body diameter and 55.55 mm body height&lt;/p&gt;</description>
<circle x="0" y="0" radius="25.79" width="0.127" layer="21"/>
<circle x="0" y="0" radius="25.79" width="0.12" layer="51"/>
<pad name="1" x="-11.305" y="0" drill="2.6" diameter="3.9"/>
<pad name="2" x="11.305" y="0" drill="2.6" diameter="3.9"/>
<text x="0" y="26.425" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-26.425" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="CAPC1005X60" urn="urn:adsk.eagle:package:16290895/5" type="model" library_version="21">
<description>Chip, 1.00 X 0.50 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.00 X 0.50 X 0.60 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC1005X60"/>
</packageinstances>
</package3d>
<package3d name="CAPC1110X102" urn="urn:adsk.eagle:package:16290904/5" type="model">
<description>Chip, 1.17 X 1.02 X 1.02 mm body
&lt;p&gt;Chip package with body size 1.17 X 1.02 X 1.02 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC1110X102"/>
</packageinstances>
</package3d>
<package3d name="CAPC1608X85" urn="urn:adsk.eagle:package:16290898/5" type="model">
<description>Chip, 1.60 X 0.80 X 0.85 mm body
&lt;p&gt;Chip package with body size 1.60 X 0.80 X 0.85 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC1608X85"/>
</packageinstances>
</package3d>
<package3d name="CAPC2012X110" urn="urn:adsk.eagle:package:16290897/5" type="model">
<description>Chip, 2.00 X 1.25 X 1.10 mm body
&lt;p&gt;Chip package with body size 2.00 X 1.25 X 1.10 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC2012X110"/>
</packageinstances>
</package3d>
<package3d name="CAPC3216X135" urn="urn:adsk.eagle:package:16290893/5" type="model">
<description>Chip, 3.20 X 1.60 X 1.35 mm body
&lt;p&gt;Chip package with body size 3.20 X 1.60 X 1.35 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC3216X135"/>
</packageinstances>
</package3d>
<package3d name="CAPC3225X135" urn="urn:adsk.eagle:package:16290903/5" type="model">
<description>Chip, 3.20 X 2.50 X 1.35 mm body
&lt;p&gt;Chip package with body size 3.20 X 2.50 X 1.35 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC3225X135"/>
</packageinstances>
</package3d>
<package3d name="CAPC4532X135" urn="urn:adsk.eagle:package:16290900/5" type="model">
<description>Chip, 4.50 X 3.20 X 1.35 mm body
&lt;p&gt;Chip package with body size 4.50 X 3.20 X 1.35 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC4532X135"/>
</packageinstances>
</package3d>
<package3d name="CAPM3216X180" urn="urn:adsk.eagle:package:16290894/5" type="model">
<description>Molded Body, 3.20 X 1.60 X 1.80 mm body
&lt;p&gt;Molded Body package with body size 3.20 X 1.60 X 1.80 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPM3216X180"/>
</packageinstances>
</package3d>
<package3d name="CAPM3528X210" urn="urn:adsk.eagle:package:16290902/5" type="model">
<description>Molded Body, 3.50 X 2.80 X 2.10 mm body
&lt;p&gt;Molded Body package with body size 3.50 X 2.80 X 2.10 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPM3528X210"/>
</packageinstances>
</package3d>
<package3d name="CAPM6032X280" urn="urn:adsk.eagle:package:16290896/5" type="model">
<description>Molded Body, 6.00 X 3.20 X 2.80 mm body
&lt;p&gt;Molded Body package with body size 6.00 X 3.20 X 2.80 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPM6032X280"/>
</packageinstances>
</package3d>
<package3d name="CAPM7343X310" urn="urn:adsk.eagle:package:16290891/5" type="model">
<description>Molded Body, 7.30 X 4.30 X 3.10 mm body
&lt;p&gt;Molded Body package with body size 7.30 X 4.30 X 3.10 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPM7343X310"/>
</packageinstances>
</package3d>
<package3d name="CAPC4564X110L" urn="urn:adsk.eagle:package:16290887/6" type="model">
<description>Chip, 4.50 X 6.40 X 1.10 mm body
&lt;p&gt;Chip package with body size 4.50 X 6.40 X 1.10 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC4564X110"/>
</packageinstances>
</package3d>
<package3d name="CAPRD550W60D1025H1250B" urn="urn:adsk.eagle:package:16290858/5" type="model">
<description>Radial Non-Polarized Capacitor, 5.50 mm pitch, 10.25 mm body diameter, 12.50 mm body height
&lt;p&gt;Radial Non-Polarized Capacitor package with 5.50 mm pitch (lead spacing), 0.60 mm lead diameter, 10.25 mm body diameter and 12.50 mm body height&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPRD550W60D1025H1250B"/>
</packageinstances>
</package3d>
<package3d name="CAPRD2261W240D5080H5555B" urn="urn:adsk.eagle:package:16290864/5" type="model">
<description>Radial Non-Polarized Capacitor, 22.61 mm pitch, 50.80 mm body diameter, 55.55 mm body height
&lt;p&gt;Radial Non-Polarized Capacitor package with 22.61 mm pitch (lead spacing), 2.40 mm lead diameter, 50.80 mm body diameter and 55.55 mm body height&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPRD2261W240D5080H5555B"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="C" urn="urn:adsk.eagle:symbol:16290820/1" library_version="19">
<description>Capacitor</description>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<text x="2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="2.54" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="2.54" y="-5.08" size="1.778" layer="97">&gt;SPICEEXTRA</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="C" urn="urn:adsk.eagle:component:16290909/10" prefix="C" uservalue="yes" library_version="21">
<description>&lt;B&gt;Capacitor - Generic</description>
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
</gates>
<devices>
<device name="CHIP-0402(1005-METRIC)" package="CAPC1005X60">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290895/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="0402" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0504(1310-METRIC)" package="CAPC1110X102">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290904/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="0504" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0603(1608-METRIC)" package="CAPC1608X85">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290898/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="0603" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0805(2012-METRIC)" package="CAPC2012X110">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290897/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="0805" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1206(3216-METRIC)" package="CAPC3216X135">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290893/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1206" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1210(3225-METRIC)" package="CAPC3225X135">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290903/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1210" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1812(4532-METRIC)" package="CAPC4532X135">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290900/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1812" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TANTALUM-1206(3216-METRIC)" package="CAPM3216X180">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290894/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1206" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Tantalum Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="Polymer Capacitors" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TANTALUM-1411(3528-METRIC)" package="CAPM3528X210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290902/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1411" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Tantalum Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="Polymer Capacitors" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TANTALUM-2412(6032-METRIC)" package="CAPM6032X280">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290896/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="2412" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Tantalum Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="Polymer Capacitors" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TANTALUM-2917(7343-METRIC)" package="CAPM7343X310">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290891/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="2917" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Tantalum Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="Polymer Capacitors" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1825(4564-METRIC)" package="CAPC4564X110">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290887/6"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1825" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="RADIAL-12.5MM-DIA" package="CAPRD550W60D1025H1250B">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290858/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="12.5MM-DIA" constant="no"/>
<attribute name="PACKAGE_TYPE" value="THT" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Aluminum Non-Polar Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="Radial Can" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="RADIAL-55.5MM-DIA" package="CAPRD2261W240D5080H5555B">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290864/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="55.5MM-DIA" constant="no"/>
<attribute name="PACKAGE_TYPE" value="THT" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Aluminum Non-Polar Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="Radian Can" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="C">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
</devicesets>
</library>
<library name="Power_Symbols" urn="urn:adsk.eagle:library:16502351">
<description>&lt;B&gt;Supply &amp; Ground symbols</description>
<packages>
</packages>
<symbols>
<symbol name="GND-BAR" urn="urn:adsk.eagle:symbol:16502372/2" library_version="21">
<description>Ground (GND) Bar</description>
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="0" y="-1.905" size="1.778" layer="96" align="center">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND-BAR" urn="urn:adsk.eagle:component:16502419/5" prefix="SUPPLY" uservalue="yes" library_version="21">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt; - Ground (GND) Bar</description>
<gates>
<gate name="G$1" symbol="GND-BAR" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="CATEGORY" value="Supply" constant="no"/>
<attribute name="VALUE" value="GND" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="LED" urn="urn:adsk.eagle:library:22900745">
<description>&lt;B&gt;LED parts CHIP-Flat Top, Round Top</description>
<packages>
<package name="LEDC1608X35N_FLAT-R" urn="urn:adsk.eagle:footprint:24294736/1" library_version="22">
<description>Chip LED, 1.60 X 0.80 X 0.35 mm body
 &lt;p&gt;Chip LED package with body size 1.60 X 0.80 X 0.35 mm&lt;/p&gt;</description>
<smd name="C" x="-0.75" y="0" dx="0.6118" dy="0.9118" layer="1"/>
<smd name="A" x="0.75" y="0" dx="0.6118" dy="0.9118" layer="1"/>
<wire x1="-1.3099" y1="0.7699" x2="0.8" y2="0.7699" width="0.12" layer="21"/>
<wire x1="-1.3099" y1="0.7699" x2="-1.3099" y2="-0.7699" width="0.12" layer="21"/>
<wire x1="-1.3099" y1="-0.7699" x2="0.8" y2="-0.7699" width="0.12" layer="21"/>
<wire x1="-0.8" y1="-0.4" x2="-0.8" y2="0.4" width="0.12" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="0.8" y2="0.4" width="0.12" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.12" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="-0.8" y2="-0.4" width="0.12" layer="51"/>
<text x="-0.127" y="1.4049" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-0.127" y="-1.4049" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="LEDC1608X55N_FLAT-R" urn="urn:adsk.eagle:footprint:24294737/1" library_version="22">
<description>Chip LED, 1.60 X 0.80 X 0.55 mm body
 &lt;p&gt;Chip LED package with body size 1.60 X 0.80 X 0.55 mm&lt;/p&gt;</description>
<smd name="C" x="-0.75" y="0" dx="0.6118" dy="0.9118" layer="1"/>
<smd name="A" x="0.75" y="0" dx="0.6118" dy="0.9118" layer="1"/>
<wire x1="-1.3099" y1="0.7699" x2="0.8" y2="0.7699" width="0.12" layer="21"/>
<wire x1="-1.3099" y1="0.7699" x2="-1.3099" y2="-0.7699" width="0.12" layer="21"/>
<wire x1="-1.3099" y1="-0.7699" x2="0.8" y2="-0.7699" width="0.12" layer="21"/>
<wire x1="-0.8" y1="-0.4" x2="-0.8" y2="0.4" width="0.12" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="0.8" y2="0.4" width="0.12" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.12" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="-0.8" y2="-0.4" width="0.12" layer="51"/>
<text x="-0.127" y="1.4049" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-0.127" y="-1.4049" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="LEDC1608X80N_FLAT-R" urn="urn:adsk.eagle:footprint:24294739/1" library_version="22">
<description>Chip LED, 1.60 X 0.80 X 0.80 mm body
 &lt;p&gt;Chip LED package with body size 1.60 X 0.80 X 0.80 mm&lt;/p&gt;</description>
<smd name="C" x="-0.75" y="0" dx="0.6118" dy="0.9118" layer="1"/>
<smd name="A" x="0.75" y="0" dx="0.6118" dy="0.9118" layer="1"/>
<wire x1="-1.3099" y1="0.7699" x2="0.8" y2="0.7699" width="0.12" layer="21"/>
<wire x1="-1.3099" y1="0.7699" x2="-1.3099" y2="-0.7699" width="0.12" layer="21"/>
<wire x1="-1.3099" y1="-0.7699" x2="0.8" y2="-0.7699" width="0.12" layer="21"/>
<wire x1="-0.8" y1="-0.4" x2="-0.8" y2="0.4" width="0.12" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="0.8" y2="0.4" width="0.12" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.12" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="-0.8" y2="-0.4" width="0.12" layer="51"/>
<text x="-0.127" y="1.4049" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-0.127" y="-1.4049" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="LEDC2012X110N_FLAT-R" urn="urn:adsk.eagle:footprint:24294742/1" library_version="22">
<description>Chip LED, 2.00 X 1.25 X 1.10 mm body
 &lt;p&gt;Chip LED package with body size 2.00 X 1.25 X 1.10 mm&lt;/p&gt;</description>
<smd name="C" x="-1.025" y="0" dx="0.7618" dy="1.3618" layer="1"/>
<smd name="A" x="1.025" y="0" dx="0.7618" dy="1.3618" layer="1"/>
<wire x1="-1.6599" y1="0.9949" x2="1" y2="0.9949" width="0.12" layer="21"/>
<wire x1="-1.6599" y1="0.9949" x2="-1.6599" y2="-0.9949" width="0.12" layer="21"/>
<wire x1="-1.6599" y1="-0.9949" x2="1" y2="-0.9949" width="0.12" layer="21"/>
<wire x1="-1" y1="-0.625" x2="-1" y2="0.625" width="0.12" layer="51"/>
<wire x1="-1" y1="0.625" x2="1" y2="0.625" width="0.12" layer="51"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.12" layer="51"/>
<wire x1="1" y1="-0.625" x2="-1" y2="-0.625" width="0.12" layer="51"/>
<text x="-0.127" y="1.6299" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-0.127" y="-1.6299" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="LEDC3216X75N_FLAT-R" urn="urn:adsk.eagle:footprint:24294744/1" library_version="22">
<description>Chip LED, 3.20 X 1.60 X 0.75 mm body
 &lt;p&gt;Chip LED package with body size 3.20 X 1.60 X 0.75 mm&lt;/p&gt;</description>
<smd name="C" x="-1.525" y="0" dx="0.9618" dy="1.7118" layer="1"/>
<smd name="A" x="1.525" y="0" dx="0.9618" dy="1.7118" layer="1"/>
<wire x1="-2.2599" y1="1.1699" x2="1.6" y2="1.1699" width="0.12" layer="21"/>
<wire x1="-2.2599" y1="1.1699" x2="-2.2599" y2="-1.1699" width="0.12" layer="21"/>
<wire x1="-2.2599" y1="-1.1699" x2="1.6" y2="-1.1699" width="0.12" layer="21"/>
<wire x1="-1.6" y1="-0.8" x2="-1.6" y2="0.8" width="0.12" layer="51"/>
<wire x1="-1.6" y1="0.8" x2="1.6" y2="0.8" width="0.12" layer="51"/>
<wire x1="1.6" y1="0.8" x2="1.6" y2="-0.8" width="0.12" layer="51"/>
<wire x1="1.6" y1="-0.8" x2="-1.6" y2="-0.8" width="0.12" layer="51"/>
<text x="-0.127" y="1.8049" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-0.127" y="-1.8049" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="LEDC1005X25N_FLAT-R" urn="urn:adsk.eagle:footprint:24294731/1" library_version="22">
<description>Chip LED, 1.00 X 0.50 X 0.25 mm body
 &lt;p&gt;Chip LED package with body size 1.00 X 0.50 X 0.25 mm&lt;/p&gt;</description>
<smd name="C" x="-0.45" y="0" dx="0.7" dy="0.5" layer="1"/>
<smd name="A" x="0.45" y="0" dx="0.7" dy="0.5" layer="1"/>
<wire x1="-1.0099" y1="0.6199" x2="0.5" y2="0.6199" width="0.12" layer="21"/>
<wire x1="-1.0099" y1="0.6199" x2="-1.0099" y2="-0.6199" width="0.12" layer="21"/>
<wire x1="-1.0099" y1="-0.6199" x2="0.5" y2="-0.6199" width="0.12" layer="21"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.12" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.12" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.12" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.12" layer="51"/>
<text x="-0.127" y="1.2549" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-0.127" y="-1.2549" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="LEDC1608X35N_FLAT-Y" urn="urn:adsk.eagle:footprint:24294727/1" library_version="22">
<description>Chip LED, 1.60 X 0.80 X 0.35 mm body
 &lt;p&gt;Chip LED package with body size 1.60 X 0.80 X 0.35 mm&lt;/p&gt;</description>
<smd name="C" x="-0.75" y="0" dx="0.6118" dy="0.9118" layer="1"/>
<smd name="A" x="0.75" y="0" dx="0.6118" dy="0.9118" layer="1"/>
<wire x1="-1.3099" y1="0.7699" x2="0.8" y2="0.7699" width="0.12" layer="21"/>
<wire x1="-1.3099" y1="0.7699" x2="-1.3099" y2="-0.7699" width="0.12" layer="21"/>
<wire x1="-1.3099" y1="-0.7699" x2="0.8" y2="-0.7699" width="0.12" layer="21"/>
<wire x1="-0.8" y1="-0.4" x2="-0.8" y2="0.4" width="0.12" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="0.8" y2="0.4" width="0.12" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.12" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="-0.8" y2="-0.4" width="0.12" layer="51"/>
<text x="-0.127" y="1.4049" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-0.127" y="-1.4049" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="LEDC1608X55N_FLAT-Y" urn="urn:adsk.eagle:footprint:24294724/1" library_version="22">
<description>Chip LED, 1.60 X 0.80 X 0.55 mm body
 &lt;p&gt;Chip LED package with body size 1.60 X 0.80 X 0.55 mm&lt;/p&gt;</description>
<smd name="C" x="-0.75" y="0" dx="0.6118" dy="0.9118" layer="1"/>
<smd name="A" x="0.75" y="0" dx="0.6118" dy="0.9118" layer="1"/>
<wire x1="-1.3099" y1="0.7699" x2="0.8" y2="0.7699" width="0.12" layer="21"/>
<wire x1="-1.3099" y1="0.7699" x2="-1.3099" y2="-0.7699" width="0.12" layer="21"/>
<wire x1="-1.3099" y1="-0.7699" x2="0.8" y2="-0.7699" width="0.12" layer="21"/>
<wire x1="-0.8" y1="-0.4" x2="-0.8" y2="0.4" width="0.12" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="0.8" y2="0.4" width="0.12" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.12" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="-0.8" y2="-0.4" width="0.12" layer="51"/>
<text x="-0.127" y="1.4049" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-0.127" y="-1.4049" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="LEDC1608X80N_FLAT-Y" urn="urn:adsk.eagle:footprint:24294718/1" library_version="22">
<description>Chip LED, 1.60 X 0.80 X 0.80 mm body
 &lt;p&gt;Chip LED package with body size 1.60 X 0.80 X 0.80 mm&lt;/p&gt;</description>
<smd name="C" x="-0.75" y="0" dx="0.6118" dy="0.9118" layer="1"/>
<smd name="A" x="0.75" y="0" dx="0.6118" dy="0.9118" layer="1"/>
<wire x1="-1.3099" y1="0.7699" x2="0.8" y2="0.7699" width="0.12" layer="21"/>
<wire x1="-1.3099" y1="0.7699" x2="-1.3099" y2="-0.7699" width="0.12" layer="21"/>
<wire x1="-1.3099" y1="-0.7699" x2="0.8" y2="-0.7699" width="0.12" layer="21"/>
<wire x1="-0.8" y1="-0.4" x2="-0.8" y2="0.4" width="0.12" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="0.8" y2="0.4" width="0.12" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.12" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="-0.8" y2="-0.4" width="0.12" layer="51"/>
<text x="-0.127" y="1.4049" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-0.127" y="-1.4049" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="LEDC2012X110N_FLAT-Y" urn="urn:adsk.eagle:footprint:24294709/1" library_version="22">
<description>Chip LED, 2.00 X 1.25 X 1.10 mm body
 &lt;p&gt;Chip LED package with body size 2.00 X 1.25 X 1.10 mm&lt;/p&gt;</description>
<smd name="C" x="-1.025" y="0" dx="0.7618" dy="1.3618" layer="1"/>
<smd name="A" x="1.025" y="0" dx="0.7618" dy="1.3618" layer="1"/>
<wire x1="-1.6599" y1="0.9949" x2="1" y2="0.9949" width="0.12" layer="21"/>
<wire x1="-1.6599" y1="0.9949" x2="-1.6599" y2="-0.9949" width="0.12" layer="21"/>
<wire x1="-1.6599" y1="-0.9949" x2="1" y2="-0.9949" width="0.12" layer="21"/>
<wire x1="-1" y1="-0.625" x2="-1" y2="0.625" width="0.12" layer="51"/>
<wire x1="-1" y1="0.625" x2="1" y2="0.625" width="0.12" layer="51"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.12" layer="51"/>
<wire x1="1" y1="-0.625" x2="-1" y2="-0.625" width="0.12" layer="51"/>
<text x="-0.127" y="1.6299" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-0.127" y="-1.6299" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="LEDC3216X75N_FLAT-Y" urn="urn:adsk.eagle:footprint:24294732/1" library_version="22">
<description>Chip LED, 3.20 X 1.60 X 0.75 mm body
 &lt;p&gt;Chip LED package with body size 3.20 X 1.60 X 0.75 mm&lt;/p&gt;</description>
<smd name="C" x="-1.525" y="0" dx="0.9618" dy="1.7118" layer="1"/>
<smd name="A" x="1.525" y="0" dx="0.9618" dy="1.7118" layer="1"/>
<wire x1="-2.2599" y1="1.1699" x2="1.6" y2="1.1699" width="0.12" layer="21"/>
<wire x1="-2.2599" y1="1.1699" x2="-2.2599" y2="-1.1699" width="0.12" layer="21"/>
<wire x1="-2.2599" y1="-1.1699" x2="1.6" y2="-1.1699" width="0.12" layer="21"/>
<wire x1="-1.6" y1="-0.8" x2="-1.6" y2="0.8" width="0.12" layer="51"/>
<wire x1="-1.6" y1="0.8" x2="1.6" y2="0.8" width="0.12" layer="51"/>
<wire x1="1.6" y1="0.8" x2="1.6" y2="-0.8" width="0.12" layer="51"/>
<wire x1="1.6" y1="-0.8" x2="-1.6" y2="-0.8" width="0.12" layer="51"/>
<text x="-0.127" y="1.8049" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-0.127" y="-1.8049" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="LEDC1005X25N_FLAT-Y" urn="urn:adsk.eagle:footprint:24294730/1" library_version="22">
<description>Chip LED, 1.00 X 0.50 X 0.25 mm body
 &lt;p&gt;Chip LED package with body size 1.00 X 0.50 X 0.25 mm&lt;/p&gt;</description>
<smd name="C" x="-0.45" y="0" dx="0.7" dy="0.5" layer="1"/>
<smd name="A" x="0.45" y="0" dx="0.7" dy="0.5" layer="1"/>
<wire x1="-1.0099" y1="0.6199" x2="0.5" y2="0.6199" width="0.12" layer="21"/>
<wire x1="-1.0099" y1="0.6199" x2="-1.0099" y2="-0.6199" width="0.12" layer="21"/>
<wire x1="-1.0099" y1="-0.6199" x2="0.5" y2="-0.6199" width="0.12" layer="21"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.12" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.12" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.12" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.12" layer="51"/>
<text x="-0.127" y="1.2549" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-0.127" y="-1.2549" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="LEDC1608X35N_FLAT-R" urn="urn:adsk.eagle:package:24294797/1" type="model">
<description>Chip LED, 1.60 X 0.80 X 0.35 mm body
 &lt;p&gt;Chip LED package with body size 1.60 X 0.80 X 0.35 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="LEDC1608X35N_FLAT-R"/>
</packageinstances>
</package3d>
<package3d name="LEDC1608X55N_FLAT-R" urn="urn:adsk.eagle:package:24294799/1" type="model">
<description>Chip LED, 1.60 X 0.80 X 0.55 mm body
 &lt;p&gt;Chip LED package with body size 1.60 X 0.80 X 0.55 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="LEDC1608X55N_FLAT-R"/>
</packageinstances>
</package3d>
<package3d name="LEDC1608X80N_FLAT-R" urn="urn:adsk.eagle:package:24294802/1" type="model">
<description>Chip LED, 1.60 X 0.80 X 0.80 mm body
 &lt;p&gt;Chip LED package with body size 1.60 X 0.80 X 0.80 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="LEDC1608X80N_FLAT-R"/>
</packageinstances>
</package3d>
<package3d name="LEDC2012X110N_FLAT-R" urn="urn:adsk.eagle:package:24294806/1" type="model">
<description>Chip LED, 2.00 X 1.25 X 1.10 mm body
 &lt;p&gt;Chip LED package with body size 2.00 X 1.25 X 1.10 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="LEDC2012X110N_FLAT-R"/>
</packageinstances>
</package3d>
<package3d name="LEDC3216X75N_FLAT-R" urn="urn:adsk.eagle:package:24294810/1" type="model">
<description>Chip LED, 3.20 X 1.60 X 0.75 mm body
 &lt;p&gt;Chip LED package with body size 3.20 X 1.60 X 0.75 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="LEDC3216X75N_FLAT-R"/>
</packageinstances>
</package3d>
<package3d name="LEDC1005X25N_FLAT-R" urn="urn:adsk.eagle:package:24294790/1" type="model">
<description>Chip LED, 1.00 X 0.50 X 0.25 mm body
 &lt;p&gt;Chip LED package with body size 1.00 X 0.50 X 0.25 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="LEDC1005X25N_FLAT-R"/>
</packageinstances>
</package3d>
<package3d name="LEDC1608X35N_FLAT-Y" urn="urn:adsk.eagle:package:24294784/1" type="model">
<description>Chip LED, 1.60 X 0.80 X 0.35 mm body
 &lt;p&gt;Chip LED package with body size 1.60 X 0.80 X 0.35 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="LEDC1608X35N_FLAT-Y"/>
</packageinstances>
</package3d>
<package3d name="LEDC1608X55N_FLAT-Y" urn="urn:adsk.eagle:package:24294780/1" type="model">
<description>Chip LED, 1.60 X 0.80 X 0.55 mm body
 &lt;p&gt;Chip LED package with body size 1.60 X 0.80 X 0.55 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="LEDC1608X55N_FLAT-Y"/>
</packageinstances>
</package3d>
<package3d name="LEDC1608X80N_FLAT-Y" urn="urn:adsk.eagle:package:24294770/1" type="model">
<description>Chip LED, 1.60 X 0.80 X 0.80 mm body
 &lt;p&gt;Chip LED package with body size 1.60 X 0.80 X 0.80 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="LEDC1608X80N_FLAT-Y"/>
</packageinstances>
</package3d>
<package3d name="LEDC2012X110N_FLAT-Y" urn="urn:adsk.eagle:package:24294756/1" type="model">
<description>Chip LED, 2.00 X 1.25 X 1.10 mm body
 &lt;p&gt;Chip LED package with body size 2.00 X 1.25 X 1.10 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="LEDC2012X110N_FLAT-Y"/>
</packageinstances>
</package3d>
<package3d name="LEDC3216X75N_FLAT-Y" urn="urn:adsk.eagle:package:24294747/1" type="model">
<description>Chip LED, 3.20 X 1.60 X 0.75 mm body
 &lt;p&gt;Chip LED package with body size 3.20 X 1.60 X 0.75 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="LEDC3216X75N_FLAT-Y"/>
</packageinstances>
</package3d>
<package3d name="LEDC1005X25N_FLAT-Y" urn="urn:adsk.eagle:package:24294788/1" type="model">
<description>Chip LED, 1.00 X 0.50 X 0.25 mm body
 &lt;p&gt;Chip LED package with body size 1.00 X 0.50 X 0.25 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="LEDC1005X25N_FLAT-Y"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="LED" urn="urn:adsk.eagle:symbol:22900757/4" library_version="22">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="2.54" y="-0.762" size="1.778" layer="95" rot="R180" align="top-right">&gt;NAME</text>
<text x="2.54" y="-3.302" size="1.778" layer="96" rot="R180" align="top-right">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94" pour="solid">
<vertex x="-3.048" y="-1.27"/>
<vertex x="-3.429" y="-2.159"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94" pour="solid">
<vertex x="-2.921" y="-2.413"/>
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="CHIP-FLAT-R" urn="urn:adsk.eagle:component:22900849/7" prefix="D" library_version="22">
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="_0603-0.35MM" package="LEDC1608X35N_FLAT-R">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24294797/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CATEGORY" value="LED" constant="no"/>
<attribute name="COLOR" value="RED" constant="no"/>
<attribute name="DESCRIPTION" value="CHIP LED FLAT" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="CHIP" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="FLAT_TOP" constant="no"/>
<attribute name="VALUE" value="LED_RED" constant="no"/>
</technology>
</technologies>
</device>
<device name="_0603-0.55MM" package="LEDC1608X55N_FLAT-R">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24294799/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CATEGORY" value="LED" constant="no"/>
<attribute name="COLOR" value="RED" constant="no"/>
<attribute name="DESCRIPTION" value="CHIP LED FLAT" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="CHIP" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="FLAT_TOP" constant="no"/>
<attribute name="VALUE" value="LED_RED" constant="no"/>
</technology>
</technologies>
</device>
<device name="_0603-0.80MM" package="LEDC1608X80N_FLAT-R">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24294802/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CATEGORY" value="LED" constant="no"/>
<attribute name="COLOR" value="RED" constant="no"/>
<attribute name="DESCRIPTION" value="CHIP LED FLAT" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="CHIP" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="FLAT_TOP" constant="no"/>
<attribute name="VALUE" value="LED_RED" constant="no"/>
</technology>
</technologies>
</device>
<device name="_0805" package="LEDC2012X110N_FLAT-R">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24294806/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CATEGORY" value="LED" constant="no"/>
<attribute name="COLOR" value="RED" constant="no"/>
<attribute name="DESCRIPTION" value="CHIP LED FLAT" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="CHIP" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="FLAT_TOP" constant="no"/>
<attribute name="VALUE" value="LED_RED" constant="no"/>
</technology>
</technologies>
</device>
<device name="_1206" package="LEDC3216X75N_FLAT-R">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24294810/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CATEGORY" value="LED" constant="no"/>
<attribute name="COLOR" value="RED" constant="no"/>
<attribute name="DESCRIPTION" value="CHIP LED FLAT" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="CHIP" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="FLAT_TOP" constant="no"/>
<attribute name="VALUE" value="LED_RED" constant="no"/>
</technology>
</technologies>
</device>
<device name="_0402" package="LEDC1005X25N_FLAT-R">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24294790/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CATEGORY" value="LED" constant="no"/>
<attribute name="COLOR" value="RED" constant="no"/>
<attribute name="DESCRIPTION" value="CHIP LED FLAT" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="CHIP" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="FLAT_TOP" constant="no"/>
<attribute name="VALUE" value="LED_RED" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CHIP-FLAT-Y" urn="urn:adsk.eagle:component:22900846/7" prefix="D" library_version="22">
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="_0603-0.35MM" package="LEDC1608X35N_FLAT-Y">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24294784/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CATEGORY" value="LED" constant="no"/>
<attribute name="COLOR" value="YELLOW" constant="no"/>
<attribute name="DESCRIPTION" value="CHIP LED FLAT" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="CHIP" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="FLAT_TOP" constant="no"/>
<attribute name="VALUE" value="LED_YELLOW" constant="no"/>
</technology>
</technologies>
</device>
<device name="_0603-0.55MM" package="LEDC1608X55N_FLAT-Y">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24294780/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CATEGORY" value="LED" constant="no"/>
<attribute name="COLOR" value="YELLOW" constant="no"/>
<attribute name="DESCRIPTION" value="CHIP LED FLAT" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="CHIP" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="FLAT_TOP" constant="no"/>
<attribute name="VALUE" value="LED_YELLOW" constant="no"/>
</technology>
</technologies>
</device>
<device name="_0603-0.80MM" package="LEDC1608X80N_FLAT-Y">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24294770/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CATEGORY" value="LED" constant="no"/>
<attribute name="COLOR" value="YELLOW" constant="no"/>
<attribute name="DESCRIPTION" value="CHIP LED FLAT" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="CHIP" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="FLAT_TOP" constant="no"/>
<attribute name="VALUE" value="LED_YELLOW" constant="no"/>
</technology>
</technologies>
</device>
<device name="_0805" package="LEDC2012X110N_FLAT-Y">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24294756/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CATEGORY" value="LED" constant="no"/>
<attribute name="COLOR" value="YELLOW" constant="no"/>
<attribute name="DESCRIPTION" value="CHIP LED FLAT" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="CHIP" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="FLAT_TOP" constant="no"/>
<attribute name="VALUE" value="LED_YELLOW" constant="no"/>
</technology>
</technologies>
</device>
<device name="_1206" package="LEDC3216X75N_FLAT-Y">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24294747/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CATEGORY" value="LED" constant="no"/>
<attribute name="COLOR" value="YELLOW" constant="no"/>
<attribute name="DESCRIPTION" value="CHIP LED FLAT" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="CHIP" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="FLAT_TOP" constant="no"/>
<attribute name="VALUE" value="LED_YELLOW" constant="no"/>
</technology>
</technologies>
</device>
<device name="_0402" package="LEDC1005X25N_FLAT-Y">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24294788/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CATEGORY" value="LED" constant="no"/>
<attribute name="COLOR" value="YELLOW" constant="no"/>
<attribute name="DESCRIPTION" value="CHIP LED FLAT" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="CHIP" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="FLAT_TOP" constant="no"/>
<attribute name="VALUE" value="LED_YELLOW" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Resistor" urn="urn:adsk.eagle:library:16378527">
<description>&lt;B&gt;Resistors, Potentiometers, TrimPot</description>
<packages>
<package name="RESC1005X40" urn="urn:adsk.eagle:footprint:16378540/5" library_version="21">
<description>Chip, 1.05 X 0.54 X 0.40 mm body
&lt;p&gt;Chip package with body size 1.05 X 0.54 X 0.40 mm&lt;/p&gt;</description>
<wire x1="0.55" y1="0.636" x2="-0.55" y2="0.636" width="0.127" layer="21"/>
<wire x1="0.55" y1="-0.636" x2="-0.55" y2="-0.636" width="0.127" layer="21"/>
<wire x1="0.55" y1="-0.3" x2="-0.55" y2="-0.3" width="0.12" layer="51"/>
<wire x1="-0.55" y1="-0.3" x2="-0.55" y2="0.3" width="0.12" layer="51"/>
<wire x1="-0.55" y1="0.3" x2="0.55" y2="0.3" width="0.12" layer="51"/>
<wire x1="0.55" y1="0.3" x2="0.55" y2="-0.3" width="0.12" layer="51"/>
<smd name="1" x="-0.5075" y="0" dx="0.5351" dy="0.644" layer="1"/>
<smd name="2" x="0.5075" y="0" dx="0.5351" dy="0.644" layer="1"/>
<text x="0" y="1.271" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.271" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC1608X60" urn="urn:adsk.eagle:footprint:16378537/5" library_version="20">
<description>Chip, 1.60 X 0.82 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.60 X 0.82 X 0.60 mm&lt;/p&gt;</description>
<wire x1="0.85" y1="0.8009" x2="-0.85" y2="0.8009" width="0.127" layer="21"/>
<wire x1="0.85" y1="-0.8009" x2="-0.85" y2="-0.8009" width="0.127" layer="21"/>
<wire x1="0.85" y1="-0.475" x2="-0.85" y2="-0.475" width="0.12" layer="51"/>
<wire x1="-0.85" y1="-0.475" x2="-0.85" y2="0.475" width="0.12" layer="51"/>
<wire x1="-0.85" y1="0.475" x2="0.85" y2="0.475" width="0.12" layer="51"/>
<wire x1="0.85" y1="0.475" x2="0.85" y2="-0.475" width="0.12" layer="51"/>
<smd name="1" x="-0.8152" y="0" dx="0.7987" dy="0.9739" layer="1"/>
<smd name="2" x="0.8152" y="0" dx="0.7987" dy="0.9739" layer="1"/>
<text x="0" y="1.4359" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.4359" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC2012X65" urn="urn:adsk.eagle:footprint:16378532/5" library_version="20">
<description>Chip, 2.00 X 1.25 X 0.65 mm body
&lt;p&gt;Chip package with body size 2.00 X 1.25 X 0.65 mm&lt;/p&gt;</description>
<wire x1="1.075" y1="1.0241" x2="-1.075" y2="1.0241" width="0.127" layer="21"/>
<wire x1="1.075" y1="-1.0241" x2="-1.075" y2="-1.0241" width="0.127" layer="21"/>
<wire x1="1.075" y1="-0.7" x2="-1.075" y2="-0.7" width="0.12" layer="51"/>
<wire x1="-1.075" y1="-0.7" x2="-1.075" y2="0.7" width="0.12" layer="51"/>
<wire x1="-1.075" y1="0.7" x2="1.075" y2="0.7" width="0.12" layer="51"/>
<wire x1="1.075" y1="0.7" x2="1.075" y2="-0.7" width="0.12" layer="51"/>
<smd name="1" x="-0.9195" y="0" dx="1.0312" dy="1.4202" layer="1"/>
<smd name="2" x="0.9195" y="0" dx="1.0312" dy="1.4202" layer="1"/>
<text x="0" y="1.6591" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.6591" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC3216X70" urn="urn:adsk.eagle:footprint:16378539/5" library_version="20">
<description>Chip, 3.20 X 1.60 X 0.70 mm body
&lt;p&gt;Chip package with body size 3.20 X 1.60 X 0.70 mm&lt;/p&gt;</description>
<wire x1="1.7" y1="1.2217" x2="-1.7" y2="1.2217" width="0.127" layer="21"/>
<wire x1="1.7" y1="-1.2217" x2="-1.7" y2="-1.2217" width="0.127" layer="21"/>
<wire x1="1.7" y1="-0.9" x2="-1.7" y2="-0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="-0.9" x2="-1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="0.9" x2="1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="1.7" y1="0.9" x2="1.7" y2="-0.9" width="0.12" layer="51"/>
<smd name="1" x="-1.4754" y="0" dx="1.1646" dy="1.8153" layer="1"/>
<smd name="2" x="1.4754" y="0" dx="1.1646" dy="1.8153" layer="1"/>
<text x="0" y="1.8567" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.8567" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC3224X71" urn="urn:adsk.eagle:footprint:16378536/5" library_version="20">
<description>Chip, 3.20 X 2.49 X 0.71 mm body
&lt;p&gt;Chip package with body size 3.20 X 2.49 X 0.71 mm&lt;/p&gt;</description>
<wire x1="1.675" y1="1.6441" x2="-1.675" y2="1.6441" width="0.127" layer="21"/>
<wire x1="1.675" y1="-1.6441" x2="-1.675" y2="-1.6441" width="0.127" layer="21"/>
<wire x1="1.675" y1="-1.32" x2="-1.675" y2="-1.32" width="0.12" layer="51"/>
<wire x1="-1.675" y1="-1.32" x2="-1.675" y2="1.32" width="0.12" layer="51"/>
<wire x1="-1.675" y1="1.32" x2="1.675" y2="1.32" width="0.12" layer="51"/>
<wire x1="1.675" y1="1.32" x2="1.675" y2="-1.32" width="0.12" layer="51"/>
<smd name="1" x="-1.4695" y="0" dx="1.1312" dy="2.6602" layer="1"/>
<smd name="2" x="1.4695" y="0" dx="1.1312" dy="2.6602" layer="1"/>
<text x="0" y="2.2791" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.2791" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC5025X71" urn="urn:adsk.eagle:footprint:16378538/5" library_version="20">
<description>Chip, 5.00 X 2.50 X 0.71 mm body
&lt;p&gt;Chip package with body size 5.00 X 2.50 X 0.71 mm&lt;/p&gt;</description>
<wire x1="2.575" y1="1.6491" x2="-2.575" y2="1.6491" width="0.127" layer="21"/>
<wire x1="2.575" y1="-1.6491" x2="-2.575" y2="-1.6491" width="0.127" layer="21"/>
<wire x1="2.575" y1="-1.325" x2="-2.575" y2="-1.325" width="0.12" layer="51"/>
<wire x1="-2.575" y1="-1.325" x2="-2.575" y2="1.325" width="0.12" layer="51"/>
<wire x1="-2.575" y1="1.325" x2="2.575" y2="1.325" width="0.12" layer="51"/>
<wire x1="2.575" y1="1.325" x2="2.575" y2="-1.325" width="0.12" layer="51"/>
<smd name="1" x="-2.3195" y="0" dx="1.2312" dy="2.6702" layer="1"/>
<smd name="2" x="2.3195" y="0" dx="1.2312" dy="2.6702" layer="1"/>
<text x="0" y="2.2841" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.2841" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC6332X71" urn="urn:adsk.eagle:footprint:16378533/5" library_version="20">
<description>Chip, 6.30 X 3.20 X 0.71 mm body
&lt;p&gt;Chip package with body size 6.30 X 3.20 X 0.71 mm&lt;/p&gt;</description>
<wire x1="3.225" y1="1.9991" x2="-3.225" y2="1.9991" width="0.127" layer="21"/>
<wire x1="3.225" y1="-1.9991" x2="-3.225" y2="-1.9991" width="0.127" layer="21"/>
<wire x1="3.225" y1="-1.675" x2="-3.225" y2="-1.675" width="0.12" layer="51"/>
<wire x1="-3.225" y1="-1.675" x2="-3.225" y2="1.675" width="0.12" layer="51"/>
<wire x1="-3.225" y1="1.675" x2="3.225" y2="1.675" width="0.12" layer="51"/>
<wire x1="3.225" y1="1.675" x2="3.225" y2="-1.675" width="0.12" layer="51"/>
<smd name="1" x="-2.9695" y="0" dx="1.2312" dy="3.3702" layer="1"/>
<smd name="2" x="2.9695" y="0" dx="1.2312" dy="3.3702" layer="1"/>
<text x="0" y="2.6341" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.6341" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESAD1176W63L850D250B" urn="urn:adsk.eagle:footprint:16378542/5" library_version="20">
<description>AXIAL Resistor, 11.76 mm pitch, 8.5 mm body length, 2.5 mm body diameter
&lt;p&gt;AXIAL Resistor package with 11.76 mm pitch, 0.63 mm lead diameter, 8.5 mm body length and 2.5 mm body diameter&lt;/p&gt;</description>
<wire x1="-4.25" y1="1.25" x2="-4.25" y2="-1.25" width="0.127" layer="21"/>
<wire x1="-4.25" y1="-1.25" x2="4.25" y2="-1.25" width="0.127" layer="21"/>
<wire x1="4.25" y1="-1.25" x2="4.25" y2="1.25" width="0.127" layer="21"/>
<wire x1="4.25" y1="1.25" x2="-4.25" y2="1.25" width="0.127" layer="21"/>
<wire x1="-4.25" y1="0" x2="-4.911" y2="0" width="0.127" layer="21"/>
<wire x1="4.25" y1="0" x2="4.911" y2="0" width="0.127" layer="21"/>
<wire x1="4.25" y1="-1.25" x2="-4.25" y2="-1.25" width="0.12" layer="51"/>
<wire x1="-4.25" y1="-1.25" x2="-4.25" y2="1.25" width="0.12" layer="51"/>
<wire x1="-4.25" y1="1.25" x2="4.25" y2="1.25" width="0.12" layer="51"/>
<wire x1="4.25" y1="1.25" x2="4.25" y2="-1.25" width="0.12" layer="51"/>
<pad name="1" x="-5.88" y="0" drill="0.83" diameter="1.43"/>
<pad name="2" x="5.88" y="0" drill="0.83" diameter="1.43"/>
<text x="0" y="1.885" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.885" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESMELF3515" urn="urn:adsk.eagle:footprint:16378534/5" library_version="20">
<description>MELF, 3.50 mm length, 1.52 mm diameter
&lt;p&gt;MELF Resistor package with 3.50 mm length and 1.52 mm diameter&lt;/p&gt;</description>
<wire x1="1.105" y1="1.1825" x2="-1.105" y2="1.1825" width="0.127" layer="21"/>
<wire x1="-1.105" y1="-1.1825" x2="1.105" y2="-1.1825" width="0.127" layer="21"/>
<wire x1="1.85" y1="-0.8" x2="-1.85" y2="-0.8" width="0.12" layer="51"/>
<wire x1="-1.85" y1="-0.8" x2="-1.85" y2="0.8" width="0.12" layer="51"/>
<wire x1="-1.85" y1="0.8" x2="1.85" y2="0.8" width="0.12" layer="51"/>
<wire x1="1.85" y1="0.8" x2="1.85" y2="-0.8" width="0.12" layer="51"/>
<smd name="1" x="-1.6813" y="0" dx="1.1527" dy="1.7371" layer="1"/>
<smd name="2" x="1.6813" y="0" dx="1.1527" dy="1.7371" layer="1"/>
<text x="0" y="1.8175" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.8175" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESMELF2014" urn="urn:adsk.eagle:footprint:16378535/5" library_version="20">
<description>MELF, 2.00 mm length, 1.40 mm diameter
&lt;p&gt;MELF Resistor package with 2.00 mm length and 1.40 mm diameter&lt;/p&gt;</description>
<wire x1="0.5189" y1="1.114" x2="-0.5189" y2="1.114" width="0.127" layer="21"/>
<wire x1="-0.5189" y1="-1.114" x2="0.5189" y2="-1.114" width="0.127" layer="21"/>
<wire x1="1.05" y1="-0.725" x2="-1.05" y2="-0.725" width="0.12" layer="51"/>
<wire x1="-1.05" y1="-0.725" x2="-1.05" y2="0.725" width="0.12" layer="51"/>
<wire x1="-1.05" y1="0.725" x2="1.05" y2="0.725" width="0.12" layer="51"/>
<wire x1="1.05" y1="0.725" x2="1.05" y2="-0.725" width="0.12" layer="51"/>
<smd name="1" x="-0.9918" y="0" dx="0.9456" dy="1.6" layer="1"/>
<smd name="2" x="0.9918" y="0" dx="0.9456" dy="1.6" layer="1"/>
<text x="0" y="1.749" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.749" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESMELF5924" urn="urn:adsk.eagle:footprint:16378541/5" library_version="20">
<description>MELF, 5.90 mm length, 2.45 mm diameter
&lt;p&gt;MELF Resistor package with 5.90 mm length and 2.45 mm diameter&lt;/p&gt;</description>
<wire x1="2.1315" y1="1.639" x2="-2.1315" y2="1.639" width="0.127" layer="21"/>
<wire x1="-2.1315" y1="-1.639" x2="2.1315" y2="-1.639" width="0.127" layer="21"/>
<wire x1="3.05" y1="-1.25" x2="-3.05" y2="-1.25" width="0.12" layer="51"/>
<wire x1="-3.05" y1="-1.25" x2="-3.05" y2="1.25" width="0.12" layer="51"/>
<wire x1="-3.05" y1="1.25" x2="3.05" y2="1.25" width="0.12" layer="51"/>
<wire x1="3.05" y1="1.25" x2="3.05" y2="-1.25" width="0.12" layer="51"/>
<smd name="1" x="-2.7946" y="0" dx="1.3261" dy="2.65" layer="1"/>
<smd name="2" x="2.7946" y="0" dx="1.3261" dy="2.65" layer="1"/>
<text x="0" y="2.274" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.274" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESMELF3218" urn="urn:adsk.eagle:footprint:16378531/5" library_version="20">
<description>MELF, 3.20 mm length, 1.80 mm diameter
&lt;p&gt;MELF Resistor package with 3.20 mm length and 1.80 mm diameter&lt;/p&gt;</description>
<wire x1="0.8815" y1="1.314" x2="-0.8815" y2="1.314" width="0.127" layer="21"/>
<wire x1="-0.8815" y1="-1.314" x2="0.8815" y2="-1.314" width="0.127" layer="21"/>
<wire x1="1.7" y1="-0.925" x2="-1.7" y2="-0.925" width="0.12" layer="51"/>
<wire x1="-1.7" y1="-0.925" x2="-1.7" y2="0.925" width="0.12" layer="51"/>
<wire x1="-1.7" y1="0.925" x2="1.7" y2="0.925" width="0.12" layer="51"/>
<wire x1="1.7" y1="0.925" x2="1.7" y2="-0.925" width="0.12" layer="51"/>
<smd name="1" x="-1.4946" y="0" dx="1.2261" dy="2" layer="1"/>
<smd name="2" x="1.4946" y="0" dx="1.2261" dy="2" layer="1"/>
<text x="0" y="1.949" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.949" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESAD724W46L381D178B" urn="urn:adsk.eagle:footprint:16378530/5" library_version="20">
<description>Axial Resistor, 7.24 mm pitch, 3.81 mm body length, 1.78 mm body diameter
&lt;p&gt;Axial Resistor package with 7.24 mm pitch (lead spacing), 0.46 mm lead diameter, 3.81 mm body length and 1.78 mm body diameter&lt;/p&gt;</description>
<wire x1="-2.16" y1="1.015" x2="-2.16" y2="-1.015" width="0.127" layer="21"/>
<wire x1="-2.16" y1="-1.015" x2="2.16" y2="-1.015" width="0.127" layer="21"/>
<wire x1="2.16" y1="-1.015" x2="2.16" y2="1.015" width="0.127" layer="21"/>
<wire x1="2.16" y1="1.015" x2="-2.16" y2="1.015" width="0.127" layer="21"/>
<wire x1="-2.16" y1="0" x2="-2.736" y2="0" width="0.127" layer="21"/>
<wire x1="2.16" y1="0" x2="2.736" y2="0" width="0.127" layer="21"/>
<wire x1="2.16" y1="-1.015" x2="-2.16" y2="-1.015" width="0.12" layer="51"/>
<wire x1="-2.16" y1="-1.015" x2="-2.16" y2="1.015" width="0.12" layer="51"/>
<wire x1="-2.16" y1="1.015" x2="2.16" y2="1.015" width="0.12" layer="51"/>
<wire x1="2.16" y1="1.015" x2="2.16" y2="-1.015" width="0.12" layer="51"/>
<pad name="1" x="-3.62" y="0" drill="0.66" diameter="1.26"/>
<pad name="2" x="3.62" y="0" drill="0.66" diameter="1.26"/>
<text x="0" y="1.65" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.65" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="RESC1005X40" urn="urn:adsk.eagle:package:16378568/5" type="model" library_version="21">
<description>Chip, 1.05 X 0.54 X 0.40 mm body
&lt;p&gt;Chip package with body size 1.05 X 0.54 X 0.40 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC1005X40"/>
</packageinstances>
</package3d>
<package3d name="RESC1608X60" urn="urn:adsk.eagle:package:16378565/5" type="model">
<description>Chip, 1.60 X 0.82 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.60 X 0.82 X 0.60 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC1608X60"/>
</packageinstances>
</package3d>
<package3d name="RESC2012X65" urn="urn:adsk.eagle:package:16378559/5" type="model">
<description>Chip, 2.00 X 1.25 X 0.65 mm body
&lt;p&gt;Chip package with body size 2.00 X 1.25 X 0.65 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC2012X65"/>
</packageinstances>
</package3d>
<package3d name="RESC3216X70" urn="urn:adsk.eagle:package:16378566/5" type="model">
<description>Chip, 3.20 X 1.60 X 0.70 mm body
&lt;p&gt;Chip package with body size 3.20 X 1.60 X 0.70 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC3216X70"/>
</packageinstances>
</package3d>
<package3d name="RESC3224X71" urn="urn:adsk.eagle:package:16378563/7" type="model">
<description>Chip, 3.20 X 2.49 X 0.71 mm body
&lt;p&gt;Chip package with body size 3.20 X 2.49 X 0.71 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC3224X71"/>
</packageinstances>
</package3d>
<package3d name="RESC5025X71" urn="urn:adsk.eagle:package:16378564/5" type="model">
<description>Chip, 5.00 X 2.50 X 0.71 mm body
&lt;p&gt;Chip package with body size 5.00 X 2.50 X 0.71 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC5025X71"/>
</packageinstances>
</package3d>
<package3d name="RESC6332X71L" urn="urn:adsk.eagle:package:16378557/6" type="model">
<description>Chip, 6.30 X 3.20 X 0.71 mm body
&lt;p&gt;Chip package with body size 6.30 X 3.20 X 0.71 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC6332X71"/>
</packageinstances>
</package3d>
<package3d name="RESAD1176W63L850D250B" urn="urn:adsk.eagle:package:16378560/5" type="model">
<description>AXIAL Resistor, 11.76 mm pitch, 8.5 mm body length, 2.5 mm body diameter
&lt;p&gt;AXIAL Resistor package with 11.76 mm pitch, 0.63 mm lead diameter, 8.5 mm body length and 2.5 mm body diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESAD1176W63L850D250B"/>
</packageinstances>
</package3d>
<package3d name="RESMELF3515" urn="urn:adsk.eagle:package:16378562/5" type="model">
<description>MELF, 3.50 mm length, 1.52 mm diameter
&lt;p&gt;MELF Resistor package with 3.50 mm length and 1.52 mm diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESMELF3515"/>
</packageinstances>
</package3d>
<package3d name="RESMELF2014" urn="urn:adsk.eagle:package:16378558/5" type="model">
<description>MELF, 2.00 mm length, 1.40 mm diameter
&lt;p&gt;MELF Resistor package with 2.00 mm length and 1.40 mm diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESMELF2014"/>
</packageinstances>
</package3d>
<package3d name="RESMELF5924" urn="urn:adsk.eagle:package:16378567/6" type="model">
<description>MELF, 5.90 mm length, 2.45 mm diameter
&lt;p&gt;MELF Resistor package with 5.90 mm length and 2.45 mm diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESMELF5924"/>
</packageinstances>
</package3d>
<package3d name="RESMELF3218" urn="urn:adsk.eagle:package:16378556/5" type="model">
<description>MELF, 3.20 mm length, 1.80 mm diameter
&lt;p&gt;MELF Resistor package with 3.20 mm length and 1.80 mm diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESMELF3218"/>
</packageinstances>
</package3d>
<package3d name="RESAD724W46L381D178B" urn="urn:adsk.eagle:package:16378561/5" type="model">
<description>Axial Resistor, 7.24 mm pitch, 3.81 mm body length, 1.78 mm body diameter
&lt;p&gt;Axial Resistor package with 7.24 mm pitch (lead spacing), 0.46 mm lead diameter, 3.81 mm body length and 1.78 mm body diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESAD724W46L381D178B"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="R" urn="urn:adsk.eagle:symbol:16378529/3" library_version="20">
<description>RESISTOR</description>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="0" y="2.54" size="1.778" layer="95" align="center">&gt;NAME</text>
<text x="0" y="-5.08" size="1.778" layer="95" align="center">&gt;SPICEMODEL</text>
<text x="0" y="-2.54" size="1.778" layer="96" align="center">&gt;VALUE</text>
<text x="0" y="-7.62" size="1.778" layer="95" align="center">&gt;SPICEEXTRA</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" urn="urn:adsk.eagle:component:16378570/11" prefix="R" uservalue="yes" library_version="20">
<description>&lt;b&gt;Resistor Fixed - Generic</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="CHIP-0402(1005-METRIC)" package="RESC1005X40">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378568/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0603(1608-METRIC)" package="RESC1608X60">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378565/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0805(2012-METRIC)" package="RESC2012X65">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378559/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1206(3216-METRIC)" package="RESC3216X70">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378566/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1210(3225-METRIC)" package="RESC3224X71">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378563/7"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-2010(5025-METRIC)" package="RESC5025X71">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378564/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-2512(6332-METRIC)" package="RESC6332X71">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378557/6"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="AXIAL-11.7MM-PITCH" package="RESAD1176W63L850D250B">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378560/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF(3515-METRIC)" package="RESMELF3515">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378562/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF(2014-METRIC)" package="RESMELF2014">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378558/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF(5924-METRIC)" package="RESMELF5924">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378567/6"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF(3218-METRIC)" package="RESMELF3218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378556/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="AXIAL-7.2MM-PITCH" package="RESAD724W46L381D178B">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378561/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="DebugConnectors§" urn="urn:adsk.wipprod:fs.file:vf.IDRUFOyvSruDhEXzwFmZGw">
<packages>
<package name="2X" library_version="2">
<smd name="1" x="0" y="0.55" dx="0.6" dy="1.5" layer="1" rot="R270"/>
<smd name="2" x="0" y="-0.55" dx="0.6" dy="1.5" layer="1" rot="R270"/>
<wire x1="-0.7" y1="1.05" x2="0.9" y2="1.05" width="0.1524" layer="21"/>
<wire x1="0.9" y1="1.05" x2="0.9" y2="0" width="0.1524" layer="21"/>
<wire x1="0.9" y1="0" x2="0.9" y2="-1.05" width="0.1524" layer="21"/>
<wire x1="-0.7" y1="0" x2="0.9" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.7" y1="-1.05" x2="0.9" y2="-1.05" width="0.1524" layer="21"/>
</package>
<package name="3X" library_version="1">
<smd name="1" x="0" y="1.1" dx="0.6" dy="1.5" layer="1" rot="R270"/>
<smd name="2" x="0" y="0" dx="0.6" dy="1.5" layer="1" rot="R270"/>
<smd name="3" x="0" y="-1.1" dx="0.6" dy="1.5" layer="1" rot="R270"/>
<wire x1="-0.6" y1="1.6" x2="0.9" y2="1.6" width="0.1524" layer="21"/>
<wire x1="0.9" y1="1.6" x2="0.9" y2="0.55" width="0.1524" layer="21"/>
<wire x1="0.9" y1="0.55" x2="0.9" y2="-0.55" width="0.1524" layer="21"/>
<wire x1="0.9" y1="-0.55" x2="0.9" y2="-1.6" width="0.1524" layer="21"/>
<wire x1="0.9" y1="-1.6" x2="-0.6" y2="-1.6" width="0.1524" layer="21"/>
<wire x1="-0.7" y1="0.55" x2="0.9" y2="0.55" width="0.1524" layer="21"/>
<wire x1="-0.7" y1="-0.55" x2="0.9" y2="-0.55" width="0.1524" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PWR" library_version="1">
<text x="-3.81" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<pin name="VCC" x="-2.54" y="2.54" visible="pin" length="short"/>
<pin name="GND" x="-2.54" y="0" visible="pin" length="short"/>
<wire x1="0" y1="5.08" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="5.08" x2="2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="0" width="0.1524" layer="94"/>
</symbol>
<symbol name="SWD" library_version="1">
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<pin name="RST" x="-5.08" y="2.54" visible="pin" length="short"/>
<pin name="SWDIO" x="-5.08" y="0" visible="pin" length="short"/>
<pin name="SWCLK" x="-5.08" y="-2.54" visible="pin" length="short"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="0" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="0" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PWR" library_version="2">
<gates>
<gate name="PWR" symbol="PWR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2X">
<connects>
<connect gate="PWR" pin="GND" pad="1"/>
<connect gate="PWR" pin="VCC" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SWD" library_version="1">
<gates>
<gate name="SWD" symbol="SWD" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="3X">
<connects>
<connect gate="SWD" pin="RST" pad="1"/>
<connect gate="SWD" pin="SWCLK" pad="3"/>
<connect gate="SWD" pin="SWDIO" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="nRF24L01" urn="urn:adsk.wipprod:fs.file:vf.eGUO-JQZQtCrGG-vkh28Ew">
<packages>
<package name="QFN50P400X400X100-21T265" urn="urn:adsk.eagle:footprint:6269936/1" library_version="3">
<description>20-QFN, 0.50 mm pitch, 4.00 X 4.00 X 1.00 mm body, 2.65 X 2.65 mm thermal pad
&lt;p&gt;20-pin QFN package with 0.50 mm pitch with body size 4.00 X 4.00 X 1.00 mm and thermal pad size 2.65 X 2.65 mm&lt;/p&gt;</description>
<circle x="-2.504" y="1.636" radius="0.25" width="0" layer="21"/>
<wire x1="-2" y1="1.386" x2="-2" y2="2" width="0.12" layer="21"/>
<wire x1="-2" y1="2" x2="-1.386" y2="2" width="0.12" layer="21"/>
<wire x1="2" y1="1.386" x2="2" y2="2" width="0.12" layer="21"/>
<wire x1="2" y1="2" x2="1.386" y2="2" width="0.12" layer="21"/>
<wire x1="2" y1="-1.386" x2="2" y2="-2" width="0.12" layer="21"/>
<wire x1="2" y1="-2" x2="1.386" y2="-2" width="0.12" layer="21"/>
<wire x1="-2" y1="-1.386" x2="-2" y2="-2" width="0.12" layer="21"/>
<wire x1="-2" y1="-2" x2="-1.386" y2="-2" width="0.12" layer="21"/>
<wire x1="2" y1="-2" x2="-2" y2="-2" width="0.12" layer="51"/>
<wire x1="-2" y1="-2" x2="-2" y2="2" width="0.12" layer="51"/>
<wire x1="-2" y1="2" x2="2" y2="2" width="0.12" layer="51"/>
<wire x1="2" y1="2" x2="2" y2="-2" width="0.12" layer="51"/>
<smd name="1" x="-1.9506" y="1" dx="0.8107" dy="0.264" layer="1" roundness="100"/>
<smd name="2" x="-1.9506" y="0.5" dx="0.8107" dy="0.264" layer="1" roundness="100"/>
<smd name="3" x="-1.9506" y="0" dx="0.8107" dy="0.264" layer="1" roundness="100"/>
<smd name="4" x="-1.9506" y="-0.5" dx="0.8107" dy="0.264" layer="1" roundness="100"/>
<smd name="5" x="-1.9506" y="-1" dx="0.8107" dy="0.264" layer="1" roundness="100"/>
<smd name="6" x="-1" y="-1.9506" dx="0.8107" dy="0.264" layer="1" roundness="100" rot="R90"/>
<smd name="7" x="-0.5" y="-1.9506" dx="0.8107" dy="0.264" layer="1" roundness="100" rot="R90"/>
<smd name="8" x="0" y="-1.9506" dx="0.8107" dy="0.264" layer="1" roundness="100" rot="R90"/>
<smd name="9" x="0.5" y="-1.9506" dx="0.8107" dy="0.264" layer="1" roundness="100" rot="R90"/>
<smd name="10" x="1" y="-1.9506" dx="0.8107" dy="0.264" layer="1" roundness="100" rot="R90"/>
<smd name="11" x="1.9506" y="-1" dx="0.8107" dy="0.264" layer="1" roundness="100"/>
<smd name="12" x="1.9506" y="-0.5" dx="0.8107" dy="0.264" layer="1" roundness="100"/>
<smd name="13" x="1.9506" y="0" dx="0.8107" dy="0.264" layer="1" roundness="100"/>
<smd name="14" x="1.9506" y="0.5" dx="0.8107" dy="0.264" layer="1" roundness="100"/>
<smd name="15" x="1.9506" y="1" dx="0.8107" dy="0.264" layer="1" roundness="100"/>
<smd name="16" x="1" y="1.9506" dx="0.8107" dy="0.264" layer="1" roundness="100" rot="R90"/>
<smd name="17" x="0.5" y="1.9506" dx="0.8107" dy="0.264" layer="1" roundness="100" rot="R90"/>
<smd name="18" x="0" y="1.9506" dx="0.8107" dy="0.264" layer="1" roundness="100" rot="R90"/>
<smd name="19" x="-0.5" y="1.9506" dx="0.8107" dy="0.264" layer="1" roundness="100" rot="R90"/>
<smd name="20" x="-1" y="1.9506" dx="0.8107" dy="0.264" layer="1" roundness="100" rot="R90"/>
<smd name="21" x="0" y="0" dx="2.65" dy="2.65" layer="1" thermals="no"/>
<text x="0" y="2.9909" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.9909" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="QFN50P400X400X100-21T265" urn="urn:adsk.eagle:package:6269929/1" type="model" library_version="3">
<description>20-QFN, 0.50 mm pitch, 4.00 X 4.00 X 1.00 mm body, 2.65 X 2.65 mm thermal pad
&lt;p&gt;20-pin QFN package with 0.50 mm pitch with body size 4.00 X 4.00 X 1.00 mm and thermal pad size 2.65 X 2.65 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="QFN50P400X400X100-21T265"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="NRF24L01P" library_version="2">
<wire x1="-10.16" y1="15.24" x2="10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="-10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-10.16" y1="15.24" x2="-10.16" y2="-17.78" width="0.254" layer="94"/>
<text x="11.43" y="20.32" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="11.43" y="17.78" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="CE" x="-15.24" y="5.08" length="middle"/>
<pin name="CSN" x="-15.24" y="2.54" length="middle" direction="in"/>
<pin name="SCK" x="-15.24" y="0" length="middle"/>
<pin name="MOSI" x="-15.24" y="-2.54" length="middle"/>
<pin name="MISO" x="-15.24" y="-5.08" length="middle"/>
<pin name="IRQ" x="-15.24" y="-7.62" length="middle"/>
<pin name="VDD" x="-15.24" y="12.7" length="middle" direction="pwr"/>
<pin name="VSS" x="-15.24" y="10.16" length="middle" direction="pwr"/>
<pin name="XC2" x="-15.24" y="-12.7" length="middle"/>
<pin name="XC1" x="-15.24" y="-15.24" length="middle"/>
<pin name="ANT2" x="15.24" y="5.08" length="middle" rot="R180"/>
<pin name="ANT1" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="VDD_PA" x="15.24" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="DVDD" x="15.24" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="IREF" x="15.24" y="-5.08" length="middle" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="NRF24L01P" prefix="IC" library_version="3">
<description>&lt;b&gt;Single Chip 2.4GHz Transceiver&lt;/b&gt;&lt;p&gt;
Source: &lt;a href=""&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="NRF24L01P" x="0" y="0"/>
</gates>
<devices>
<device name="QFN20" package="QFN50P400X400X100-21T265">
<connects>
<connect gate="G$1" pin="ANT1" pad="12"/>
<connect gate="G$1" pin="ANT2" pad="13"/>
<connect gate="G$1" pin="CE" pad="1"/>
<connect gate="G$1" pin="CSN" pad="2"/>
<connect gate="G$1" pin="DVDD" pad="19"/>
<connect gate="G$1" pin="IREF" pad="16"/>
<connect gate="G$1" pin="IRQ" pad="6"/>
<connect gate="G$1" pin="MISO" pad="5"/>
<connect gate="G$1" pin="MOSI" pad="4"/>
<connect gate="G$1" pin="SCK" pad="3"/>
<connect gate="G$1" pin="VDD" pad="7 15 18"/>
<connect gate="G$1" pin="VDD_PA" pad="11"/>
<connect gate="G$1" pin="VSS" pad="8 14 17 20 21"/>
<connect gate="G$1" pin="XC1" pad="10"/>
<connect gate="G$1" pin="XC2" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:6269929/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Antenna" urn="urn:adsk.wipprod:fs.file:vf.uHzKrjWcRvmF5PCigkQH5A">
<packages>
<package name="M310220" library_version="3">
<smd name="FEED" x="-1" y="-0.8" dx="1" dy="1.6" layer="1"/>
<smd name="GROUND" x="1.1" y="-0.8" dx="1.1" dy="1.6" layer="1"/>
<smd name="GNDCAP-GROUND" x="2.25" y="-0.25" dx="0.5" dy="0.5" layer="1"/>
<smd name="GNDCAP-GND" x="3.25" y="-0.25" dx="0.5" dy="0.5" layer="1"/>
<smd name="FEEDCAP-ANT" x="-2.25" y="-1.35" dx="0.5" dy="0.5" layer="1"/>
<smd name="FEEDCAP-GND" x="-3.25" y="-1.35" dx="0.5" dy="0.5" layer="1"/>
<rectangle x1="0" y1="-4" x2="4" y2="-0.5" layer="41"/>
<rectangle x1="-3" y1="-1" x2="-1.5" y2="0" layer="41"/>
<wire x1="-1.7" y1="0.2" x2="-1.7" y2="-1.8" width="0.127" layer="21"/>
<wire x1="-1.7" y1="-1.8" x2="1.8" y2="-1.8" width="0.127" layer="21"/>
<wire x1="1.8" y1="-1.8" x2="1.8" y2="0.2" width="0.127" layer="21"/>
<wire x1="1.8" y1="0.2" x2="-1.7" y2="0.2" width="0.127" layer="21"/>
<wire x1="2.4" y1="0.1" x2="3.1" y2="0.1" width="0.127" layer="21"/>
<wire x1="2.4" y1="-0.6" x2="3.1" y2="-0.6" width="0.127" layer="21"/>
<wire x1="-3.1" y1="-1.7" x2="-2.4" y2="-1.7" width="0.127" layer="21"/>
<wire x1="-3.1" y1="-1" x2="-2.4" y2="-1" width="0.127" layer="21"/>
<text x="2.2" y="-1.4" size="0.6096" layer="21">&gt;NAME</text>
<text x="2.2" y="-2.1" size="0.6096" layer="21">&gt;VALUE</text>
<rectangle x1="-2.3" y1="-0.8" x2="-2" y2="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ANTENNA" library_version="1">
<wire x1="-1.27" y1="1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<text x="8.89" y="-1.27" size="1.778" layer="95">&gt;NAME</text>
<text x="8.89" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="ANTENNA" x="0" y="-5.08" visible="off" length="middle" direction="in" rot="R90"/>
<pin name="P$1" x="2.54" y="-5.08" visible="off" length="short" rot="R90"/>
<wire x1="2.54" y1="-2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="6.35" y2="-5.08" width="0.254" layer="94"/>
</symbol>
<symbol name="C" library_version="1">
<description>Capacitor</description>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<pin name="POS" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="NEG" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<text x="2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="0" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-1.27" y1="-3.302" x2="-0.508" y2="-3.302" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M310220" library_version="3">
<gates>
<gate name="ANT" symbol="ANTENNA" x="0" y="5.08"/>
<gate name="ANTCAP+" symbol="C" x="0" y="-12.7"/>
<gate name="ANTCAP-" symbol="C" x="0" y="-30.48"/>
</gates>
<devices>
<device name="" package="M310220">
<connects>
<connect gate="ANT" pin="ANTENNA" pad="FEED"/>
<connect gate="ANT" pin="P$1" pad="GROUND"/>
<connect gate="ANTCAP+" pin="NEG" pad="FEEDCAP-GND"/>
<connect gate="ANTCAP+" pin="POS" pad="FEEDCAP-ANT"/>
<connect gate="ANTCAP-" pin="NEG" pad="GNDCAP-GND"/>
<connect gate="ANTCAP-" pin="POS" pad="GNDCAP-GROUND"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Crystals" urn="urn:adsk.wipprod:fs.file:vf.onnWmTi_S9-I8-RbKHzmwQ">
<packages>
<package name="WE-XTAL_IQXC-42" urn="urn:adsk.eagle:footprint:13029062/1" locally_modified="yes" library_version="1">
<description>&lt;b&gt;WE-XTAL Quartz Crystal
&lt;br&gt;&lt;br&gt;Size : &lt;/b&gt;IQXC-42
&lt;br&gt;L X W X H = 2mm X 1.6mm X 0.5mm</description>
<smd name="2" x="0.6375" y="-0.4875" dx="0.875" dy="0.775" layer="1"/>
<smd name="1" x="-0.6375" y="-0.4875" dx="0.875" dy="0.775" layer="1"/>
<smd name="4" x="-0.6375" y="0.4875" dx="0.875" dy="0.775" layer="1"/>
<smd name="3" x="0.6375" y="0.4875" dx="0.875" dy="0.775" layer="1"/>
<wire x1="-1" y1="0.8" x2="1" y2="0.8" width="0.1" layer="51"/>
<wire x1="1" y1="0.8" x2="1" y2="-0.8" width="0.1" layer="51"/>
<wire x1="1" y1="-0.8" x2="-1" y2="-0.8" width="0.1" layer="51"/>
<wire x1="-1" y1="-0.8" x2="-1" y2="0.8" width="0.1" layer="51"/>
<polygon width="0.1" layer="39" pour="solid">
<vertex x="-1.3" y="-1.1"/>
<vertex x="1.3" y="-1.1"/>
<vertex x="1.3" y="1.1"/>
<vertex x="-1.3" y="1.1"/>
</polygon>
<text x="0" y="1.5" size="0.6096" layer="25" align="bottom-center">&gt;NAME</text>
<text x="-1.7" y="-2" size="0.6096" layer="27">&gt;VALUE</text>
<circle x="-1.4" y="-1.1" radius="0.053" width="0.1" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="WE-XTAL_IQXC-42" urn="urn:adsk.eagle:package:13029082/2" type="model">
<description>&lt;b&gt;WE-XTAL Quartz Crystal
&lt;br&gt;&lt;br&gt;Size : &lt;/b&gt;IQXC-42
&lt;br&gt;L X W X H = 2mm X 1.6mm X 0.5mm</description>
<packageinstances>
<packageinstance name="WE-XTAL_IQXC-42"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="CRYSTAL-FILTER-3-POL" library_version="1">
<wire x1="1.016" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.016" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.381" y1="1.524" x2="-0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-0.381" y1="-1.524" x2="0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="-1.524" x2="0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="1.524" x2="-0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.778" x2="1.016" y2="-1.778" width="0.254" layer="94"/>
<wire x1="-1.016" y1="1.778" x2="-1.016" y2="-1.778" width="0.254" layer="94"/>
<wire x1="-1.778" y1="1.905" x2="-1.778" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-1.778" y1="2.54" x2="1.778" y2="2.54" width="0.1524" layer="94"/>
<wire x1="1.778" y1="2.54" x2="1.778" y2="1.905" width="0.1524" layer="94"/>
<wire x1="1.778" y1="-1.905" x2="1.778" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-1.778" y1="-2.54" x2="1.778" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-1.778" y1="-2.54" x2="-1.778" y2="-1.905" width="0.1524" layer="94"/>
<text x="2.54" y="1.016" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.159" y="-1.143" size="0.8636" layer="93">1</text>
<text x="-1.016" y="-3.683" size="0.8636" layer="93">2</text>
<text x="1.524" y="-1.143" size="0.8636" layer="93">3</text>
<pin name="2" x="2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1" rot="R270"/>
<pin name="1" x="-2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1"/>
<pin name="GND" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ECX-1637" prefix="X" library_version="1">
<gates>
<gate name="G$1" symbol="CRYSTAL-FILTER-3-POL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="WE-XTAL_IQXC-42">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
<connect gate="G$1" pin="GND" pad="2 4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13029082/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Inductor" urn="urn:adsk.eagle:library:16378440">
<description>&lt;B&gt;Inductors - Fixed, Variable, Coupled</description>
<packages>
<package name="INDC1006X60N" urn="urn:adsk.eagle:footprint:16378444/3" library_version="15">
<description>Chip, 1.00 X 0.60 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.00 X 0.60 X 0.60 mm&lt;/p&gt;</description>
<wire x1="0.55" y1="0.6786" x2="-0.55" y2="0.6786" width="0.12" layer="21"/>
<wire x1="0.55" y1="-0.6786" x2="-0.55" y2="-0.6786" width="0.12" layer="21"/>
<wire x1="0.55" y1="-0.35" x2="-0.55" y2="-0.35" width="0.12" layer="51"/>
<wire x1="-0.55" y1="-0.35" x2="-0.55" y2="0.35" width="0.12" layer="51"/>
<wire x1="-0.55" y1="0.35" x2="0.55" y2="0.35" width="0.12" layer="51"/>
<wire x1="0.55" y1="0.35" x2="0.55" y2="-0.35" width="0.12" layer="51"/>
<smd name="1" x="-0.4846" y="0" dx="0.56" dy="0.7291" layer="1"/>
<smd name="2" x="0.4846" y="0" dx="0.56" dy="0.7291" layer="1"/>
<text x="0" y="1.3136" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.3136" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="INDC1608X95N" urn="urn:adsk.eagle:footprint:16378451/3" library_version="15">
<description>Chip, 1.60 X 0.80 X 0.95 mm body
&lt;p&gt;Chip package with body size 1.60 X 0.80 X 0.95 mm&lt;/p&gt;</description>
<wire x1="0.875" y1="0.7991" x2="-0.875" y2="0.7991" width="0.12" layer="21"/>
<wire x1="0.875" y1="-0.7991" x2="-0.875" y2="-0.7991" width="0.12" layer="21"/>
<wire x1="0.875" y1="-0.475" x2="-0.875" y2="-0.475" width="0.12" layer="51"/>
<wire x1="-0.875" y1="-0.475" x2="-0.875" y2="0.475" width="0.12" layer="51"/>
<wire x1="-0.875" y1="0.475" x2="0.875" y2="0.475" width="0.12" layer="51"/>
<wire x1="0.875" y1="0.475" x2="0.875" y2="-0.475" width="0.12" layer="51"/>
<smd name="1" x="-0.7851" y="0" dx="0.9" dy="0.9702" layer="1"/>
<smd name="2" x="0.7688" y="0" dx="0.9326" dy="0.9702" layer="1"/>
<text x="0" y="1.4341" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.4341" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="INDC2009X120" urn="urn:adsk.eagle:footprint:16378448/3" library_version="15">
<description>Chip, 2.00 X 0.90 X 1.20 mm body
&lt;p&gt;Chip package with body size 2.00 X 0.90 X 1.20 mm&lt;/p&gt;</description>
<wire x1="1.15" y1="0.9192" x2="-1.15" y2="0.9192" width="0.12" layer="21"/>
<wire x1="1.15" y1="-0.9192" x2="-1.15" y2="-0.9192" width="0.12" layer="21"/>
<wire x1="1.15" y1="-0.6" x2="-1.15" y2="-0.6" width="0.12" layer="51"/>
<wire x1="-1.15" y1="-0.6" x2="-1.15" y2="0.6" width="0.12" layer="51"/>
<wire x1="-1.15" y1="0.6" x2="1.15" y2="0.6" width="0.12" layer="51"/>
<wire x1="1.15" y1="0.6" x2="1.15" y2="-0.6" width="0.12" layer="51"/>
<smd name="1" x="-1.0673" y="0" dx="0.8757" dy="1.2103" layer="1"/>
<smd name="2" x="1.0673" y="0" dx="0.8757" dy="1.2103" layer="1"/>
<text x="0" y="1.5542" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.5542" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="INDC2520X120N" urn="urn:adsk.eagle:footprint:16378452/3" library_version="15">
<description>Chip, 2.50 X 2.00 X 1.20 mm body
&lt;p&gt;Chip package with body size 2.50 X 2.00 X 1.20 mm&lt;/p&gt;</description>
<wire x1="1.3" y1="1.3786" x2="-1.3" y2="1.3786" width="0.12" layer="21"/>
<wire x1="1.3" y1="-1.3786" x2="-1.3" y2="-1.3786" width="0.12" layer="21"/>
<wire x1="1.3" y1="-1.05" x2="-1.3" y2="-1.05" width="0.12" layer="51"/>
<wire x1="-1.3" y1="-1.05" x2="-1.3" y2="1.05" width="0.12" layer="51"/>
<wire x1="-1.3" y1="1.05" x2="1.3" y2="1.05" width="0.12" layer="51"/>
<wire x1="1.3" y1="1.05" x2="1.3" y2="-1.05" width="0.12" layer="51"/>
<smd name="1" x="-1.125" y="0" dx="1.0791" dy="2.1291" layer="1"/>
<smd name="2" x="1.125" y="0" dx="1.0791" dy="2.1291" layer="1"/>
<text x="0" y="2.0136" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.0136" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="INDC3216X190" urn="urn:adsk.eagle:footprint:16378443/3" library_version="15">
<description>Chip, 3.20 X 1.60 X 1.90 mm body
&lt;p&gt;Chip package with body size 3.20 X 1.60 X 1.90 mm&lt;/p&gt;</description>
<wire x1="1.75" y1="1.2692" x2="-1.75" y2="1.2692" width="0.12" layer="21"/>
<wire x1="1.75" y1="-1.2692" x2="-1.75" y2="-1.2692" width="0.12" layer="21"/>
<wire x1="1.75" y1="-0.95" x2="-1.75" y2="-0.95" width="0.12" layer="51"/>
<wire x1="-1.75" y1="-0.95" x2="-1.75" y2="0.95" width="0.12" layer="51"/>
<wire x1="-1.75" y1="0.95" x2="1.75" y2="0.95" width="0.12" layer="51"/>
<wire x1="1.75" y1="0.95" x2="1.75" y2="-0.95" width="0.12" layer="51"/>
<smd name="1" x="-1.5836" y="0" dx="1.0431" dy="1.9103" layer="1"/>
<smd name="2" x="1.5836" y="0" dx="1.0431" dy="1.9103" layer="1"/>
<text x="0" y="1.9042" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.9042" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="INDC4509X190" urn="urn:adsk.eagle:footprint:16378447/3" library_version="15">
<description>Chip, 4.50 X 0.90 X 1.90 mm body
&lt;p&gt;Chip package with body size 4.50 X 0.90 X 1.90 mm&lt;/p&gt;</description>
<wire x1="2.4" y1="0.9192" x2="-2.4" y2="0.9192" width="0.12" layer="21"/>
<wire x1="2.4" y1="-0.9192" x2="-2.4" y2="-0.9192" width="0.12" layer="21"/>
<wire x1="2.4" y1="-0.6" x2="-2.4" y2="-0.6" width="0.12" layer="51"/>
<wire x1="-2.4" y1="-0.6" x2="-2.4" y2="0.6" width="0.12" layer="51"/>
<wire x1="-2.4" y1="0.6" x2="2.4" y2="0.6" width="0.12" layer="51"/>
<wire x1="2.4" y1="0.6" x2="2.4" y2="-0.6" width="0.12" layer="51"/>
<smd name="1" x="-2.11" y="0" dx="1.2904" dy="1.2103" layer="1"/>
<smd name="2" x="2.11" y="0" dx="1.2904" dy="1.2103" layer="1"/>
<text x="0" y="1.5542" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.5542" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="INDM11072X750N" urn="urn:adsk.eagle:footprint:16378449/3" library_version="15">
<description>Molded Body, 11.00 X 7.20 X 7.50 mm body
&lt;p&gt;Molded Body package with body size 11.00 X 7.20 X 7.50 mm&lt;/p&gt;</description>
<wire x1="-5.5" y1="3.6" x2="5.5" y2="3.6" width="0.12" layer="21"/>
<wire x1="-5.5" y1="-3.6" x2="5.5" y2="-3.6" width="0.12" layer="21"/>
<wire x1="5.5" y1="-3.6" x2="-5.5" y2="-3.6" width="0.12" layer="51"/>
<wire x1="-5.5" y1="-3.6" x2="-5.5" y2="3.6" width="0.12" layer="51"/>
<wire x1="-5.5" y1="3.6" x2="5.5" y2="3.6" width="0.12" layer="51"/>
<wire x1="5.5" y1="3.6" x2="5.5" y2="-3.6" width="0.12" layer="51"/>
<smd name="1" x="-4.125" y="0" dx="3.8618" dy="2.1118" layer="1"/>
<smd name="2" x="4.125" y="0" dx="3.8618" dy="2.1118" layer="1"/>
<text x="0" y="4.235" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-4.235" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="INDM3225X240" urn="urn:adsk.eagle:footprint:16378450/3" library_version="15">
<description>Molded Body, 3.20 X 2.50 X 2.40 mm body
&lt;p&gt;Molded Body package with body size 3.20 X 2.50 X 2.40 mm&lt;/p&gt;</description>
<wire x1="-1.7" y1="1.35" x2="1.7" y2="1.35" width="0.12" layer="21"/>
<wire x1="-1.7" y1="-1.35" x2="1.7" y2="-1.35" width="0.12" layer="21"/>
<wire x1="1.7" y1="-1.35" x2="-1.7" y2="-1.35" width="0.12" layer="51"/>
<wire x1="-1.7" y1="-1.35" x2="-1.7" y2="1.35" width="0.12" layer="51"/>
<wire x1="-1.7" y1="1.35" x2="1.7" y2="1.35" width="0.12" layer="51"/>
<wire x1="1.7" y1="1.35" x2="1.7" y2="-1.35" width="0.12" layer="51"/>
<smd name="1" x="-1.4783" y="0" dx="1.4588" dy="1.9291" layer="1"/>
<smd name="2" x="1.4783" y="0" dx="1.4588" dy="1.9291" layer="1"/>
<text x="0" y="1.985" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.985" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="INDM4030X267" urn="urn:adsk.eagle:footprint:16378445/3" library_version="15">
<description>Molded Body, 4.07 X 3.05 X 2.67 mm body
&lt;p&gt;Molded Body package with body size 4.07 X 3.05 X 2.67 mm&lt;/p&gt;</description>
<wire x1="-2.16" y1="1.59" x2="2.16" y2="1.59" width="0.12" layer="21"/>
<wire x1="-2.16" y1="-1.59" x2="2.16" y2="-1.59" width="0.12" layer="21"/>
<wire x1="2.16" y1="-1.59" x2="-2.16" y2="-1.59" width="0.12" layer="51"/>
<wire x1="-2.16" y1="-1.59" x2="-2.16" y2="1.59" width="0.12" layer="51"/>
<wire x1="-2.16" y1="1.59" x2="2.16" y2="1.59" width="0.12" layer="51"/>
<wire x1="2.16" y1="1.59" x2="2.16" y2="-1.59" width="0.12" layer="51"/>
<smd name="1" x="-1.514" y="0" dx="2.3041" dy="1.4202" layer="1"/>
<smd name="2" x="1.514" y="0" dx="2.3041" dy="1.4202" layer="1"/>
<text x="0" y="2.225" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.225" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="INDM4532X340" urn="urn:adsk.eagle:footprint:16378453/3" library_version="15">
<description>Molded Body, 4.50 X 3.20 X 3.40 mm body
&lt;p&gt;Molded Body package with body size 4.50 X 3.20 X 3.40 mm&lt;/p&gt;</description>
<wire x1="-2.4" y1="1.7" x2="2.4" y2="1.7" width="0.12" layer="21"/>
<wire x1="-2.4" y1="-1.7" x2="2.4" y2="-1.7" width="0.12" layer="21"/>
<wire x1="2.4" y1="-1.7" x2="-2.4" y2="-1.7" width="0.12" layer="51"/>
<wire x1="-2.4" y1="-1.7" x2="-2.4" y2="1.7" width="0.12" layer="51"/>
<wire x1="-2.4" y1="1.7" x2="2.4" y2="1.7" width="0.12" layer="51"/>
<wire x1="2.4" y1="1.7" x2="2.4" y2="-1.7" width="0.12" layer="51"/>
<smd name="1" x="-2.0086" y="0" dx="1.7931" dy="2.1291" layer="1"/>
<smd name="2" x="2.0086" y="0" dx="1.7931" dy="2.1291" layer="1"/>
<text x="0" y="2.335" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.335" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="INDM5450X580" urn="urn:adsk.eagle:footprint:16378446/3" library_version="15">
<description>Molded Body, 5.40 X 5.00 X 5.80 mm body
&lt;p&gt;Molded Body package with body size 5.40 X 5.00 X 5.80 mm&lt;/p&gt;</description>
<wire x1="-2.75" y1="2.65" x2="2.75" y2="2.65" width="0.12" layer="21"/>
<wire x1="-2.75" y1="-2.65" x2="2.75" y2="-2.65" width="0.12" layer="21"/>
<wire x1="2.75" y1="-2.65" x2="-2.75" y2="-2.65" width="0.12" layer="51"/>
<wire x1="-2.75" y1="-2.65" x2="-2.75" y2="2.65" width="0.12" layer="51"/>
<wire x1="-2.75" y1="2.65" x2="2.75" y2="2.65" width="0.12" layer="51"/>
<wire x1="2.75" y1="2.65" x2="2.75" y2="-2.65" width="0.12" layer="51"/>
<smd name="1" x="-2.4383" y="0" dx="1.6525" dy="4.1153" layer="1"/>
<smd name="2" x="2.4383" y="0" dx="1.6525" dy="4.1153" layer="1"/>
<text x="0" y="3.285" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-3.285" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="INDM8530X267" urn="urn:adsk.eagle:footprint:16378454/3" library_version="15">
<description>Molded Body, 8.51 X 3.05 X 2.67 mm body
&lt;p&gt;Molded Body package with body size 8.51 X 3.05 X 2.67 mm&lt;/p&gt;</description>
<wire x1="-4.38" y1="1.59" x2="4.38" y2="1.59" width="0.12" layer="21"/>
<wire x1="-4.38" y1="-1.59" x2="4.38" y2="-1.59" width="0.12" layer="21"/>
<wire x1="4.38" y1="-1.59" x2="-4.38" y2="-1.59" width="0.12" layer="51"/>
<wire x1="-4.38" y1="-1.59" x2="-4.38" y2="1.59" width="0.12" layer="51"/>
<wire x1="-4.38" y1="1.59" x2="4.38" y2="1.59" width="0.12" layer="51"/>
<wire x1="4.38" y1="1.59" x2="4.38" y2="-1.59" width="0.12" layer="51"/>
<smd name="1" x="-3.734" y="0" dx="2.3041" dy="1.4202" layer="1"/>
<smd name="2" x="3.734" y="0" dx="2.3041" dy="1.4202" layer="1"/>
<text x="0" y="2.225" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.225" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="INDRD2743W50D3810H2616B" urn="urn:adsk.eagle:footprint:16378442/3" library_version="15">
<description>Radial Non-Polarized Inductor, 27.43 mm pitch, 38.10 mm body diameter, 26.16 mm body height
&lt;p&gt;Radial Non-Polarized Inductor package with 27.43 mm pitch (lead spacing), 0.51 mm lead diameter, 38.10 mm body diameter and 26.16 mm body height&lt;/p&gt;</description>
<circle x="0" y="0" radius="19.05" width="0.12" layer="21"/>
<circle x="0" y="0" radius="19.05" width="0.12" layer="51"/>
<pad name="1" x="-13.716" y="0" drill="0.708" diameter="1.308"/>
<pad name="2" x="13.716" y="0" drill="0.708" diameter="1.308"/>
<text x="0" y="19.685" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-19.685" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="INDC1006X60N" urn="urn:adsk.eagle:package:16378468/3" type="model">
<description>Chip, 1.00 X 0.60 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.00 X 0.60 X 0.60 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="INDC1006X60N"/>
</packageinstances>
</package3d>
<package3d name="INDC1608X95N" urn="urn:adsk.eagle:package:16378473/3" type="model">
<description>Chip, 1.60 X 0.80 X 0.95 mm body
&lt;p&gt;Chip package with body size 1.60 X 0.80 X 0.95 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="INDC1608X95N"/>
</packageinstances>
</package3d>
<package3d name="INDC2009X120" urn="urn:adsk.eagle:package:16378480/3" type="model">
<description>Chip, 2.00 X 0.90 X 1.20 mm body
&lt;p&gt;Chip package with body size 2.00 X 0.90 X 1.20 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="INDC2009X120"/>
</packageinstances>
</package3d>
<package3d name="INDC2520X120N" urn="urn:adsk.eagle:package:16378469/3" type="model">
<description>Chip, 2.50 X 2.00 X 1.20 mm body
&lt;p&gt;Chip package with body size 2.50 X 2.00 X 1.20 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="INDC2520X120N"/>
</packageinstances>
</package3d>
<package3d name="INDC3216X190" urn="urn:adsk.eagle:package:16378477/3" type="model">
<description>Chip, 3.20 X 1.60 X 1.90 mm body
&lt;p&gt;Chip package with body size 3.20 X 1.60 X 1.90 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="INDC3216X190"/>
</packageinstances>
</package3d>
<package3d name="INDC4509X190" urn="urn:adsk.eagle:package:16378476/3" type="model">
<description>Chip, 4.50 X 0.90 X 1.90 mm body
&lt;p&gt;Chip package with body size 4.50 X 0.90 X 1.90 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="INDC4509X190"/>
</packageinstances>
</package3d>
<package3d name="INDM11072X750N" urn="urn:adsk.eagle:package:16378471/4" type="model">
<description>Molded Body, 11.00 X 7.20 X 7.50 mm body
&lt;p&gt;Molded Body package with body size 11.00 X 7.20 X 7.50 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="INDM11072X750N"/>
</packageinstances>
</package3d>
<package3d name="INDM3225X240" urn="urn:adsk.eagle:package:16378472/3" type="model">
<description>Molded Body, 3.20 X 2.50 X 2.40 mm body
&lt;p&gt;Molded Body package with body size 3.20 X 2.50 X 2.40 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="INDM3225X240"/>
</packageinstances>
</package3d>
<package3d name="INDM4030X267" urn="urn:adsk.eagle:package:16378478/3" type="model">
<description>Molded Body, 4.07 X 3.05 X 2.67 mm body
&lt;p&gt;Molded Body package with body size 4.07 X 3.05 X 2.67 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="INDM4030X267"/>
</packageinstances>
</package3d>
<package3d name="INDM4532X340" urn="urn:adsk.eagle:package:16378474/3" type="model">
<description>Molded Body, 4.50 X 3.20 X 3.40 mm body
&lt;p&gt;Molded Body package with body size 4.50 X 3.20 X 3.40 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="INDM4532X340"/>
</packageinstances>
</package3d>
<package3d name="INDM5450X580" urn="urn:adsk.eagle:package:16378479/3" type="model">
<description>Molded Body, 5.40 X 5.00 X 5.80 mm body
&lt;p&gt;Molded Body package with body size 5.40 X 5.00 X 5.80 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="INDM5450X580"/>
</packageinstances>
</package3d>
<package3d name="INDM8530X267" urn="urn:adsk.eagle:package:16378475/4" type="model">
<description>Molded Body, 8.51 X 3.05 X 2.67 mm body
&lt;p&gt;Molded Body package with body size 8.51 X 3.05 X 2.67 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="INDM8530X267"/>
</packageinstances>
</package3d>
<package3d name="INDRD2743W50D3810H2616B" urn="urn:adsk.eagle:package:16378465/3" type="model">
<description>Radial Non-Polarized Inductor, 27.43 mm pitch, 38.10 mm body diameter, 26.16 mm body height
&lt;p&gt;Radial Non-Polarized Inductor package with 27.43 mm pitch (lead spacing), 0.51 mm lead diameter, 38.10 mm body diameter and 26.16 mm body height&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="INDRD2743W50D3810H2616B"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="L" urn="urn:adsk.eagle:symbol:16378441/2" library_version="15">
<description>INDUCTOR</description>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="7.62" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="0" y="2.54" size="1.778" layer="95" align="center">&gt;NAME</text>
<text x="0" y="-5.08" size="1.778" layer="97" align="center">&gt;SPICEMODEL</text>
<text x="0" y="-2.54" size="1.778" layer="96" align="center">&gt;VALUE</text>
<text x="0" y="-7.62" size="1.778" layer="97" align="center">&gt;SPICEEXTRA</text>
<wire x1="-2.54" y1="0" x2="0" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.254" layer="94" curve="-180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="L" urn="urn:adsk.eagle:component:16378481/9" prefix="L" uservalue="yes" library_version="15">
<description>&lt;B&gt;Inductor Fixed - Generic</description>
<gates>
<gate name="G$1" symbol="L" x="0" y="0"/>
</gates>
<devices>
<device name="CHIP-0402(1006-METRIC)" package="INDC1006X60N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378468/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Inductor" constant="no"/>
<attribute name="CURRENT_RATING" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0603(1608-METRIC)" package="INDC1608X95N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378473/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Inductor" constant="no"/>
<attribute name="CURRENT_RATING" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0805(2012-METRIC)" package="INDC2009X120">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378480/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Inductor" constant="no"/>
<attribute name="CURRENT_RATING" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1008(2520-METRIC)" package="INDC2520X120N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378469/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Inductor" constant="no"/>
<attribute name="CURRENT_RATING" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1206(3216-METRIC)" package="INDC3216X190">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378477/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Inductor" constant="no"/>
<attribute name="CURRENT_RATING" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP(4509-METRIC)" package="INDC4509X190">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378476/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Inductor" constant="no"/>
<attribute name="CURRENT_RATING" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MOLDED-(11072-METRIC)" package="INDM11072X750N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378471/4"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Inductor" constant="no"/>
<attribute name="CURRENT_RATING" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MOLDED-1210(3225-METRIC)" package="INDM3225X240">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378472/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Inductor" constant="no"/>
<attribute name="CURRENT_RATING" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MOLDED-1612(4030-METRIC)" package="INDM4030X267">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378478/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Inductor" constant="no"/>
<attribute name="CURRENT_RATING" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MOLDED-1812(4532-METRIC)" package="INDM4532X340">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378474/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Inductor" constant="no"/>
<attribute name="CURRENT_RATING" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MOLDED(5450-METRIC)" package="INDM5450X580">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378479/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Inductor" constant="no"/>
<attribute name="CURRENT_RATING" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MOLDED(8530-METRIC)" package="INDM8530X267">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378475/4"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Inductor" constant="no"/>
<attribute name="CURRENT_RATING" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="RADIAL-26MM-DIA" package="INDRD2743W50D3810H2616B">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378465/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Inductor" constant="no"/>
<attribute name="CURRENT_RATING" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
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
<class number="1" name="diff pairs" width="0" drill="0">
</class>
<class number="2" name="VCC" width="0" drill="0">
</class>
<class number="3" name="Analog" width="0" drill="0">
</class>
<class number="4" name="Data" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:42976481" deviceset="A4L-LOC" device=""/>
<part name="CON" library="Ecg Electrodes" library_urn="urn:adsk.wipprod:fs.file:vf.46NIdcSXTXavAmWnSHNz0g" deviceset="ECG_ELECTRODE_CONNECTOR" device="" value="GND ELECTRODE"/>
<part name="BAT" library="batery holder" library_urn="urn:adsk.wipprod:fs.file:vf.gun4ivynSsSD8c7IOmTmhw" deviceset="2025" device="BAT-HLD-005-THM"/>
<part name="MCU" library="Texas Instruments" library_urn="urn:adsk.wipprod:fs.file:vf.rkiZc7xtTJmkp3nhtdsVfQ" deviceset="MSPM0G1107" device="VQFN24-ROUNDPADS" package3d_urn="urn:adsk.eagle:package:6269953/1" value="MSPM0G1107T"/>
<part name="MEM" library="MemoryChips" library_urn="urn:adsk.wipprod:fs.file:vf.RhlJRgs0Q_29VW7bvhc80g" deviceset="MX25V80066" device="USON8L" package3d_urn="urn:adsk.eagle:package:9246079/2"/>
<part name="C2" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16290898/5" technology="_" value="10u"/>
<part name="C3" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16290898/5" technology="_" value="100n"/>
<part name="C4" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16290898/5" technology="_" value="100n"/>
<part name="C5" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16290898/5" technology="_" value="100n"/>
<part name="C6" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16290898/5" technology="_" value="100n"/>
<part name="SUPPLY1" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND-BAR" device="" value="GND"/>
<part name="SUPPLY2" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND-BAR" device="" value="GND"/>
<part name="D1" library="LED" library_urn="urn:adsk.eagle:library:22900745" deviceset="CHIP-FLAT-R" device="_0402" package3d_urn="urn:adsk.eagle:package:24294790/1" value="LED_RED"/>
<part name="D2" library="LED" library_urn="urn:adsk.eagle:library:22900745" deviceset="CHIP-FLAT-Y" device="_0402" package3d_urn="urn:adsk.eagle:package:24294788/1" value="LED_YELLOW"/>
<part name="R1" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="100R"/>
<part name="R2" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="100R"/>
<part name="SUPPLY3" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND-BAR" device="" value="GND"/>
<part name="C11" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16290898/5" technology="_" value="470n"/>
<part name="SUPPLY4" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND-BAR" device="" value="GND"/>
<part name="SWD-PWR" library="DebugConnectors§" library_urn="urn:adsk.wipprod:fs.file:vf.IDRUFOyvSruDhEXzwFmZGw" deviceset="PWR" device="" value="PWR"/>
<part name="SWD" library="DebugConnectors§" library_urn="urn:adsk.wipprod:fs.file:vf.IDRUFOyvSruDhEXzwFmZGw" deviceset="SWD" device=""/>
<part name="SUPPLY5" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND-BAR" device="" value="GND"/>
<part name="SUPPLY7" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND-BAR" device="" value="GND"/>
<part name="EMG1" library="Ecg Electrodes" library_urn="urn:adsk.wipprod:fs.file:vf.46NIdcSXTXavAmWnSHNz0g" deviceset="SHIELDED-CONNECTOR" device="" value="SHIELDED-CONNECTOR"/>
<part name="EMG2" library="Ecg Electrodes" library_urn="urn:adsk.wipprod:fs.file:vf.46NIdcSXTXavAmWnSHNz0g" deviceset="SHIELDED-CONNECTOR" device=""/>
<part name="SUPPLY8" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND-BAR" device="" value="GND"/>
<part name="U$1" library="Ecg Electrodes" library_urn="urn:adsk.wipprod:fs.file:vf.46NIdcSXTXavAmWnSHNz0g" deviceset="AD8232" device="LFCSP" package3d_urn="urn:adsk.eagle:package:28349030/3" value="AD8232LFCSP"/>
<part name="R5" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="10M"/>
<part name="R6" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="10M"/>
<part name="R7" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="180k"/>
<part name="R8" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="180k"/>
<part name="C12" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16290898/5" technology="_" value="1n"/>
<part name="C13" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16290898/5" technology="_" value="220n"/>
<part name="R9" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="140k"/>
<part name="R10" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="10M"/>
<part name="R11" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="10M"/>
<part name="C14" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16290898/5" technology="_" value="100n"/>
<part name="SUPPLY9" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND-BAR" device="" value="GND"/>
<part name="SUPPLY10" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND-BAR" device="" value="GND"/>
<part name="R12" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="140k"/>
<part name="R13" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="1.4M"/>
<part name="C15" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16290898/5" technology="_" value="220n"/>
<part name="R14" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="44k"/>
<part name="R15" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="44k"/>
<part name="C16" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16290898/5" technology="_" value="22n"/>
<part name="R16" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="100k"/>
<part name="R17" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="1M"/>
<part name="C17" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16290898/5" technology="_" value="1.5n"/>
<part name="R18" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="47k"/>
<part name="COM" library="nRF24L01" library_urn="urn:adsk.wipprod:fs.file:vf.eGUO-JQZQtCrGG-vkh28Ew" deviceset="NRF24L01P" device="QFN20" package3d_urn="urn:adsk.eagle:package:6269929/1" value="NRF24L01P"/>
<part name="ANT" library="Antenna" library_urn="urn:adsk.wipprod:fs.file:vf.uHzKrjWcRvmF5PCigkQH5A" deviceset="M310220" device="" value="M310220"/>
<part name="X1" library="Crystals" library_urn="urn:adsk.wipprod:fs.file:vf.onnWmTi_S9-I8-RbKHzmwQ" deviceset="ECX-1637" device="" package3d_urn="urn:adsk.eagle:package:13029082/2"/>
<part name="C1" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0402(1005-METRIC)" package3d_urn="urn:adsk.eagle:package:16290895/5" technology="_" value="10p"/>
<part name="C7" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0402(1005-METRIC)" package3d_urn="urn:adsk.eagle:package:16290895/5" technology="_" value="10p"/>
<part name="SUPPLY11" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND-BAR" device="" value="GND"/>
<part name="SUPPLY12" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND-BAR" device="" value="GND"/>
<part name="R3" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0402(1005-METRIC)" package3d_urn="urn:adsk.eagle:package:16378568/5" technology="_" value="22k"/>
<part name="C8" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0402(1005-METRIC)" package3d_urn="urn:adsk.eagle:package:16290895/5" technology="_" value="33n"/>
<part name="C9" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0402(1005-METRIC)" package3d_urn="urn:adsk.eagle:package:16290895/5" technology="_" value="1p5"/>
<part name="C10" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0402(1005-METRIC)" package3d_urn="urn:adsk.eagle:package:16290895/5" technology="_" value="1p"/>
<part name="C18" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0402(1005-METRIC)" package3d_urn="urn:adsk.eagle:package:16290895/5" technology="_" value="2n2"/>
<part name="C19" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0402(1005-METRIC)" package3d_urn="urn:adsk.eagle:package:16290895/5" technology="_" value="4n7"/>
<part name="L1" library="Inductor" library_urn="urn:adsk.eagle:library:16378440" deviceset="L" device="CHIP-0402(1006-METRIC)" package3d_urn="urn:adsk.eagle:package:16378468/3" technology="_" value="8n2"/>
<part name="L2" library="Inductor" library_urn="urn:adsk.eagle:library:16378440" deviceset="L" device="CHIP-0402(1006-METRIC)" package3d_urn="urn:adsk.eagle:package:16378468/3" technology="_" value="2n7"/>
<part name="L3" library="Inductor" library_urn="urn:adsk.eagle:library:16378440" deviceset="L" device="CHIP-0402(1006-METRIC)" package3d_urn="urn:adsk.eagle:package:16378468/3" technology="_" value="3n9"/>
<part name="SUPPLY13" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND-BAR" device="" value="GND"/>
<part name="SUPPLY16" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND-BAR" device="" value="GND"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="217.17" y="20.574" size="2.54" layer="94">Marek Mach</text>
<text x="236.474" y="127.254" size="1.778" layer="96" rot="R270">4p7</text>
<text x="241.554" y="127.254" size="1.778" layer="96" rot="R270">2p7</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes">
<attribute name="DRAWING_NAME" x="217.17" y="15.24" size="2.54" layer="94"/>
<attribute name="LAST_DATE_TIME" x="217.17" y="10.16" size="2.286" layer="94"/>
<attribute name="SHEET" x="230.505" y="5.08" size="2.54" layer="94"/>
</instance>
<instance part="CON" gate="G$1" x="119.38" y="45.72" smashed="yes" rot="R90">
<attribute name="NAME" x="125.73" y="55.118" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="125.73" y="52.578" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="BAT" gate="G$1" x="12.7" y="27.94" smashed="yes" rot="MR270">
<attribute name="NAME" x="6.35" y="25.4" size="1.778" layer="95" rot="MR180" align="center-left"/>
</instance>
<instance part="MCU" gate="G$1" x="43.18" y="127" smashed="yes">
<attribute name="NAME" x="30.48" y="150.114" size="1.778" layer="95"/>
<attribute name="VALUE" x="30.48" y="101.346" size="1.778" layer="96" align="top-left"/>
</instance>
<instance part="MEM" gate="G$1" x="60.96" y="50.8" smashed="yes">
<attribute name="NAME" x="53.34" y="58.674" size="1.778" layer="95"/>
<attribute name="VALUE" x="48.26" y="42.926" size="1.778" layer="96" align="top-left"/>
</instance>
<instance part="C2" gate="G$1" x="22.86" y="21.59" smashed="yes">
<attribute name="NAME" x="25.4" y="24.13" size="1.778" layer="95"/>
<attribute name="VALUE" x="25.4" y="21.59" size="1.778" layer="96"/>
</instance>
<instance part="C3" gate="G$1" x="38.1" y="21.59" smashed="yes">
<attribute name="NAME" x="40.64" y="24.13" size="1.778" layer="95"/>
<attribute name="VALUE" x="40.64" y="21.59" size="1.778" layer="96"/>
</instance>
<instance part="C4" gate="G$1" x="48.26" y="21.59" smashed="yes">
<attribute name="NAME" x="50.8" y="24.13" size="1.778" layer="95"/>
<attribute name="VALUE" x="50.8" y="21.59" size="1.778" layer="96"/>
</instance>
<instance part="C5" gate="G$1" x="58.42" y="21.59" smashed="yes">
<attribute name="NAME" x="60.96" y="24.13" size="1.778" layer="95"/>
<attribute name="VALUE" x="60.96" y="21.59" size="1.778" layer="96"/>
</instance>
<instance part="C6" gate="G$1" x="68.58" y="21.59" smashed="yes">
<attribute name="NAME" x="71.12" y="24.13" size="1.778" layer="95"/>
<attribute name="VALUE" x="71.12" y="21.59" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY1" gate="G$1" x="12.7" y="7.62" smashed="yes">
<attribute name="VALUE" x="12.7" y="5.715" size="1.778" layer="96" align="center"/>
</instance>
<instance part="SUPPLY2" gate="G$1" x="119.38" y="33.02" smashed="yes">
<attribute name="VALUE" x="119.38" y="31.115" size="1.778" layer="96" align="center"/>
</instance>
<instance part="D1" gate="G$1" x="88.9" y="149.86" smashed="yes" rot="MR90">
<attribute name="NAME" x="96.52" y="154.178" size="1.778" layer="95" rot="MR180" align="top-right"/>
<attribute name="VALUE" x="96.52" y="152.146" size="1.778" layer="96" rot="MR180" align="top-right"/>
</instance>
<instance part="D2" gate="G$1" x="88.9" y="139.7" smashed="yes" rot="MR90">
<attribute name="NAME" x="96.52" y="144.018" size="1.778" layer="95" rot="MR180" align="top-right"/>
<attribute name="VALUE" x="96.52" y="141.986" size="1.778" layer="96" rot="MR180" align="top-right"/>
</instance>
<instance part="R1" gate="G$1" x="104.14" y="149.86" smashed="yes">
<attribute name="NAME" x="104.14" y="152.4" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="104.14" y="147.32" size="1.778" layer="96" align="center"/>
</instance>
<instance part="R2" gate="G$1" x="104.14" y="139.7" smashed="yes">
<attribute name="NAME" x="104.14" y="142.24" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="104.14" y="137.16" size="1.778" layer="96" align="center"/>
</instance>
<instance part="SUPPLY3" gate="G$1" x="22.86" y="99.06" smashed="yes">
<attribute name="VALUE" x="22.86" y="97.155" size="1.778" layer="96" align="center"/>
</instance>
<instance part="C11" gate="G$1" x="15.24" y="134.62" smashed="yes">
<attribute name="NAME" x="17.78" y="137.16" size="1.778" layer="95"/>
<attribute name="VALUE" x="17.78" y="134.62" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY4" gate="G$1" x="15.24" y="124.46" smashed="yes">
<attribute name="VALUE" x="15.24" y="122.555" size="1.778" layer="96" align="center"/>
</instance>
<instance part="SWD-PWR" gate="PWR" x="55.88" y="160.02" smashed="yes">
<attribute name="NAME" x="52.07" y="165.735" size="1.778" layer="95"/>
</instance>
<instance part="SWD" gate="SWD" x="35.56" y="160.02" smashed="yes">
<attribute name="NAME" x="29.21" y="165.735" size="1.778" layer="95"/>
</instance>
<instance part="SUPPLY5" gate="G$1" x="50.8" y="154.94" smashed="yes">
<attribute name="VALUE" x="50.8" y="153.035" size="1.778" layer="96" align="center"/>
</instance>
<instance part="SUPPLY7" gate="G$1" x="76.2" y="40.64" smashed="yes">
<attribute name="VALUE" x="76.2" y="38.735" size="1.778" layer="96" align="center"/>
</instance>
<instance part="EMG1" gate="G$1" x="116.84" y="78.74" smashed="yes" rot="MR0">
<attribute name="NAME" x="121.92" y="82.55" size="1.778" layer="95" rot="MR0"/>
</instance>
<instance part="EMG2" gate="G$1" x="116.84" y="66.04" smashed="yes" rot="MR0">
<attribute name="NAME" x="121.92" y="69.85" size="1.778" layer="95" rot="MR0"/>
</instance>
<instance part="SUPPLY8" gate="G$1" x="127" y="60.96" smashed="yes">
<attribute name="VALUE" x="127" y="59.055" size="1.778" layer="96" align="center"/>
</instance>
<instance part="U$1" gate="IC" x="193.04" y="55.88" smashed="yes">
<attribute name="NAME" x="177.8" y="71.374" size="1.778" layer="95"/>
<attribute name="VALUE" x="177.8" y="42.926" size="1.778" layer="96" align="top-left"/>
</instance>
<instance part="R5" gate="G$1" x="144.78" y="63.5" smashed="yes" rot="R90">
<attribute name="NAME" x="142.24" y="68.58" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="142.24" y="63.5" size="1.778" layer="96" rot="R90" align="center"/>
</instance>
<instance part="R6" gate="G$1" x="139.7" y="63.5" smashed="yes" rot="R90">
<attribute name="NAME" x="137.16" y="68.58" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="137.16" y="63.5" size="1.778" layer="96" rot="R90" align="center"/>
</instance>
<instance part="R7" gate="G$1" x="165.1" y="66.04" smashed="yes" rot="R180">
<attribute name="NAME" x="160.02" y="71.12" size="1.778" layer="95" rot="R180" align="center"/>
<attribute name="VALUE" x="165.1" y="71.12" size="1.778" layer="96" rot="R180" align="center"/>
</instance>
<instance part="R8" gate="G$1" x="165.1" y="63.5" smashed="yes" rot="R180">
<attribute name="NAME" x="160.02" y="68.58" size="1.778" layer="95" rot="R180" align="center"/>
<attribute name="VALUE" x="165.1" y="68.58" size="1.778" layer="96" rot="R180" align="center"/>
</instance>
<instance part="C12" gate="G$1" x="149.86" y="62.23" smashed="yes" rot="R180">
<attribute name="NAME" x="148.59" y="64.77" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="148.59" y="59.69" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C13" gate="G$1" x="191.77" y="76.2" smashed="yes" rot="R90">
<attribute name="NAME" x="194.31" y="77.47" size="1.778" layer="95"/>
<attribute name="VALUE" x="186.69" y="77.47" size="1.778" layer="96"/>
</instance>
<instance part="R9" gate="G$1" x="220.98" y="76.2" smashed="yes" rot="R90">
<attribute name="NAME" x="223.52" y="81.28" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="223.52" y="76.2" size="1.778" layer="96" rot="R90" align="center"/>
</instance>
<instance part="R10" gate="G$1" x="236.22" y="55.88" smashed="yes" rot="R90">
<attribute name="NAME" x="241.3" y="53.34" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="241.3" y="50.8" size="1.778" layer="96" align="center"/>
</instance>
<instance part="R11" gate="G$1" x="236.22" y="71.12" smashed="yes" rot="R90">
<attribute name="NAME" x="241.3" y="68.58" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="241.3" y="66.04" size="1.778" layer="96" align="center"/>
</instance>
<instance part="C14" gate="G$1" x="246.38" y="54.61" smashed="yes" rot="R180">
<attribute name="NAME" x="247.65" y="54.61" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="247.65" y="52.07" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="SUPPLY9" gate="G$1" x="241.3" y="43.18" smashed="yes">
<attribute name="VALUE" x="241.3" y="41.275" size="1.778" layer="96" align="center"/>
</instance>
<instance part="SUPPLY10" gate="G$1" x="231.14" y="53.34" smashed="yes">
<attribute name="VALUE" x="231.14" y="51.435" size="1.778" layer="96" align="center"/>
</instance>
<instance part="R12" gate="G$1" x="226.06" y="76.2" smashed="yes" rot="R90">
<attribute name="NAME" x="228.6" y="81.28" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="228.6" y="76.2" size="1.778" layer="96" rot="R90" align="center"/>
</instance>
<instance part="R13" gate="G$1" x="132.08" y="45.72" smashed="yes" rot="R270">
<attribute name="NAME" x="142.24" y="50.8" size="1.778" layer="95" rot="R180" align="center"/>
<attribute name="VALUE" x="142.24" y="48.26" size="1.778" layer="96" rot="R180" align="center"/>
</instance>
<instance part="C15" gate="G$1" x="148.59" y="33.02" smashed="yes" rot="R90">
<attribute name="NAME" x="151.13" y="31.75" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="148.59" y="31.75" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R14" gate="G$1" x="137.16" y="45.72" smashed="yes" rot="R270">
<attribute name="NAME" x="152.4" y="50.8" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="152.4" y="48.26" size="1.778" layer="96" rot="R180" align="center"/>
</instance>
<instance part="R15" gate="G$1" x="134.62" y="45.72" smashed="yes" rot="R90">
<attribute name="NAME" x="147.32" y="50.8" size="1.778" layer="95" rot="R180" align="center"/>
<attribute name="VALUE" x="147.32" y="48.26" size="1.778" layer="96" rot="R180" align="center"/>
</instance>
<instance part="C16" gate="G$1" x="162.56" y="39.37" smashed="yes" rot="R180">
<attribute name="NAME" x="161.29" y="36.83" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="161.29" y="39.37" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R16" gate="G$1" x="175.26" y="33.02" smashed="yes" rot="R180">
<attribute name="NAME" x="170.18" y="35.56" size="1.778" layer="95" rot="R180" align="center"/>
<attribute name="VALUE" x="177.8" y="35.56" size="1.778" layer="96" rot="R180" align="center"/>
</instance>
<instance part="R17" gate="G$1" x="190.5" y="33.02" smashed="yes" rot="R180">
<attribute name="NAME" x="185.42" y="35.56" size="1.778" layer="95" rot="R180" align="center"/>
<attribute name="VALUE" x="193.04" y="35.56" size="1.778" layer="96" rot="R180" align="center"/>
</instance>
<instance part="C17" gate="G$1" x="143.51" y="38.1" smashed="yes" rot="R90">
<attribute name="NAME" x="146.05" y="39.37" size="1.778" layer="95"/>
<attribute name="VALUE" x="138.43" y="39.37" size="1.778" layer="96"/>
</instance>
<instance part="R18" gate="G$1" x="15.24" y="162.56" smashed="yes" rot="R180">
<attribute name="NAME" x="15.24" y="160.02" size="1.778" layer="95" rot="R180" align="center"/>
<attribute name="VALUE" x="15.24" y="165.1" size="1.778" layer="96" rot="R180" align="center"/>
</instance>
<instance part="COM" gate="G$1" x="162.56" y="144.78" smashed="yes">
<attribute name="NAME" x="173.99" y="162.56" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="173.99" y="160.02" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="ANT" gate="ANT" x="238.76" y="144.78" smashed="yes">
<attribute name="NAME" x="248.92" y="146.05" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="246.38" y="146.05" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="ANT" gate="ANTCAP+" x="236.22" y="129.54" smashed="yes">
<attribute name="NAME" x="231.14" y="132.08" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="228.6" y="132.08" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="ANT" gate="ANTCAP-" x="243.84" y="129.54" smashed="yes">
<attribute name="NAME" x="248.92" y="132.08" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="246.38" y="132.08" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X1" gate="G$1" x="137.16" y="127" smashed="yes" rot="MR0">
<attribute name="NAME" x="136.906" y="124.206" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="134.874" y="126.238" size="1.778" layer="96" rot="MR270"/>
</instance>
<instance part="C1" gate="G$1" x="144.78" y="120.65" smashed="yes">
<attribute name="NAME" x="147.32" y="123.19" size="1.778" layer="95"/>
<attribute name="VALUE" x="147.32" y="120.65" size="1.778" layer="96"/>
</instance>
<instance part="C7" gate="G$1" x="129.54" y="120.65" smashed="yes" rot="MR0">
<attribute name="NAME" x="127" y="123.19" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="127" y="120.65" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="SUPPLY11" gate="G$1" x="137.16" y="109.22" smashed="yes">
<attribute name="VALUE" x="137.16" y="107.315" size="1.778" layer="96" align="center"/>
</instance>
<instance part="SUPPLY12" gate="G$1" x="129.54" y="149.86" smashed="yes">
<attribute name="VALUE" x="129.54" y="147.955" size="1.778" layer="96" align="center"/>
</instance>
<instance part="R3" gate="G$1" x="187.96" y="129.54" smashed="yes" rot="R90">
<attribute name="NAME" x="185.42" y="129.54" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="190.5" y="129.54" size="1.778" layer="96" rot="R90" align="center"/>
</instance>
<instance part="C8" gate="G$1" x="180.34" y="130.81" smashed="yes">
<attribute name="NAME" x="180.848" y="133.604" size="1.778" layer="95"/>
<attribute name="VALUE" x="180.848" y="131.064" size="1.778" layer="96"/>
</instance>
<instance part="C9" gate="G$1" x="218.44" y="157.48" smashed="yes" rot="R90">
<attribute name="NAME" x="220.98" y="162.56" size="1.778" layer="95"/>
<attribute name="VALUE" x="220.98" y="160.02" size="1.778" layer="96"/>
</instance>
<instance part="C10" gate="G$1" x="226.06" y="152.4" smashed="yes">
<attribute name="NAME" x="228.6" y="154.94" size="1.778" layer="95"/>
<attribute name="VALUE" x="228.6" y="152.4" size="1.778" layer="96"/>
</instance>
<instance part="C18" gate="G$1" x="200.66" y="127" smashed="yes">
<attribute name="NAME" x="203.2" y="129.54" size="1.778" layer="95"/>
<attribute name="VALUE" x="203.2" y="127" size="1.778" layer="96"/>
</instance>
<instance part="C19" gate="G$1" x="208.28" y="127" smashed="yes">
<attribute name="NAME" x="210.82" y="129.54" size="1.778" layer="95"/>
<attribute name="VALUE" x="210.82" y="127" size="1.778" layer="96"/>
</instance>
<instance part="L1" gate="G$1" x="198.12" y="147.32" smashed="yes" rot="R90">
<attribute name="NAME" x="200.66" y="149.86" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="200.66" y="147.32" size="1.778" layer="96" align="center"/>
</instance>
<instance part="L2" gate="G$1" x="205.74" y="139.7" smashed="yes">
<attribute name="NAME" x="205.74" y="142.24" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="205.74" y="137.16" size="1.778" layer="96" align="center"/>
</instance>
<instance part="L3" gate="G$1" x="205.74" y="157.48" smashed="yes">
<attribute name="NAME" x="205.74" y="160.02" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="205.74" y="154.94" size="1.778" layer="96" align="center"/>
</instance>
<instance part="SUPPLY13" gate="G$1" x="180.34" y="116.84" smashed="yes">
<attribute name="VALUE" x="180.34" y="114.935" size="1.778" layer="96" align="center"/>
</instance>
<instance part="SUPPLY16" gate="G$1" x="220.98" y="109.22" smashed="yes">
<attribute name="VALUE" x="220.98" y="107.315" size="1.778" layer="96" align="center"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="VCC" class="2">
<segment>
<wire x1="22.86" y1="27.94" x2="22.86" y2="24.13" width="0.1524" layer="91"/>
<wire x1="22.86" y1="27.94" x2="38.1" y2="27.94" width="0.1524" layer="91"/>
<wire x1="38.1" y1="27.94" x2="38.1" y2="24.13" width="0.1524" layer="91"/>
<wire x1="38.1" y1="27.94" x2="48.26" y2="27.94" width="0.1524" layer="91"/>
<wire x1="48.26" y1="27.94" x2="48.26" y2="24.13" width="0.1524" layer="91"/>
<wire x1="48.26" y1="27.94" x2="58.42" y2="27.94" width="0.1524" layer="91"/>
<wire x1="58.42" y1="27.94" x2="58.42" y2="24.13" width="0.1524" layer="91"/>
<wire x1="58.42" y1="27.94" x2="68.58" y2="27.94" width="0.1524" layer="91"/>
<wire x1="68.58" y1="27.94" x2="68.58" y2="24.13" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="C3" gate="G$1" pin="1"/>
<pinref part="C4" gate="G$1" pin="1"/>
<pinref part="C5" gate="G$1" pin="1"/>
<pinref part="C6" gate="G$1" pin="1"/>
<pinref part="BAT" gate="G$1" pin="+"/>
<wire x1="12.7" y1="27.94" x2="12.7" y2="30.48" width="0.1524" layer="91"/>
<wire x1="12.7" y1="30.48" x2="22.86" y2="30.48" width="0.1524" layer="91"/>
<wire x1="22.86" y1="30.48" x2="22.86" y2="27.94" width="0.1524" layer="91"/>
<junction x="22.86" y="27.94"/>
<junction x="38.1" y="27.94"/>
<junction x="48.26" y="27.94"/>
<junction x="58.42" y="27.94"/>
<label x="22.86" y="30.48" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<wire x1="25.4" y1="109.22" x2="22.86" y2="109.22" width="0.1524" layer="91"/>
<label x="22.86" y="109.22" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="MCU" gate="G$1" pin="VDD"/>
</segment>
<segment>
<wire x1="53.34" y1="162.56" x2="50.8" y2="162.56" width="0.1524" layer="91"/>
<label x="50.8" y="162.56" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="SWD-PWR" gate="PWR" pin="VCC"/>
</segment>
<segment>
<pinref part="MEM" gate="G$1" pin="VCC"/>
<wire x1="73.66" y1="48.26" x2="76.2" y2="48.26" width="0.1524" layer="91"/>
<label x="76.2" y="48.26" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="213.36" y1="60.96" x2="215.9" y2="60.96" width="0.1524" layer="91"/>
<label x="215.9" y="60.96" size="1.27" layer="95" xref="yes"/>
<pinref part="U$1" gate="IC" pin="+VS"/>
</segment>
<segment>
<wire x1="213.36" y1="53.34" x2="215.9" y2="53.34" width="0.1524" layer="91"/>
<label x="215.9" y="53.34" size="1.27" layer="95" xref="yes"/>
<pinref part="U$1" gate="IC" pin="AC/DC"/>
</segment>
<segment>
<wire x1="236.22" y1="76.2" x2="236.22" y2="78.74" width="0.1524" layer="91"/>
<label x="236.22" y="78.74" size="1.27" layer="95" rot="R90" xref="yes"/>
<pinref part="R11" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="213.36" y1="55.88" x2="215.9" y2="55.88" width="0.1524" layer="91"/>
<label x="215.9" y="55.88" size="1.27" layer="95" xref="yes"/>
<pinref part="U$1" gate="IC" pin="FR"/>
</segment>
<segment>
<wire x1="10.16" y1="162.56" x2="7.62" y2="162.56" width="0.1524" layer="91"/>
<wire x1="7.62" y1="162.56" x2="7.62" y2="165.1" width="0.1524" layer="91"/>
<label x="7.62" y="165.1" size="1.27" layer="95" rot="R90" xref="yes"/>
<pinref part="R18" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="147.32" y1="157.48" x2="129.54" y2="157.48" width="0.1524" layer="91"/>
<label x="129.54" y="157.48" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="COM" gate="G$1" pin="VDD"/>
</segment>
<segment>
<wire x1="109.22" y1="149.86" x2="111.76" y2="149.86" width="0.1524" layer="91"/>
<wire x1="111.76" y1="149.86" x2="111.76" y2="139.7" width="0.1524" layer="91"/>
<wire x1="109.22" y1="139.7" x2="111.76" y2="139.7" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="111.76" y1="149.86" x2="111.76" y2="152.4" width="0.1524" layer="91"/>
<junction x="111.76" y="149.86"/>
<label x="111.76" y="152.4" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="CON" gate="G$1" pin="P$1"/>
<pinref part="SUPPLY2" gate="G$1" pin="GND"/>
<wire x1="119.38" y1="35.56" x2="119.38" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="25.4" y1="104.14" x2="22.86" y2="104.14" width="0.1524" layer="91"/>
<wire x1="22.86" y1="104.14" x2="22.86" y2="101.6" width="0.1524" layer="91"/>
<pinref part="SUPPLY3" gate="G$1" pin="GND"/>
<pinref part="MCU" gate="G$1" pin="VSS"/>
<pinref part="MCU" gate="G$1" pin="BASE"/>
<wire x1="25.4" y1="106.68" x2="22.86" y2="106.68" width="0.1524" layer="91"/>
<wire x1="22.86" y1="106.68" x2="22.86" y2="104.14" width="0.1524" layer="91"/>
<junction x="22.86" y="104.14"/>
</segment>
<segment>
<pinref part="SUPPLY4" gate="G$1" pin="GND"/>
<wire x1="15.24" y1="127" x2="15.24" y2="129.54" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="53.34" y1="160.02" x2="50.8" y2="160.02" width="0.1524" layer="91"/>
<wire x1="50.8" y1="160.02" x2="50.8" y2="157.48" width="0.1524" layer="91"/>
<pinref part="SUPPLY5" gate="G$1" pin="GND"/>
<pinref part="SWD-PWR" gate="PWR" pin="GND"/>
</segment>
<segment>
<pinref part="MEM" gate="G$1" pin="GND"/>
<wire x1="73.66" y1="45.72" x2="76.2" y2="45.72" width="0.1524" layer="91"/>
<wire x1="76.2" y1="45.72" x2="76.2" y2="43.18" width="0.1524" layer="91"/>
<pinref part="SUPPLY7" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="124.46" y1="81.28" x2="127" y2="81.28" width="0.1524" layer="91"/>
<wire x1="127" y1="81.28" x2="127" y2="68.58" width="0.1524" layer="91"/>
<wire x1="127" y1="68.58" x2="127" y2="63.5" width="0.1524" layer="91"/>
<wire x1="124.46" y1="68.58" x2="127" y2="68.58" width="0.1524" layer="91"/>
<pinref part="SUPPLY8" gate="G$1" pin="GND"/>
<pinref part="EMG2" gate="G$1" pin="GND"/>
<pinref part="EMG1" gate="G$1" pin="GND"/>
<junction x="127" y="68.58"/>
</segment>
<segment>
<wire x1="236.22" y1="50.8" x2="236.22" y2="48.26" width="0.1524" layer="91"/>
<wire x1="236.22" y1="48.26" x2="241.3" y2="48.26" width="0.1524" layer="91"/>
<wire x1="241.3" y1="48.26" x2="246.38" y2="48.26" width="0.1524" layer="91"/>
<wire x1="246.38" y1="48.26" x2="246.38" y2="50.8" width="0.1524" layer="91"/>
<wire x1="246.38" y1="50.8" x2="246.38" y2="52.07" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="1"/>
<junction x="241.3" y="48.26"/>
<wire x1="241.3" y1="48.26" x2="241.3" y2="45.72" width="0.1524" layer="91"/>
<pinref part="SUPPLY9" gate="G$1" pin="GND"/>
<pinref part="R10" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="213.36" y1="58.42" x2="231.14" y2="58.42" width="0.1524" layer="91"/>
<wire x1="231.14" y1="58.42" x2="231.14" y2="55.88" width="0.1524" layer="91"/>
<pinref part="SUPPLY10" gate="G$1" pin="GND"/>
<pinref part="U$1" gate="IC" pin="GND"/>
</segment>
<segment>
<pinref part="SUPPLY1" gate="G$1" pin="GND"/>
<wire x1="12.7" y1="10.16" x2="12.7" y2="12.7" width="0.1524" layer="91"/>
<pinref part="BAT" gate="G$1" pin="-"/>
<wire x1="12.7" y1="12.7" x2="12.7" y2="15.24" width="0.1524" layer="91"/>
<wire x1="12.7" y1="12.7" x2="22.86" y2="12.7" width="0.1524" layer="91"/>
<wire x1="22.86" y1="12.7" x2="22.86" y2="16.51" width="0.1524" layer="91"/>
<wire x1="22.86" y1="12.7" x2="38.1" y2="12.7" width="0.1524" layer="91"/>
<wire x1="38.1" y1="12.7" x2="38.1" y2="16.51" width="0.1524" layer="91"/>
<wire x1="38.1" y1="12.7" x2="48.26" y2="12.7" width="0.1524" layer="91"/>
<wire x1="48.26" y1="12.7" x2="48.26" y2="16.51" width="0.1524" layer="91"/>
<wire x1="48.26" y1="12.7" x2="58.42" y2="12.7" width="0.1524" layer="91"/>
<wire x1="58.42" y1="12.7" x2="58.42" y2="16.51" width="0.1524" layer="91"/>
<wire x1="58.42" y1="12.7" x2="68.58" y2="12.7" width="0.1524" layer="91"/>
<wire x1="68.58" y1="12.7" x2="68.58" y2="16.51" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="C6" gate="G$1" pin="2"/>
<junction x="12.7" y="12.7"/>
<junction x="22.86" y="12.7"/>
<junction x="38.1" y="12.7"/>
<junction x="48.26" y="12.7"/>
<junction x="58.42" y="12.7"/>
</segment>
<segment>
<pinref part="X1" gate="G$1" pin="GND"/>
<wire x1="137.16" y1="121.92" x2="137.16" y2="114.3" width="0.1524" layer="91"/>
<wire x1="137.16" y1="114.3" x2="144.78" y2="114.3" width="0.1524" layer="91"/>
<wire x1="144.78" y1="114.3" x2="144.78" y2="115.57" width="0.1524" layer="91"/>
<wire x1="137.16" y1="114.3" x2="137.16" y2="111.76" width="0.1524" layer="91"/>
<pinref part="SUPPLY11" gate="G$1" pin="GND"/>
<pinref part="C1" gate="G$1" pin="2"/>
<junction x="137.16" y="114.3"/>
<pinref part="C7" gate="G$1" pin="2"/>
<wire x1="129.54" y1="115.57" x2="129.54" y2="114.3" width="0.1524" layer="91"/>
<wire x1="129.54" y1="114.3" x2="137.16" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="147.32" y1="154.94" x2="129.54" y2="154.94" width="0.1524" layer="91"/>
<wire x1="129.54" y1="154.94" x2="129.54" y2="152.4" width="0.1524" layer="91"/>
<pinref part="SUPPLY12" gate="G$1" pin="GND"/>
<pinref part="COM" gate="G$1" pin="VSS"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="187.96" y1="124.46" x2="187.96" y2="121.92" width="0.1524" layer="91"/>
<wire x1="187.96" y1="121.92" x2="182.88" y2="121.92" width="0.1524" layer="91"/>
<wire x1="182.88" y1="121.92" x2="180.34" y2="121.92" width="0.1524" layer="91"/>
<wire x1="180.34" y1="121.92" x2="180.34" y2="125.73" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="2"/>
<wire x1="180.34" y1="121.92" x2="180.34" y2="119.38" width="0.1524" layer="91"/>
<junction x="180.34" y="121.92"/>
<pinref part="SUPPLY13" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="236.22" y1="124.46" x2="236.22" y2="114.3" width="0.1524" layer="91"/>
<wire x1="236.22" y1="114.3" x2="243.84" y2="114.3" width="0.1524" layer="91"/>
<wire x1="243.84" y1="114.3" x2="243.84" y2="124.46" width="0.1524" layer="91"/>
<pinref part="C19" gate="G$1" pin="2"/>
<wire x1="208.28" y1="121.92" x2="208.28" y2="114.3" width="0.1524" layer="91"/>
<wire x1="208.28" y1="114.3" x2="220.98" y2="114.3" width="0.1524" layer="91"/>
<pinref part="C18" gate="G$1" pin="2"/>
<wire x1="220.98" y1="114.3" x2="226.06" y2="114.3" width="0.1524" layer="91"/>
<wire x1="226.06" y1="114.3" x2="236.22" y2="114.3" width="0.1524" layer="91"/>
<wire x1="200.66" y1="121.92" x2="200.66" y2="114.3" width="0.1524" layer="91"/>
<wire x1="200.66" y1="114.3" x2="208.28" y2="114.3" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="2"/>
<wire x1="226.06" y1="147.32" x2="226.06" y2="114.3" width="0.1524" layer="91"/>
<wire x1="220.98" y1="114.3" x2="220.98" y2="111.76" width="0.1524" layer="91"/>
<pinref part="SUPPLY16" gate="G$1" pin="GND"/>
<junction x="236.22" y="114.3"/>
<junction x="208.28" y="114.3"/>
<junction x="220.98" y="114.3"/>
<junction x="226.06" y="114.3"/>
<pinref part="ANT" gate="ANTCAP+" pin="NEG"/>
<pinref part="ANT" gate="ANTCAP-" pin="NEG"/>
</segment>
<segment>
<pinref part="MCU" gate="G$1" pin="PA21"/>
<wire x1="60.96" y1="116.84" x2="63.5" y2="116.84" width="0.1524" layer="91"/>
<label x="63.5" y="116.84" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="EMG_REFFERENCE" class="3">
<segment>
<wire x1="165.1" y1="30.48" x2="165.1" y2="33.02" width="0.1524" layer="91"/>
<wire x1="165.1" y1="33.02" x2="165.1" y2="50.8" width="0.1524" layer="91"/>
<wire x1="165.1" y1="50.8" x2="172.72" y2="50.8" width="0.1524" layer="91"/>
<wire x1="165.1" y1="30.48" x2="215.9" y2="30.48" width="0.1524" layer="91"/>
<label x="215.9" y="30.48" size="1.27" layer="95" xref="yes"/>
<wire x1="170.18" y1="33.02" x2="165.1" y2="33.02" width="0.1524" layer="91"/>
<pinref part="C16" gate="G$1" pin="1"/>
<wire x1="162.56" y1="36.83" x2="162.56" y2="33.02" width="0.1524" layer="91"/>
<wire x1="162.56" y1="33.02" x2="165.1" y2="33.02" width="0.1524" layer="91"/>
<pinref part="C15" gate="G$1" pin="2"/>
<wire x1="153.67" y1="33.02" x2="162.56" y2="33.02" width="0.1524" layer="91"/>
<junction x="165.1" y="33.02"/>
<junction x="162.56" y="33.02"/>
<pinref part="R16" gate="G$1" pin="2"/>
<pinref part="U$1" gate="IC" pin="REFOUT"/>
</segment>
<segment>
<wire x1="60.96" y1="104.14" x2="63.5" y2="104.14" width="0.1524" layer="91"/>
<label x="63.5" y="104.14" size="1.27" layer="95" xref="yes"/>
<pinref part="MCU" gate="G$1" pin="PA26"/>
</segment>
</net>
<net name="EMG_DIFFERENTIAL" class="3">
<segment>
<wire x1="172.72" y1="45.72" x2="170.18" y2="45.72" width="0.1524" layer="91"/>
<wire x1="170.18" y1="45.72" x2="170.18" y2="40.64" width="0.1524" layer="91"/>
<wire x1="170.18" y1="40.64" x2="198.12" y2="40.64" width="0.1524" layer="91"/>
<label x="215.9" y="40.64" size="1.27" layer="95" xref="yes"/>
<wire x1="198.12" y1="40.64" x2="215.9" y2="40.64" width="0.1524" layer="91"/>
<wire x1="195.58" y1="33.02" x2="198.12" y2="33.02" width="0.1524" layer="91"/>
<wire x1="198.12" y1="33.02" x2="198.12" y2="40.64" width="0.1524" layer="91"/>
<wire x1="148.59" y1="38.1" x2="152.4" y2="38.1" width="0.1524" layer="91"/>
<pinref part="C17" gate="G$1" pin="2"/>
<wire x1="152.4" y1="38.1" x2="152.4" y2="45.72" width="0.1524" layer="91"/>
<wire x1="152.4" y1="45.72" x2="170.18" y2="45.72" width="0.1524" layer="91"/>
<junction x="170.18" y="45.72"/>
<junction x="198.12" y="40.64"/>
<pinref part="R17" gate="G$1" pin="1"/>
<pinref part="U$1" gate="IC" pin="OUT"/>
</segment>
<segment>
<wire x1="60.96" y1="106.68" x2="63.5" y2="106.68" width="0.1524" layer="91"/>
<label x="63.5" y="106.68" size="1.27" layer="95" xref="yes"/>
<pinref part="MCU" gate="G$1" pin="PA25"/>
</segment>
</net>
<net name="N$2" class="2">
<segment>
<pinref part="MCU" gate="G$1" pin="VCORE"/>
<wire x1="25.4" y1="147.32" x2="15.24" y2="147.32" width="0.1524" layer="91"/>
<wire x1="15.24" y1="147.32" x2="15.24" y2="137.16" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="1"/>
</segment>
</net>
<net name="RST" class="4">
<segment>
<pinref part="SWD" gate="SWD" pin="RST"/>
<wire x1="30.48" y1="162.56" x2="22.86" y2="162.56" width="0.1524" layer="91"/>
<wire x1="22.86" y1="162.56" x2="22.86" y2="144.78" width="0.1524" layer="91"/>
<wire x1="22.86" y1="144.78" x2="25.4" y2="144.78" width="0.1524" layer="91"/>
<pinref part="MCU" gate="G$1" pin="NRST"/>
<wire x1="20.32" y1="162.56" x2="22.86" y2="162.56" width="0.1524" layer="91"/>
<junction x="22.86" y="162.56"/>
<pinref part="R18" gate="G$1" pin="1"/>
</segment>
</net>
<net name="SWDIO" class="4">
<segment>
<pinref part="SWD" gate="SWD" pin="SWDIO"/>
<wire x1="30.48" y1="160.02" x2="20.32" y2="160.02" width="0.1524" layer="91"/>
<wire x1="20.32" y1="160.02" x2="20.32" y2="142.24" width="0.1524" layer="91"/>
<wire x1="20.32" y1="142.24" x2="25.4" y2="142.24" width="0.1524" layer="91"/>
<pinref part="MCU" gate="G$1" pin="PA19/SWDIO"/>
</segment>
</net>
<net name="SWCLK" class="4">
<segment>
<pinref part="SWD" gate="SWD" pin="SWCLK"/>
<wire x1="30.48" y1="157.48" x2="17.78" y2="157.48" width="0.1524" layer="91"/>
<wire x1="17.78" y1="157.48" x2="17.78" y2="139.7" width="0.1524" layer="91"/>
<wire x1="17.78" y1="139.7" x2="25.4" y2="139.7" width="0.1524" layer="91"/>
<pinref part="MCU" gate="G$1" pin="PA20/SWCLK"/>
</segment>
</net>
<net name="RED-STATUS-LED" class="4">
<segment>
<wire x1="78.74" y1="147.32" x2="78.74" y2="149.86" width="0.1524" layer="91"/>
<wire x1="78.74" y1="149.86" x2="83.82" y2="149.86" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="C"/>
<pinref part="MCU" gate="G$1" pin="PA0"/>
<wire x1="60.96" y1="147.32" x2="78.74" y2="147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="YELLOW-STATUS-LED" class="4">
<segment>
<wire x1="78.74" y1="144.78" x2="78.74" y2="139.7" width="0.1524" layer="91"/>
<wire x1="78.74" y1="139.7" x2="83.82" y2="139.7" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="C"/>
<pinref part="MCU" gate="G$1" pin="PA1"/>
<wire x1="60.96" y1="144.78" x2="78.74" y2="144.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="3">
<segment>
<pinref part="EMG1" gate="G$1" pin="SIGNAL"/>
<wire x1="160.02" y1="66.04" x2="157.48" y2="66.04" width="0.1524" layer="91"/>
<wire x1="124.46" y1="78.74" x2="129.54" y2="78.74" width="0.1524" layer="91"/>
<wire x1="139.7" y1="73.66" x2="157.48" y2="73.66" width="0.1524" layer="91"/>
<wire x1="157.48" y1="73.66" x2="157.48" y2="66.04" width="0.1524" layer="91"/>
<wire x1="139.7" y1="68.58" x2="139.7" y2="73.66" width="0.1524" layer="91"/>
<junction x="139.7" y="73.66"/>
<wire x1="129.54" y1="78.74" x2="129.54" y2="73.66" width="0.1524" layer="91"/>
<wire x1="129.54" y1="73.66" x2="139.7" y2="73.66" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
<pinref part="R7" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$11" class="3">
<segment>
<wire x1="124.46" y1="66.04" x2="129.54" y2="66.04" width="0.1524" layer="91"/>
<pinref part="EMG2" gate="G$1" pin="SIGNAL"/>
<wire x1="160.02" y1="63.5" x2="154.94" y2="63.5" width="0.1524" layer="91"/>
<wire x1="154.94" y1="63.5" x2="154.94" y2="71.12" width="0.1524" layer="91"/>
<wire x1="154.94" y1="71.12" x2="144.78" y2="71.12" width="0.1524" layer="91"/>
<wire x1="144.78" y1="71.12" x2="129.54" y2="71.12" width="0.1524" layer="91"/>
<wire x1="129.54" y1="71.12" x2="129.54" y2="66.04" width="0.1524" layer="91"/>
<wire x1="144.78" y1="68.58" x2="144.78" y2="71.12" width="0.1524" layer="91"/>
<junction x="144.78" y="71.12"/>
<pinref part="R5" gate="G$1" pin="2"/>
<pinref part="R8" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
</segment>
</net>
<net name="MEM_CS" class="4">
<segment>
<pinref part="MEM" gate="G$1" pin="CS"/>
<wire x1="48.26" y1="48.26" x2="45.72" y2="48.26" width="0.1524" layer="91"/>
<label x="45.72" y="48.26" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="MCU" gate="G$1" pin="PA15"/>
<wire x1="60.96" y1="127" x2="63.5" y2="127" width="0.1524" layer="91"/>
<label x="63.5" y="127" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="SPI1_MOSI" class="4">
<segment>
<pinref part="MEM" gate="G$1" pin="SI"/>
<wire x1="48.26" y1="55.88" x2="45.72" y2="55.88" width="0.1524" layer="91"/>
<label x="45.72" y="55.88" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<wire x1="60.96" y1="119.38" x2="63.5" y2="119.38" width="0.1524" layer="91"/>
<label x="63.5" y="119.38" size="1.27" layer="95" xref="yes"/>
<pinref part="MCU" gate="G$1" pin="PA18"/>
</segment>
</net>
<net name="SPI1_MISO" class="4">
<segment>
<pinref part="MEM" gate="G$1" pin="SO"/>
<wire x1="48.26" y1="53.34" x2="45.72" y2="53.34" width="0.1524" layer="91"/>
<label x="45.72" y="53.34" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="MCU" gate="G$1" pin="PA16"/>
<wire x1="60.96" y1="124.46" x2="63.5" y2="124.46" width="0.1524" layer="91"/>
<label x="63.5" y="124.46" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="SPI1_SCK" class="4">
<segment>
<pinref part="MEM" gate="G$1" pin="SCLK"/>
<wire x1="48.26" y1="50.8" x2="45.72" y2="50.8" width="0.1524" layer="91"/>
<label x="45.72" y="50.8" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<wire x1="60.96" y1="121.92" x2="63.5" y2="121.92" width="0.1524" layer="91"/>
<label x="63.5" y="121.92" size="1.27" layer="95" xref="yes"/>
<pinref part="MCU" gate="G$1" pin="PA17"/>
</segment>
</net>
<net name="EMG_EN" class="4">
<segment>
<wire x1="213.36" y1="50.8" x2="215.9" y2="50.8" width="0.1524" layer="91"/>
<label x="215.9" y="50.8" size="1.27" layer="95" xref="yes"/>
<pinref part="U$1" gate="IC" pin="SDN"/>
</segment>
<segment>
<pinref part="MCU" gate="G$1" pin="PA23"/>
<wire x1="60.96" y1="111.76" x2="63.5" y2="111.76" width="0.1524" layer="91"/>
<label x="63.5" y="111.76" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="EMG_LEAD_OFF" class="4">
<segment>
<wire x1="213.36" y1="48.26" x2="215.9" y2="48.26" width="0.1524" layer="91"/>
<label x="215.9" y="48.26" size="1.27" layer="95" xref="yes"/>
<pinref part="U$1" gate="IC" pin="LO+"/>
</segment>
<segment>
<wire x1="60.96" y1="109.22" x2="63.5" y2="109.22" width="0.1524" layer="91"/>
<label x="63.5" y="109.22" size="1.27" layer="95" xref="yes"/>
<pinref part="MCU" gate="G$1" pin="PA24"/>
</segment>
</net>
<net name="N$12" class="3">
<segment>
<wire x1="170.18" y1="66.04" x2="172.72" y2="66.04" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="U$1" gate="IC" pin="+IN"/>
</segment>
</net>
<net name="N$13" class="3">
<segment>
<wire x1="170.18" y1="63.5" x2="172.72" y2="63.5" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="1"/>
<pinref part="U$1" gate="IC" pin="-IN"/>
</segment>
</net>
<net name="N$18" class="3">
<segment>
<wire x1="139.7" y1="58.42" x2="144.78" y2="58.42" width="0.1524" layer="91"/>
<wire x1="144.78" y1="58.42" x2="149.86" y2="58.42" width="0.1524" layer="91"/>
<wire x1="149.86" y1="58.42" x2="149.86" y2="59.69" width="0.1524" layer="91"/>
<pinref part="C12" gate="G$1" pin="1"/>
<wire x1="149.86" y1="58.42" x2="172.72" y2="58.42" width="0.1524" layer="91"/>
<junction x="144.78" y="58.42"/>
<junction x="149.86" y="58.42"/>
<pinref part="R5" gate="G$1" pin="1"/>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="U$1" gate="IC" pin="RLD"/>
</segment>
</net>
<net name="N$19" class="3">
<segment>
<wire x1="172.72" y1="68.58" x2="170.18" y2="68.58" width="0.1524" layer="91"/>
<wire x1="170.18" y1="68.58" x2="170.18" y2="76.2" width="0.1524" layer="91"/>
<wire x1="170.18" y1="76.2" x2="189.23" y2="76.2" width="0.1524" layer="91"/>
<pinref part="C13" gate="G$1" pin="1"/>
<pinref part="U$1" gate="IC" pin="HP_DRIVE"/>
</segment>
</net>
<net name="N$20" class="3">
<segment>
<pinref part="C13" gate="G$1" pin="2"/>
<wire x1="196.85" y1="76.2" x2="215.9" y2="76.2" width="0.1524" layer="91"/>
<wire x1="215.9" y1="76.2" x2="215.9" y2="68.58" width="0.1524" layer="91"/>
<wire x1="215.9" y1="68.58" x2="213.36" y2="68.58" width="0.1524" layer="91"/>
<wire x1="215.9" y1="68.58" x2="220.98" y2="68.58" width="0.1524" layer="91"/>
<junction x="215.9" y="68.58"/>
<wire x1="220.98" y1="68.58" x2="220.98" y2="71.12" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="1"/>
<pinref part="U$1" gate="IC" pin="HPSENSE"/>
</segment>
</net>
<net name="N$22" class="3">
<segment>
<wire x1="236.22" y1="66.04" x2="236.22" y2="63.5" width="0.1524" layer="91"/>
<wire x1="236.22" y1="63.5" x2="236.22" y2="60.96" width="0.1524" layer="91"/>
<wire x1="213.36" y1="63.5" x2="236.22" y2="63.5" width="0.1524" layer="91"/>
<wire x1="236.22" y1="63.5" x2="246.38" y2="63.5" width="0.1524" layer="91"/>
<wire x1="246.38" y1="63.5" x2="246.38" y2="59.69" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="2"/>
<junction x="236.22" y="63.5"/>
<pinref part="R10" gate="G$1" pin="2"/>
<pinref part="R11" gate="G$1" pin="1"/>
<pinref part="U$1" gate="IC" pin="REFIN"/>
</segment>
</net>
<net name="N$24" class="3">
<segment>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="132.08" y1="33.02" x2="146.05" y2="33.02" width="0.1524" layer="91"/>
<wire x1="129.54" y1="33.02" x2="129.54" y2="55.88" width="0.1524" layer="91"/>
<wire x1="129.54" y1="55.88" x2="172.72" y2="55.88" width="0.1524" layer="91"/>
<wire x1="132.08" y1="40.64" x2="132.08" y2="33.02" width="0.1524" layer="91"/>
<wire x1="129.54" y1="33.02" x2="132.08" y2="33.02" width="0.1524" layer="91"/>
<junction x="132.08" y="33.02"/>
<pinref part="R13" gate="G$1" pin="2"/>
<pinref part="U$1" gate="IC" pin="SW"/>
</segment>
</net>
<net name="N$16" class="3">
<segment>
<wire x1="180.34" y1="33.02" x2="182.88" y2="33.02" width="0.1524" layer="91"/>
<wire x1="182.88" y1="33.02" x2="185.42" y2="33.02" width="0.1524" layer="91"/>
<wire x1="182.88" y1="33.02" x2="182.88" y2="38.1" width="0.1524" layer="91"/>
<wire x1="182.88" y1="38.1" x2="167.64" y2="38.1" width="0.1524" layer="91"/>
<wire x1="167.64" y1="38.1" x2="167.64" y2="48.26" width="0.1524" layer="91"/>
<wire x1="167.64" y1="48.26" x2="172.72" y2="48.26" width="0.1524" layer="91"/>
<junction x="182.88" y="33.02"/>
<pinref part="R16" gate="G$1" pin="1"/>
<pinref part="R17" gate="G$1" pin="2"/>
<pinref part="U$1" gate="IC" pin="OPAMP-"/>
</segment>
</net>
<net name="N$14" class="3">
<segment>
<pinref part="C16" gate="G$1" pin="2"/>
<wire x1="162.56" y1="44.45" x2="162.56" y2="53.34" width="0.1524" layer="91"/>
<wire x1="162.56" y1="53.34" x2="172.72" y2="53.34" width="0.1524" layer="91"/>
<wire x1="137.16" y1="50.8" x2="137.16" y2="53.34" width="0.1524" layer="91"/>
<wire x1="137.16" y1="53.34" x2="162.56" y2="53.34" width="0.1524" layer="91"/>
<junction x="162.56" y="53.34"/>
<pinref part="R14" gate="G$1" pin="1"/>
<pinref part="U$1" gate="IC" pin="OPAMP+"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="C17" gate="G$1" pin="1"/>
<wire x1="137.16" y1="38.1" x2="137.16" y2="40.64" width="0.1524" layer="91"/>
<wire x1="140.97" y1="38.1" x2="137.16" y2="38.1" width="0.1524" layer="91"/>
<wire x1="134.62" y1="40.64" x2="134.62" y2="38.1" width="0.1524" layer="91"/>
<wire x1="134.62" y1="38.1" x2="137.16" y2="38.1" width="0.1524" layer="91"/>
<junction x="137.16" y="38.1"/>
<pinref part="R14" gate="G$1" pin="2"/>
<pinref part="R15" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$26" class="3">
<segment>
<wire x1="132.08" y1="86.36" x2="231.14" y2="86.36" width="0.1524" layer="91"/>
<wire x1="231.14" y1="86.36" x2="231.14" y2="66.04" width="0.1524" layer="91"/>
<wire x1="231.14" y1="66.04" x2="226.06" y2="66.04" width="0.1524" layer="91"/>
<wire x1="226.06" y1="71.12" x2="226.06" y2="66.04" width="0.1524" layer="91"/>
<wire x1="226.06" y1="66.04" x2="213.36" y2="66.04" width="0.1524" layer="91"/>
<wire x1="132.08" y1="50.8" x2="132.08" y2="86.36" width="0.1524" layer="91"/>
<junction x="226.06" y="66.04"/>
<pinref part="R12" gate="G$1" pin="1"/>
<pinref part="R13" gate="G$1" pin="1"/>
<pinref part="U$1" gate="IC" pin="IAOUT"/>
</segment>
</net>
<net name="N$17" class="3">
<segment>
<wire x1="220.98" y1="81.28" x2="220.98" y2="83.82" width="0.1524" layer="91"/>
<wire x1="220.98" y1="83.82" x2="226.06" y2="83.82" width="0.1524" layer="91"/>
<wire x1="226.06" y1="83.82" x2="226.06" y2="81.28" width="0.1524" layer="91"/>
<junction x="220.98" y="83.82"/>
<wire x1="134.62" y1="83.82" x2="220.98" y2="83.82" width="0.1524" layer="91"/>
<wire x1="134.62" y1="50.8" x2="134.62" y2="83.82" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="2"/>
<pinref part="R12" gate="G$1" pin="2"/>
<pinref part="R15" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$27" class="3">
<segment>
<wire x1="172.72" y1="60.96" x2="152.4" y2="60.96" width="0.1524" layer="91"/>
<wire x1="152.4" y1="60.96" x2="152.4" y2="68.58" width="0.1524" layer="91"/>
<wire x1="152.4" y1="68.58" x2="149.86" y2="68.58" width="0.1524" layer="91"/>
<wire x1="149.86" y1="68.58" x2="149.86" y2="67.31" width="0.1524" layer="91"/>
<pinref part="C12" gate="G$1" pin="2"/>
<pinref part="U$1" gate="IC" pin="RLDFB"/>
</segment>
</net>
<net name="SPI0_MISO" class="0">
<segment>
<wire x1="147.32" y1="139.7" x2="144.78" y2="139.7" width="0.1524" layer="91"/>
<label x="144.78" y="139.7" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="COM" gate="G$1" pin="MISO"/>
</segment>
<segment>
<pinref part="MCU" gate="G$1" pin="PA10"/>
<wire x1="60.96" y1="132.08" x2="63.5" y2="132.08" width="0.1524" layer="91"/>
<label x="63.5" y="132.08" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="SPI0_MOSI" class="0">
<segment>
<wire x1="147.32" y1="142.24" x2="144.78" y2="142.24" width="0.1524" layer="91"/>
<label x="144.78" y="142.24" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="COM" gate="G$1" pin="MOSI"/>
</segment>
<segment>
<pinref part="MCU" gate="G$1" pin="PA9"/>
<wire x1="60.96" y1="134.62" x2="63.5" y2="134.62" width="0.1524" layer="91"/>
<label x="63.5" y="134.62" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="SPI0_SCK" class="0">
<segment>
<wire x1="147.32" y1="144.78" x2="144.78" y2="144.78" width="0.1524" layer="91"/>
<label x="144.78" y="144.78" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="COM" gate="G$1" pin="SCK"/>
</segment>
<segment>
<pinref part="MCU" gate="G$1" pin="PA11"/>
<wire x1="60.96" y1="129.54" x2="63.5" y2="129.54" width="0.1524" layer="91"/>
<label x="63.5" y="129.54" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="1"/>
<wire x1="139.7" y1="127" x2="144.78" y2="127" width="0.1524" layer="91"/>
<wire x1="144.78" y1="129.54" x2="147.32" y2="129.54" width="0.1524" layer="91"/>
<wire x1="144.78" y1="123.19" x2="144.78" y2="127" width="0.1524" layer="91"/>
<wire x1="144.78" y1="127" x2="144.78" y2="129.54" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<junction x="144.78" y="127"/>
<pinref part="COM" gate="G$1" pin="XC1"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="2"/>
<wire x1="134.62" y1="127" x2="129.54" y2="127" width="0.1524" layer="91"/>
<wire x1="129.54" y1="127" x2="129.54" y2="132.08" width="0.1524" layer="91"/>
<wire x1="129.54" y1="132.08" x2="147.32" y2="132.08" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="129.54" y1="123.19" x2="129.54" y2="127" width="0.1524" layer="91"/>
<junction x="129.54" y="127"/>
<pinref part="COM" gate="G$1" pin="XC2"/>
</segment>
</net>
<net name="COM_CS" class="0">
<segment>
<wire x1="147.32" y1="147.32" x2="144.78" y2="147.32" width="0.1524" layer="91"/>
<label x="144.78" y="147.32" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="COM" gate="G$1" pin="CSN"/>
</segment>
<segment>
<pinref part="MCU" gate="G$1" pin="PA4"/>
<wire x1="60.96" y1="137.16" x2="63.5" y2="137.16" width="0.1524" layer="91"/>
<label x="63.5" y="137.16" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="COM_CE" class="0">
<segment>
<wire x1="147.32" y1="149.86" x2="144.78" y2="149.86" width="0.1524" layer="91"/>
<label x="144.78" y="149.86" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="COM" gate="G$1" pin="CE"/>
</segment>
<segment>
<pinref part="MCU" gate="G$1" pin="PA3"/>
<wire x1="60.96" y1="139.7" x2="63.5" y2="139.7" width="0.1524" layer="91"/>
<label x="63.5" y="139.7" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="COM_IRQ" class="0">
<segment>
<wire x1="147.32" y1="137.16" x2="144.78" y2="137.16" width="0.1524" layer="91"/>
<label x="144.78" y="137.16" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="COM" gate="G$1" pin="IRQ"/>
</segment>
<segment>
<pinref part="MCU" gate="G$1" pin="PA2"/>
<wire x1="60.96" y1="142.24" x2="63.5" y2="142.24" width="0.1524" layer="91"/>
<label x="63.5" y="142.24" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="243.84" y1="132.08" x2="243.84" y2="134.62" width="0.1524" layer="91"/>
<wire x1="243.84" y1="134.62" x2="241.3" y2="134.62" width="0.1524" layer="91"/>
<wire x1="241.3" y1="134.62" x2="241.3" y2="139.7" width="0.1524" layer="91"/>
<pinref part="ANT" gate="ANTCAP-" pin="POS"/>
<pinref part="ANT" gate="ANT" pin="P$1"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="177.8" y1="137.16" x2="180.34" y2="137.16" width="0.1524" layer="91"/>
<wire x1="180.34" y1="137.16" x2="180.34" y2="133.35" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="1"/>
<pinref part="COM" gate="G$1" pin="DVDD"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<wire x1="177.8" y1="139.7" x2="187.96" y2="139.7" width="0.1524" layer="91"/>
<wire x1="187.96" y1="139.7" x2="187.96" y2="134.62" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="COM" gate="G$1" pin="IREF"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="177.8" y1="149.86" x2="193.04" y2="149.86" width="0.1524" layer="91"/>
<wire x1="193.04" y1="149.86" x2="193.04" y2="157.48" width="0.1524" layer="91"/>
<wire x1="193.04" y1="157.48" x2="198.12" y2="157.48" width="0.1524" layer="91"/>
<pinref part="L3" gate="G$1" pin="1"/>
<pinref part="L1" gate="G$1" pin="2"/>
<wire x1="198.12" y1="157.48" x2="200.66" y2="157.48" width="0.1524" layer="91"/>
<wire x1="198.12" y1="154.94" x2="198.12" y2="157.48" width="0.1524" layer="91"/>
<junction x="198.12" y="157.48"/>
<pinref part="COM" gate="G$1" pin="ANT2"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<wire x1="177.8" y1="147.32" x2="193.04" y2="147.32" width="0.1524" layer="91"/>
<wire x1="193.04" y1="147.32" x2="193.04" y2="139.7" width="0.1524" layer="91"/>
<wire x1="193.04" y1="139.7" x2="198.12" y2="139.7" width="0.1524" layer="91"/>
<pinref part="L2" gate="G$1" pin="1"/>
<pinref part="L1" gate="G$1" pin="1"/>
<wire x1="198.12" y1="139.7" x2="200.66" y2="139.7" width="0.1524" layer="91"/>
<wire x1="198.12" y1="142.24" x2="198.12" y2="139.7" width="0.1524" layer="91"/>
<junction x="198.12" y="139.7"/>
<pinref part="COM" gate="G$1" pin="ANT1"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="L3" gate="G$1" pin="2"/>
<wire x1="213.36" y1="157.48" x2="215.9" y2="157.48" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="223.52" y1="157.48" x2="226.06" y2="157.48" width="0.1524" layer="91"/>
<wire x1="226.06" y1="157.48" x2="226.06" y2="154.94" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="1"/>
<wire x1="226.06" y1="157.48" x2="233.68" y2="157.48" width="0.1524" layer="91"/>
<wire x1="233.68" y1="157.48" x2="233.68" y2="134.62" width="0.1524" layer="91"/>
<wire x1="233.68" y1="134.62" x2="236.22" y2="134.62" width="0.1524" layer="91"/>
<wire x1="236.22" y1="132.08" x2="236.22" y2="134.62" width="0.1524" layer="91"/>
<wire x1="236.22" y1="134.62" x2="238.76" y2="134.62" width="0.1524" layer="91"/>
<wire x1="238.76" y1="134.62" x2="238.76" y2="139.7" width="0.1524" layer="91"/>
<junction x="226.06" y="157.48"/>
<junction x="236.22" y="134.62"/>
<pinref part="ANT" gate="ANTCAP+" pin="POS"/>
<pinref part="ANT" gate="ANT" pin="ANTENNA"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<wire x1="177.8" y1="142.24" x2="190.5" y2="142.24" width="0.1524" layer="91"/>
<wire x1="190.5" y1="142.24" x2="190.5" y2="134.62" width="0.1524" layer="91"/>
<wire x1="190.5" y1="134.62" x2="200.66" y2="134.62" width="0.1524" layer="91"/>
<wire x1="200.66" y1="134.62" x2="208.28" y2="134.62" width="0.1524" layer="91"/>
<wire x1="208.28" y1="134.62" x2="215.9" y2="134.62" width="0.1524" layer="91"/>
<wire x1="215.9" y1="134.62" x2="215.9" y2="139.7" width="0.1524" layer="91"/>
<wire x1="215.9" y1="139.7" x2="213.36" y2="139.7" width="0.1524" layer="91"/>
<pinref part="L2" gate="G$1" pin="2"/>
<pinref part="C19" gate="G$1" pin="1"/>
<wire x1="208.28" y1="129.54" x2="208.28" y2="134.62" width="0.1524" layer="91"/>
<junction x="208.28" y="134.62"/>
<pinref part="C18" gate="G$1" pin="1"/>
<wire x1="200.66" y1="129.54" x2="200.66" y2="134.62" width="0.1524" layer="91"/>
<junction x="200.66" y="134.62"/>
<pinref part="COM" gate="G$1" pin="VDD_PA"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="91.44" y1="149.86" x2="99.06" y2="149.86" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="D2" gate="G$1" pin="A"/>
<wire x1="91.44" y1="139.7" x2="99.06" y2="139.7" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="104,1,147.32,157.48,COM,VDD,VCC,,,"/>
<approved hash="104,1,147.32,154.94,COM,VSS,GND,,,"/>
<approved hash="104,1,177.8,142.24,COM,VDD_PA,N$29,,,"/>
<approved hash="104,1,177.8,137.16,COM,DVDD,N$7,,,"/>
<approved hash="105,0,?,?,N$15,,,,,"/>
<approved hash="113,1,130.071,89.431,FRAME1,,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>
