<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="I_STA" />
        <signal name="EXECUTE" />
        <signal name="XLXN_5" />
        <signal name="T0" />
        <signal name="SETWRITE" />
        <signal name="CLRWRITE" />
        <signal name="T1" />
        <signal name="XLXN_11(15:0)" />
        <signal name="XLXN_15(15:0)" />
        <signal name="MD_OUT(15:0)" />
        <signal name="XLXN_18(15:0)" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21(15:0)" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23(3:0)" />
        <signal name="CLK" />
        <signal name="RESET" />
        <port polarity="Output" name="I_STA" />
        <port polarity="Input" name="EXECUTE" />
        <port polarity="Input" name="T0" />
        <port polarity="Output" name="SETWRITE" />
        <port polarity="Output" name="CLRWRITE" />
        <port polarity="Input" name="T1" />
        <port polarity="Output" name="MD_OUT(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <blockdef name="fd16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="Decoder4_16">
            <timestamp>2014-9-16T20:39:0</timestamp>
            <rect width="256" x="64" y="-1024" height="1024" />
            <line x2="384" y1="-992" y2="-992" x1="320" />
            <line x2="384" y1="-928" y2="-928" x1="320" />
            <line x2="384" y1="-864" y2="-864" x1="320" />
            <line x2="384" y1="-800" y2="-800" x1="320" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-1004" height="24" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="mux16_2">
            <timestamp>2014-9-16T20:54:23</timestamp>
            <rect width="64" x="0" y="-124" height="24" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="320" y1="-100" y2="-264" x1="320" />
            <line x2="64" y1="-264" y2="-340" x1="320" />
            <line x2="64" y1="-32" y2="-340" x1="64" />
            <line x2="320" y1="-32" y2="-100" x1="64" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="204" y1="-16" y2="-16" x1="4" />
            <line x2="204" y1="-16" y2="-72" x1="204" />
            <rect width="64" x="320" y="-188" height="24" />
            <line x2="384" y1="-176" y2="-176" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="pullup">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
            <line x2="64" y1="-56" y2="-48" x1="48" />
            <line x2="48" y1="-72" y2="-56" x1="80" />
            <line x2="80" y1="-88" y2="-72" x1="48" />
            <line x2="48" y1="-104" y2="-88" x1="80" />
            <line x2="80" y1="-108" y2="-104" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="96" />
        </blockdef>
        <blockdef name="REG4CE">
            <timestamp>2014-9-16T21:26:2</timestamp>
            <rect width="256" x="64" y="-304" height="244" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <rect width="64" x="320" y="-284" height="24" />
            <line x2="384" y1="-272" y2="-272" x1="320" />
            <rect width="64" x="0" y="-284" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="192" y1="-64" y2="-12" x1="192" />
            <line x2="64" y1="-80" y2="-80" x1="0" />
            <line x2="64" y1="-80" y2="-96" x1="80" />
            <line x2="80" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-16" y2="-16" x1="0" />
            <line x2="64" y1="-16" y2="-16" x1="192" />
        </blockdef>
        <block symbolname="fd16ce" name="MD">
            <blockpin name="C" />
            <blockpin name="CE" />
            <blockpin signalname="XLXN_19" name="CLR" />
            <blockpin signalname="XLXN_11(15:0)" name="D(15:0)" />
            <blockpin signalname="MD_OUT(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="I_STA" name="I0" />
            <blockpin signalname="EXECUTE" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="T0" name="I1" />
            <blockpin signalname="SETWRITE" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="T1" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="CLRWRITE" name="O" />
        </block>
        <block symbolname="mux16_2" name="XLXI_10">
            <blockpin signalname="XLXN_15(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_21(15:0)" name="A(15:0)" />
            <blockpin signalname="SETWRITE" name="SEL" />
            <blockpin signalname="XLXN_11(15:0)" name="OUT(15:0)" />
        </block>
        <block symbolname="Decoder4_16" name="XLXI_5">
            <blockpin signalname="XLXN_22" name="D0" />
            <blockpin signalname="XLXN_22" name="D1" />
            <blockpin signalname="XLXN_22" name="D2" />
            <blockpin signalname="XLXN_22" name="D3" />
            <blockpin signalname="XLXN_22" name="D4" />
            <blockpin signalname="I_STA" name="D5" />
            <blockpin signalname="XLXN_22" name="D6" />
            <blockpin signalname="XLXN_22" name="D7" />
            <blockpin signalname="XLXN_22" name="D8" />
            <blockpin signalname="XLXN_22" name="D9" />
            <blockpin signalname="XLXN_22" name="D10" />
            <blockpin signalname="XLXN_22" name="D11" />
            <blockpin signalname="XLXN_22" name="D12" />
            <blockpin signalname="XLXN_22" name="D13" />
            <blockpin signalname="XLXN_22" name="D14" />
            <blockpin signalname="XLXN_22" name="D15" />
            <blockpin name="E" />
            <blockpin signalname="XLXN_23(3:0)" name="A(3:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_13">
            <blockpin name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_18(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_15(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="mux16_2" name="XLXI_14">
            <blockpin name="B(15:0)" />
            <blockpin signalname="MD_OUT(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_20" name="SEL" />
            <blockpin signalname="XLXN_18(15:0)" name="OUT(15:0)" />
        </block>
        <block symbolname="constant" name="XLXI_15">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_16">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_17">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_21(15:0)" name="O" />
        </block>
        <block symbolname="pullup" name="XLXI_18">
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="REG4CE" name="XLXI_20">
            <blockpin name="CE" />
            <blockpin signalname="XLXN_23(3:0)" name="Q(3:0)" />
            <blockpin name="D(3:0)" />
            <blockpin name="C" />
            <blockpin name="CLR" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="I_STA">
            <wire x2="1808" y1="3344" y2="3344" x1="1744" />
            <wire x2="1744" y1="3344" y2="3696" x1="1744" />
            <wire x2="5184" y1="3696" y2="3696" x1="1744" />
            <wire x2="5184" y1="2192" y2="2192" x1="4928" />
            <wire x2="5184" y1="2192" y2="3696" x1="5184" />
            <wire x2="5536" y1="2192" y2="2192" x1="5184" />
        </branch>
        <instance x="1808" y="3408" name="XLXI_6" orien="R0" />
        <branch name="EXECUTE">
            <wire x2="1808" y1="3280" y2="3280" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1776" y="3280" name="EXECUTE" orien="R180" />
        <instance x="2288" y="3312" name="XLXI_7" orien="R0" />
        <instance x="2288" y="3456" name="XLXI_8" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="2176" y1="3312" y2="3312" x1="2064" />
            <wire x2="2176" y1="3312" y2="3328" x1="2176" />
            <wire x2="2288" y1="3328" y2="3328" x1="2176" />
            <wire x2="2176" y1="3248" y2="3312" x1="2176" />
            <wire x2="2288" y1="3248" y2="3248" x1="2176" />
        </branch>
        <branch name="T0">
            <wire x2="2288" y1="3184" y2="3184" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2256" y="3184" name="T0" orien="R180" />
        <branch name="SETWRITE">
            <wire x2="2672" y1="3216" y2="3216" x1="2544" />
            <wire x2="2864" y1="3216" y2="3216" x1="2672" />
            <wire x2="2832" y1="3120" y2="3120" x1="2672" />
            <wire x2="2672" y1="3120" y2="3216" x1="2672" />
        </branch>
        <branch name="T1">
            <wire x2="2288" y1="3392" y2="3392" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2256" y="3392" name="T1" orien="R180" />
        <instance x="2832" y="3136" name="XLXI_10" orien="R0">
        </instance>
        <instance x="3376" y="3216" name="MD" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <branch name="XLXN_11(15:0)">
            <wire x2="3376" y1="2960" y2="2960" x1="3216" />
        </branch>
        <iomarker fontsize="28" x="2880" y="3360" name="CLRWRITE" orien="R0" />
        <iomarker fontsize="28" x="2864" y="3216" name="SETWRITE" orien="R0" />
        <branch name="CLRWRITE">
            <wire x2="2880" y1="3360" y2="3360" x1="2544" />
        </branch>
        <instance x="4544" y="2864" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="5536" y="2192" name="I_STA" orien="R0" />
        <instance x="4384" y="3392" name="XLXI_13" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <branch name="XLXN_15(15:0)">
            <wire x2="2832" y1="3024" y2="3024" x1="2752" />
            <wire x2="2752" y1="3024" y2="3504" x1="2752" />
            <wire x2="4976" y1="3504" y2="3504" x1="2752" />
            <wire x2="4976" y1="3136" y2="3136" x1="4768" />
            <wire x2="4976" y1="3136" y2="3504" x1="4976" />
        </branch>
        <instance x="3904" y="3296" name="XLXI_14" orien="R0">
        </instance>
        <branch name="MD_OUT(15:0)">
            <wire x2="3824" y1="2960" y2="2960" x1="3760" />
            <wire x2="3824" y1="2960" y2="3040" x1="3824" />
            <wire x2="3904" y1="3040" y2="3040" x1="3824" />
            <wire x2="3824" y1="3040" y2="4000" x1="3824" />
            <wire x2="4784" y1="4000" y2="4000" x1="3824" />
        </branch>
        <iomarker fontsize="28" x="4784" y="4000" name="MD_OUT(15:0)" orien="R0" />
        <branch name="XLXN_18(15:0)">
            <wire x2="4336" y1="3120" y2="3120" x1="4288" />
            <wire x2="4336" y1="3120" y2="3136" x1="4336" />
            <wire x2="4384" y1="3136" y2="3136" x1="4336" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="3360" y1="3184" y2="3184" x1="3344" />
            <wire x2="3376" y1="3184" y2="3184" x1="3360" />
        </branch>
        <instance x="3200" y="3152" name="XLXI_15" orien="R0">
        </instance>
        <branch name="XLXN_20">
            <wire x2="3904" y1="3280" y2="3280" x1="3872" />
        </branch>
        <instance x="3728" y="3248" name="XLXI_16" orien="R0">
        </instance>
        <instance x="2528" y="2848" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_21(15:0)">
            <wire x2="2832" y1="2880" y2="2880" x1="2672" />
        </branch>
        <instance x="5408" y="1728" name="XLXI_18" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="5472" y1="1872" y2="1872" x1="4928" />
            <wire x2="5472" y1="1872" y2="1936" x1="5472" />
            <wire x2="5472" y1="1936" y2="2000" x1="5472" />
            <wire x2="5472" y1="2000" y2="2064" x1="5472" />
            <wire x2="5472" y1="2064" y2="2128" x1="5472" />
            <wire x2="5472" y1="2128" y2="2256" x1="5472" />
            <wire x2="5472" y1="2256" y2="2320" x1="5472" />
            <wire x2="5472" y1="2320" y2="2384" x1="5472" />
            <wire x2="5472" y1="2384" y2="2448" x1="5472" />
            <wire x2="5472" y1="2448" y2="2512" x1="5472" />
            <wire x2="5472" y1="2512" y2="2576" x1="5472" />
            <wire x2="5472" y1="2576" y2="2640" x1="5472" />
            <wire x2="5472" y1="2640" y2="2704" x1="5472" />
            <wire x2="5472" y1="2704" y2="2768" x1="5472" />
            <wire x2="5472" y1="2768" y2="2832" x1="5472" />
            <wire x2="5472" y1="1936" y2="1936" x1="4928" />
            <wire x2="5472" y1="2000" y2="2000" x1="4928" />
            <wire x2="5472" y1="2064" y2="2064" x1="4928" />
            <wire x2="5472" y1="2128" y2="2128" x1="4928" />
            <wire x2="5472" y1="2256" y2="2256" x1="4928" />
            <wire x2="5472" y1="2320" y2="2320" x1="4928" />
            <wire x2="5472" y1="2384" y2="2384" x1="4928" />
            <wire x2="5472" y1="2448" y2="2448" x1="4928" />
            <wire x2="5472" y1="2512" y2="2512" x1="4928" />
            <wire x2="5472" y1="2576" y2="2576" x1="4928" />
            <wire x2="5472" y1="2640" y2="2640" x1="4928" />
            <wire x2="5472" y1="2704" y2="2704" x1="4928" />
            <wire x2="5472" y1="2768" y2="2768" x1="4928" />
            <wire x2="5472" y1="2832" y2="2832" x1="4928" />
            <wire x2="5472" y1="1728" y2="1872" x1="5472" />
        </branch>
        <instance x="4096" y="2144" name="XLXI_20" orien="R0">
        </instance>
        <branch name="XLXN_23(3:0)">
            <wire x2="4544" y1="1872" y2="1872" x1="4480" />
        </branch>
        <branch name="CLK">
            <wire x2="2064" y1="4960" y2="4960" x1="1552" />
            <wire x2="2064" y1="4624" y2="4960" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="1552" y="4960" name="CLK" orien="R180" />
        <branch name="RESET">
            <wire x2="1680" y1="4384" y2="4384" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1088" y="4384" name="RESET" orien="R180" />
    </sheet>
</drawing>