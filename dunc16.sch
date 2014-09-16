<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="I_STA" />
        <signal name="XLXN_5" />
        <signal name="SETWRITE" />
        <signal name="CLRWRITE" />
        <signal name="XLXN_11(15:0)" />
        <signal name="AC_OUT(15:0)" />
        <signal name="MD_OUT(15:0)" />
        <signal name="XLXN_18(15:0)" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21(15:0)" />
        <signal name="XLXN_23(3:0)" />
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="XLXN_30(15:0)" />
        <signal name="XLXN_39" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43(3:0)" />
        <signal name="XLXN_44" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_53" />
        <signal name="XLXN_55" />
        <signal name="WRITE" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <port polarity="Output" name="I_STA" />
        <port polarity="Output" name="SETWRITE" />
        <port polarity="Output" name="CLRWRITE" />
        <port polarity="Output" name="AC_OUT(15:0)" />
        <port polarity="Output" name="MD_OUT(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="WRITE" />
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
        <blockdef name="fjkc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-384" height="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="system_timing">
            <timestamp>2014-9-16T22:56:22</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="fd16ce" name="MD">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_39" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_11(15:0)" name="D(15:0)" />
            <blockpin signalname="MD_OUT(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="I_STA" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_58" name="I1" />
            <blockpin signalname="SETWRITE" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="XLXN_59" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="CLRWRITE" name="O" />
        </block>
        <block symbolname="mux16_2" name="XLXI_10">
            <blockpin signalname="AC_OUT(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_21(15:0)" name="A(15:0)" />
            <blockpin signalname="SETWRITE" name="SEL" />
            <blockpin signalname="XLXN_11(15:0)" name="OUT(15:0)" />
        </block>
        <block symbolname="Decoder4_16" name="XLXI_5">
            <blockpin name="D0" />
            <blockpin name="D1" />
            <blockpin name="D2" />
            <blockpin name="D3" />
            <blockpin name="D4" />
            <blockpin signalname="I_STA" name="D5" />
            <blockpin name="D6" />
            <blockpin name="D7" />
            <blockpin name="D8" />
            <blockpin name="D9" />
            <blockpin name="D10" />
            <blockpin name="D11" />
            <blockpin name="D12" />
            <blockpin name="D13" />
            <blockpin name="D14" />
            <blockpin name="D15" />
            <blockpin signalname="XLXN_42" name="E" />
            <blockpin signalname="XLXN_23(3:0)" name="A(3:0)" />
        </block>
        <block symbolname="fd16ce" name="AC">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_41" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_18(15:0)" name="D(15:0)" />
            <blockpin signalname="AC_OUT(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="mux16_2" name="XLXI_14">
            <blockpin signalname="XLXN_30(15:0)" name="B(15:0)" />
            <blockpin signalname="MD_OUT(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_20" name="SEL" />
            <blockpin signalname="XLXN_18(15:0)" name="OUT(15:0)" />
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
        <block symbolname="REG4CE" name="XLXI_20">
            <blockpin signalname="XLXN_44" name="CE" />
            <blockpin signalname="XLXN_23(3:0)" name="Q(3:0)" />
            <blockpin signalname="XLXN_43(3:0)" name="D(3:0)" />
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="RESET" name="CLR" />
        </block>
        <block symbolname="constant" name="XLXI_21">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_30(15:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_22">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_24">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_25">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_26">
            <attr value="5" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_43(3:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_27">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="fjkc" name="XLXI_28">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="SETWRITE" name="J" />
            <blockpin signalname="XLXN_48" name="K" />
            <blockpin signalname="WRITE" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_29">
            <blockpin signalname="SETWRITE" name="I" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_30">
            <blockpin signalname="CLRWRITE" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="system_timing" name="XLXI_31">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_62" name="ICYNEXT" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_58" name="T0" />
            <blockpin signalname="XLXN_59" name="T1" />
            <blockpin name="T2" />
            <blockpin name="T3" />
            <blockpin name="FETCH" />
            <blockpin signalname="XLXN_57" name="EXECUTE" />
        </block>
        <block symbolname="constant" name="XLXI_32">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_62" name="O" />
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
        <instance x="2288" y="3312" name="XLXI_7" orien="R0" />
        <instance x="2288" y="3456" name="XLXI_8" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="2176" y1="3312" y2="3312" x1="2064" />
            <wire x2="2176" y1="3312" y2="3328" x1="2176" />
            <wire x2="2288" y1="3328" y2="3328" x1="2176" />
            <wire x2="2176" y1="3248" y2="3312" x1="2176" />
            <wire x2="2288" y1="3248" y2="3248" x1="2176" />
        </branch>
        <branch name="SETWRITE">
            <wire x2="2592" y1="3216" y2="3216" x1="2544" />
            <wire x2="2864" y1="3216" y2="3216" x1="2592" />
            <wire x2="2736" y1="3120" y2="3120" x1="2592" />
            <wire x2="2592" y1="3120" y2="3216" x1="2592" />
        </branch>
        <branch name="XLXN_11(15:0)">
            <wire x2="3280" y1="2960" y2="2960" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="2880" y="3360" name="CLRWRITE" orien="R0" />
        <iomarker fontsize="28" x="2864" y="3216" name="SETWRITE" orien="R0" />
        <branch name="CLRWRITE">
            <wire x2="2880" y1="3360" y2="3360" x1="2544" />
        </branch>
        <instance x="4544" y="2864" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="5536" y="2192" name="I_STA" orien="R0" />
        <branch name="AC_OUT(15:0)">
            <wire x2="2736" y1="3024" y2="3024" x1="2720" />
            <wire x2="2720" y1="3024" y2="3456" x1="2720" />
            <wire x2="5152" y1="3456" y2="3456" x1="2720" />
            <wire x2="5152" y1="3136" y2="3136" x1="5072" />
            <wire x2="5152" y1="3136" y2="3456" x1="5152" />
            <wire x2="5520" y1="3136" y2="3136" x1="5152" />
        </branch>
        <iomarker fontsize="28" x="4784" y="4000" name="MD_OUT(15:0)" orien="R0" />
        <branch name="XLXN_18(15:0)">
            <wire x2="4688" y1="3136" y2="3136" x1="4352" />
        </branch>
        <instance x="2528" y="2848" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_21(15:0)">
            <wire x2="2736" y1="2880" y2="2880" x1="2672" />
        </branch>
        <instance x="4096" y="2144" name="XLXI_20" orien="R0">
        </instance>
        <branch name="XLXN_23(3:0)">
            <wire x2="4544" y1="1872" y2="1872" x1="4480" />
        </branch>
        <branch name="CLK">
            <wire x2="480" y1="3216" y2="3216" x1="432" />
            <wire x2="432" y1="3216" y2="3616" x1="432" />
            <wire x2="1328" y1="3616" y2="3616" x1="432" />
            <wire x2="1328" y1="3616" y2="4624" x1="1328" />
            <wire x2="3264" y1="4624" y2="4624" x1="1328" />
            <wire x2="3584" y1="4624" y2="4624" x1="3264" />
            <wire x2="4400" y1="4624" y2="4624" x1="3584" />
            <wire x2="1328" y1="4624" y2="4624" x1="1072" />
            <wire x2="3248" y1="2064" y2="4560" x1="3248" />
            <wire x2="3584" y1="4560" y2="4560" x1="3248" />
            <wire x2="3584" y1="4560" y2="4624" x1="3584" />
            <wire x2="4096" y1="2064" y2="2064" x1="3248" />
            <wire x2="3264" y1="3088" y2="4624" x1="3264" />
            <wire x2="3280" y1="3088" y2="3088" x1="3264" />
            <wire x2="4400" y1="3264" y2="4624" x1="4400" />
            <wire x2="4688" y1="3264" y2="3264" x1="4400" />
        </branch>
        <iomarker fontsize="28" x="1088" y="4384" name="RESET" orien="R180" />
        <branch name="RESET">
            <wire x2="480" y1="3536" y2="3536" x1="416" />
            <wire x2="416" y1="3536" y2="3632" x1="416" />
            <wire x2="1296" y1="3632" y2="3632" x1="416" />
            <wire x2="1296" y1="3632" y2="4384" x1="1296" />
            <wire x2="3280" y1="4384" y2="4384" x1="1296" />
            <wire x2="3904" y1="4384" y2="4384" x1="3280" />
            <wire x2="4688" y1="4384" y2="4384" x1="3904" />
            <wire x2="1296" y1="4384" y2="4384" x1="1088" />
            <wire x2="3280" y1="3184" y2="4384" x1="3280" />
            <wire x2="4096" y1="2128" y2="2128" x1="3904" />
            <wire x2="3904" y1="2128" y2="4384" x1="3904" />
            <wire x2="4688" y1="3360" y2="4384" x1="4688" />
        </branch>
        <branch name="MD_OUT(15:0)">
            <wire x2="3824" y1="2960" y2="2960" x1="3664" />
            <wire x2="3824" y1="2960" y2="3056" x1="3824" />
            <wire x2="3888" y1="3056" y2="3056" x1="3824" />
            <wire x2="3968" y1="3056" y2="3056" x1="3888" />
            <wire x2="3888" y1="3056" y2="4000" x1="3888" />
            <wire x2="4784" y1="4000" y2="4000" x1="3888" />
        </branch>
        <branch name="XLXN_30(15:0)">
            <wire x2="3968" y1="3200" y2="3200" x1="3808" />
        </branch>
        <instance x="3280" y="3216" name="MD" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <instance x="3968" y="3312" name="XLXI_14" orien="R0">
        </instance>
        <instance x="3664" y="3168" name="XLXI_21" orien="R0">
        </instance>
        <instance x="3648" y="3264" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_20">
            <wire x2="3968" y1="3296" y2="3296" x1="3792" />
        </branch>
        <iomarker fontsize="28" x="1072" y="4624" name="CLK" orien="R180" />
        <instance x="2736" y="3136" name="XLXI_10" orien="R0">
        </instance>
        <instance x="3056" y="3152" name="XLXI_22" orien="R0">
        </instance>
        <branch name="XLXN_39">
            <wire x2="3232" y1="3184" y2="3184" x1="3200" />
            <wire x2="3232" y1="3024" y2="3184" x1="3232" />
            <wire x2="3280" y1="3024" y2="3024" x1="3232" />
        </branch>
        <instance x="4688" y="3392" name="AC" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <branch name="XLXN_41">
            <wire x2="4688" y1="3200" y2="3200" x1="4656" />
        </branch>
        <instance x="4512" y="3168" name="XLXI_24" orien="R0">
        </instance>
        <branch name="XLXN_42">
            <wire x2="4544" y1="2832" y2="2832" x1="4512" />
        </branch>
        <instance x="4368" y="2800" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_43(3:0)">
            <wire x2="4096" y1="1872" y2="1872" x1="4064" />
        </branch>
        <instance x="3920" y="1840" name="XLXI_26" orien="R0">
        </instance>
        <branch name="XLXN_44">
            <wire x2="4096" y1="1936" y2="1936" x1="4064" />
        </branch>
        <instance x="3920" y="1904" name="XLXI_27" orien="R0">
        </instance>
        <iomarker fontsize="28" x="5520" y="3136" name="AC_OUT(15:0)" orien="R0" />
        <instance x="480" y="3568" name="XLXI_31" orien="R0">
        </instance>
        <branch name="XLXN_57">
            <wire x2="1328" y1="3536" y2="3536" x1="864" />
            <wire x2="1328" y1="3280" y2="3536" x1="1328" />
            <wire x2="1808" y1="3280" y2="3280" x1="1328" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="1568" y1="3216" y2="3216" x1="864" />
            <wire x2="1568" y1="3184" y2="3216" x1="1568" />
            <wire x2="2288" y1="3184" y2="3184" x1="1568" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="928" y1="3280" y2="3280" x1="864" />
            <wire x2="928" y1="3280" y2="3392" x1="928" />
            <wire x2="2288" y1="3392" y2="3392" x1="928" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="480" y1="3376" y2="3376" x1="272" />
        </branch>
        <instance x="128" y="3344" name="XLXI_32" orien="R0">
        </instance>
    </sheet>
    <sheet sheetnum="2" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="SETWRITE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1760" type="branch" />
            <wire x2="1152" y1="1760" y2="1760" x1="320" />
            <wire x2="1152" y1="1760" y2="1792" x1="1152" />
            <wire x2="1280" y1="1792" y2="1792" x1="1152" />
            <wire x2="1888" y1="1760" y2="1760" x1="1152" />
        </branch>
        <branch name="CLRWRITE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="336" y="1856" type="branch" />
            <wire x2="1600" y1="1856" y2="1856" x1="336" />
        </branch>
        <instance x="1888" y="2080" name="XLXI_28" orien="R0" />
        <branch name="XLXN_48">
            <wire x2="1888" y1="1824" y2="1824" x1="1856" />
        </branch>
        <instance x="1600" y="1920" name="XLXI_30" orien="R0" />
        <instance x="1280" y="1824" name="XLXI_29" orien="R0" />
        <branch name="XLXN_49">
            <wire x2="1600" y1="1792" y2="1792" x1="1504" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1952" type="branch" />
            <wire x2="1888" y1="1952" y2="1952" x1="272" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="2048" type="branch" />
            <wire x2="1888" y1="2048" y2="2048" x1="480" />
        </branch>
        <branch name="WRITE">
            <wire x2="2528" y1="1824" y2="1824" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1824" name="WRITE" orien="R0" />
    </sheet>
</drawing>