<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="ICYNEXT" />
        <signal name="_ICYNEXT" />
        <signal name="XLXN_259" />
        <signal name="_T2" />
        <signal name="_T0" />
        <signal name="T0" />
        <signal name="_T1" />
        <signal name="T1" />
        <signal name="XLXN_311" />
        <signal name="T2" />
        <signal name="T3" />
        <signal name="RESET" />
        <signal name="FETCH" />
        <signal name="NEW_CYCLE" />
        <signal name="EXECUTE" />
        <signal name="XLXN_343" />
        <signal name="XLXN_356" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="ICYNEXT" />
        <port polarity="Output" name="T0" />
        <port polarity="Output" name="T1" />
        <port polarity="Output" name="T2" />
        <port polarity="Output" name="T3" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="FETCH" />
        <port polarity="Output" name="EXECUTE" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="delay">
            <timestamp>2014-8-31T14:4:14</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-64" y2="-64" x1="320" />
            <rect width="256" x="64" y="-192" height="320" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="72" y1="84" y2="92" x1="64" />
            <line x2="64" y1="92" y2="104" x1="72" />
        </blockdef>
        <blockdef name="fdce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="fdse">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-352" y2="-352" x1="0" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-320" y2="-352" x1="192" />
            <line x2="64" y1="-352" y2="-352" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="or2" name="XLXI_47">
            <blockpin signalname="XLXN_259" name="I0" />
            <blockpin signalname="ICYNEXT" name="I1" />
            <blockpin signalname="NEW_CYCLE" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_48">
            <blockpin signalname="ICYNEXT" name="I" />
            <blockpin signalname="_ICYNEXT" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_52">
            <blockpin signalname="_T2" name="I0" />
            <blockpin signalname="_T1" name="I1" />
            <blockpin signalname="_T0" name="I2" />
            <blockpin signalname="XLXN_259" name="O" />
        </block>
        <block symbolname="delay" name="XLXI_56">
            <blockpin signalname="_ICYNEXT" name="ENABLE_NEXT" />
            <blockpin signalname="XLXN_356" name="O" />
            <blockpin signalname="T0" name="T" />
            <blockpin signalname="_T0" name="_T" />
            <blockpin signalname="NEW_CYCLE" name="I" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
        <block symbolname="delay" name="XLXI_59">
            <blockpin signalname="_ICYNEXT" name="ENABLE_NEXT" />
            <blockpin name="O" />
            <blockpin signalname="T3" name="T" />
            <blockpin name="_T" />
            <blockpin signalname="XLXN_343" name="I" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
        <block symbolname="fdce" name="XLXI_62">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="NEW_CYCLE" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="EXECUTE" name="D" />
            <blockpin signalname="FETCH" name="Q" />
        </block>
        <block symbolname="fdse" name="XLXI_63">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="NEW_CYCLE" name="CE" />
            <blockpin signalname="FETCH" name="D" />
            <blockpin signalname="RESET" name="S" />
            <blockpin signalname="EXECUTE" name="Q" />
        </block>
        <block symbolname="delay" name="XLXI_64">
            <blockpin signalname="_ICYNEXT" name="ENABLE_NEXT" />
            <blockpin signalname="XLXN_311" name="O" />
            <blockpin signalname="T1" name="T" />
            <blockpin signalname="_T1" name="_T" />
            <blockpin signalname="XLXN_356" name="I" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
        <block symbolname="delay" name="XLXI_58">
            <blockpin signalname="_ICYNEXT" name="ENABLE_NEXT" />
            <blockpin signalname="XLXN_343" name="O" />
            <blockpin signalname="T2" name="T" />
            <blockpin signalname="_T2" name="_T" />
            <blockpin signalname="XLXN_311" name="I" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="112" y="1104" name="CLK" orien="R180" />
        <branch name="ICYNEXT">
            <wire x2="752" y1="480" y2="480" x1="176" />
            <wire x2="960" y1="480" y2="480" x1="752" />
            <wire x2="752" y1="480" y2="768" x1="752" />
            <wire x2="768" y1="768" y2="768" x1="752" />
        </branch>
        <instance x="960" y="512" name="XLXI_48" orien="R0" />
        <branch name="T0">
            <wire x2="1712" y1="816" y2="816" x1="1680" />
            <wire x2="1712" y1="816" y2="1216" x1="1712" />
            <wire x2="3376" y1="1216" y2="1216" x1="1712" />
        </branch>
        <branch name="T1">
            <wire x2="2240" y1="816" y2="816" x1="2208" />
            <wire x2="2240" y1="816" y2="1120" x1="2240" />
            <wire x2="3360" y1="1120" y2="1120" x1="2240" />
        </branch>
        <branch name="T2">
            <wire x2="2720" y1="736" y2="736" x1="2688" />
            <wire x2="2720" y1="736" y2="1008" x1="2720" />
            <wire x2="3376" y1="1008" y2="1008" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="3376" y="1216" name="T0" orien="R0" />
        <iomarker fontsize="28" x="3360" y="1120" name="T1" orien="R0" />
        <iomarker fontsize="28" x="3376" y="1008" name="T2" orien="R0" />
        <iomarker fontsize="28" x="176" y="480" name="ICYNEXT" orien="R180" />
        <branch name="RESET">
            <wire x2="960" y1="1568" y2="1568" x1="128" />
            <wire x2="1328" y1="1568" y2="1568" x1="960" />
            <wire x2="960" y1="1568" y2="1888" x1="960" />
            <wire x2="2112" y1="1888" y2="1888" x1="960" />
        </branch>
        <instance x="1328" y="1920" name="XLXI_63" orien="R0" />
        <instance x="2112" y="1920" name="XLXI_62" orien="R0" />
        <iomarker fontsize="28" x="128" y="1568" name="RESET" orien="R180" />
        <instance x="2848" y="784" name="XLXI_59" orien="R0">
        </instance>
        <branch name="XLXN_343">
            <wire x2="2832" y1="640" y2="640" x1="2688" />
            <wire x2="2832" y1="640" y2="704" x1="2832" />
            <wire x2="2848" y1="704" y2="704" x1="2832" />
        </branch>
        <branch name="XLXN_311">
            <wire x2="2304" y1="720" y2="720" x1="2208" />
        </branch>
        <instance x="1824" y="880" name="XLXI_64" orien="R0">
        </instance>
        <instance x="2304" y="800" name="XLXI_58" orien="R0">
        </instance>
        <instance x="352" y="960" name="XLXI_52" orien="R0" />
        <branch name="XLXN_259">
            <wire x2="768" y1="832" y2="832" x1="608" />
        </branch>
        <instance x="768" y="896" name="XLXI_47" orien="R0" />
        <branch name="CLK">
            <wire x2="176" y1="1104" y2="1104" x1="112" />
            <wire x2="176" y1="1104" y2="1968" x1="176" />
            <wire x2="1328" y1="1968" y2="1968" x1="176" />
            <wire x2="2048" y1="1968" y2="1968" x1="1328" />
            <wire x2="1280" y1="1104" y2="1104" x1="176" />
            <wire x2="1824" y1="1104" y2="1104" x1="1280" />
            <wire x2="2288" y1="1104" y2="1104" x1="1824" />
            <wire x2="2736" y1="1104" y2="1104" x1="2288" />
            <wire x2="1296" y1="976" y2="976" x1="1280" />
            <wire x2="1280" y1="976" y2="1104" x1="1280" />
            <wire x2="1328" y1="1792" y2="1968" x1="1328" />
            <wire x2="1824" y1="976" y2="1104" x1="1824" />
            <wire x2="2112" y1="1792" y2="1792" x1="2048" />
            <wire x2="2048" y1="1792" y2="1968" x1="2048" />
            <wire x2="2304" y1="896" y2="896" x1="2288" />
            <wire x2="2288" y1="896" y2="1104" x1="2288" />
            <wire x2="2848" y1="880" y2="880" x1="2736" />
            <wire x2="2736" y1="880" y2="1104" x1="2736" />
        </branch>
        <instance x="1296" y="880" name="XLXI_56" orien="R0">
        </instance>
        <branch name="NEW_CYCLE">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="800" type="branch" />
            <wire x2="1168" y1="800" y2="800" x1="1024" />
            <wire x2="1296" y1="800" y2="800" x1="1168" />
            <wire x2="1168" y1="800" y2="1344" x1="1168" />
            <wire x2="1168" y1="1344" y2="1728" x1="1168" />
            <wire x2="1328" y1="1728" y2="1728" x1="1168" />
            <wire x2="1888" y1="1344" y2="1344" x1="1168" />
            <wire x2="1888" y1="1344" y2="1728" x1="1888" />
            <wire x2="2112" y1="1728" y2="1728" x1="1888" />
        </branch>
        <branch name="XLXN_356">
            <wire x2="1744" y1="720" y2="720" x1="1680" />
            <wire x2="1744" y1="720" y2="800" x1="1744" />
            <wire x2="1824" y1="800" y2="800" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="2896" y="1664" name="FETCH" orien="R0" />
        <branch name="EXECUTE">
            <wire x2="2000" y1="1664" y2="1664" x1="1712" />
            <wire x2="2112" y1="1664" y2="1664" x1="2000" />
            <wire x2="2992" y1="1488" y2="1488" x1="2000" />
            <wire x2="2000" y1="1488" y2="1664" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1488" name="EXECUTE" orien="R0" />
        <branch name="FETCH">
            <wire x2="1312" y1="1440" y2="1664" x1="1312" />
            <wire x2="1328" y1="1664" y2="1664" x1="1312" />
            <wire x2="2576" y1="1440" y2="1440" x1="1312" />
            <wire x2="2576" y1="1440" y2="1664" x1="2576" />
            <wire x2="2896" y1="1664" y2="1664" x1="2576" />
            <wire x2="2576" y1="1664" y2="1664" x1="2496" />
        </branch>
        <branch name="T3">
            <wire x2="3344" y1="720" y2="720" x1="3232" />
        </branch>
        <branch name="_T2">
            <wire x2="352" y1="896" y2="1040" x1="352" />
            <wire x2="3232" y1="1040" y2="1040" x1="352" />
            <wire x2="2704" y1="768" y2="768" x1="2688" />
            <wire x2="2704" y1="768" y2="912" x1="2704" />
            <wire x2="3232" y1="912" y2="912" x1="2704" />
            <wire x2="3232" y1="912" y2="1040" x1="3232" />
        </branch>
        <branch name="_T1">
            <wire x2="352" y1="832" y2="832" x1="304" />
            <wire x2="304" y1="832" y2="1072" x1="304" />
            <wire x2="2224" y1="1072" y2="1072" x1="304" />
            <wire x2="2224" y1="848" y2="848" x1="2208" />
            <wire x2="2224" y1="848" y2="1072" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="3344" y="720" name="T3" orien="R0" />
        <branch name="_T0">
            <wire x2="352" y1="768" y2="768" x1="288" />
            <wire x2="288" y1="768" y2="1152" x1="288" />
            <wire x2="1776" y1="1152" y2="1152" x1="288" />
            <wire x2="1776" y1="848" y2="848" x1="1680" />
            <wire x2="1776" y1="848" y2="1152" x1="1776" />
        </branch>
        <branch name="_ICYNEXT">
            <wire x2="1232" y1="480" y2="480" x1="1184" />
            <wire x2="1232" y1="480" y2="720" x1="1232" />
            <wire x2="1296" y1="720" y2="720" x1="1232" />
            <wire x2="1792" y1="480" y2="480" x1="1232" />
            <wire x2="1792" y1="480" y2="720" x1="1792" />
            <wire x2="1824" y1="720" y2="720" x1="1792" />
            <wire x2="2224" y1="480" y2="480" x1="1792" />
            <wire x2="2224" y1="480" y2="640" x1="2224" />
            <wire x2="2304" y1="640" y2="640" x1="2224" />
            <wire x2="2736" y1="480" y2="480" x1="2224" />
            <wire x2="2736" y1="480" y2="624" x1="2736" />
            <wire x2="2848" y1="624" y2="624" x1="2736" />
        </branch>
    </sheet>
</drawing>