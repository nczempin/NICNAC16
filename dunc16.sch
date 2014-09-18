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
        <signal name="EXECUTE" />
        <signal name="T0" />
        <signal name="T1" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_21(15:0)" />
        <signal name="ADDRESS(9)" />
        <signal name="XLXN_66(15:0)" />
        <signal name="ADDRESS(15:0)" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="DO_WRITE" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="MMO(15:0)" />
        <signal name="I_JMP" />
        <signal name="I_LDA" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <signal name="BAN" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="DIO" />
        <port polarity="Output" name="I_STA" />
        <port polarity="Output" name="SETWRITE" />
        <port polarity="Output" name="CLRWRITE" />
        <port polarity="Output" name="AC_OUT(15:0)" />
        <port polarity="Output" name="MD_OUT(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="WRITE" />
        <port polarity="Output" name="ADDRESS(15:0)" />
        <port polarity="Output" name="DO_WRITE" />
        <port polarity="Output" name="MMO(15:0)" />
        <port polarity="Output" name="I_JMP" />
        <port polarity="Output" name="I_LDA" />
        <port polarity="Output" name="XLXN_83" />
        <port polarity="Output" name="XLXN_84" />
        <port polarity="Output" name="XLXN_85" />
        <port polarity="Output" name="XLXN_86" />
        <port polarity="Output" name="XLXN_87" />
        <port polarity="Output" name="BAN" />
        <port polarity="Output" name="XLXN_89" />
        <port polarity="Output" name="XLXN_90" />
        <port polarity="Output" name="XLXN_91" />
        <port polarity="Output" name="XLXN_92" />
        <port polarity="Output" name="XLXN_93" />
        <port polarity="Output" name="XLXN_94" />
        <port polarity="Output" name="DIO" />
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
            <blockpin signalname="AC_OUT(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_21(15:0)" name="A(15:0)" />
            <blockpin signalname="SETWRITE" name="SEL" />
            <blockpin signalname="XLXN_11(15:0)" name="OUT(15:0)" />
        </block>
        <block symbolname="Decoder4_16" name="XLXI_5">
            <blockpin signalname="XLXN_83" name="D0" />
            <blockpin signalname="I_JMP" name="D1" />
            <blockpin signalname="XLXN_84" name="D2" />
            <blockpin signalname="XLXN_85" name="D3" />
            <blockpin signalname="I_LDA" name="D4" />
            <blockpin signalname="I_STA" name="D5" />
            <blockpin signalname="XLXN_86" name="D6" />
            <blockpin signalname="XLXN_87" name="D7" />
            <blockpin signalname="BAN" name="D8" />
            <blockpin signalname="XLXN_89" name="D9" />
            <blockpin signalname="XLXN_90" name="D10" />
            <blockpin signalname="XLXN_91" name="D11" />
            <blockpin signalname="XLXN_92" name="D12" />
            <blockpin signalname="XLXN_93" name="D13" />
            <blockpin signalname="XLXN_94" name="D14" />
            <blockpin signalname="DIO" name="D15" />
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
            <blockpin signalname="T0" name="T0" />
            <blockpin signalname="T1" name="T1" />
            <blockpin name="T2" />
            <blockpin name="T3" />
            <blockpin name="FETCH" />
            <blockpin signalname="EXECUTE" name="EXECUTE" />
        </block>
        <block symbolname="constant" name="XLXI_32">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_17">
            <attr value="fa59" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_21(15:0)" name="O" />
        </block>
        <block symbolname="fd16ce" name="MA">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_68" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_66(15:0)" name="D(15:0)" />
            <blockpin signalname="ADDRESS(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="constant" name="XLXI_34">
            <attr value="200" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_66(15:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_35">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_36">
            <blockpin signalname="ADDRESS(9)" name="I0" />
            <blockpin signalname="WRITE" name="I1" />
            <blockpin signalname="DO_WRITE" name="O" />
        </block>
        <block symbolname="fd16ce" name="XLXI_37">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="DO_WRITE" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="MD_OUT(15:0)" name="D(15:0)" />
            <blockpin signalname="MMO(15:0)" name="Q(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
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
        <instance x="4096" y="2144" name="XLXI_20" orien="R0">
        </instance>
        <branch name="XLXN_23(3:0)">
            <wire x2="4544" y1="1872" y2="1872" x1="4480" />
        </branch>
        <iomarker fontsize="28" x="1088" y="4384" name="RESET" orien="R180" />
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
        <branch name="XLXN_39">
            <wire x2="3264" y1="2608" y2="2608" x1="3232" />
            <wire x2="3264" y1="2608" y2="3024" x1="3264" />
            <wire x2="3280" y1="3024" y2="3024" x1="3264" />
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
        <branch name="XLXN_62">
            <wire x2="480" y1="3376" y2="3376" x1="272" />
        </branch>
        <instance x="128" y="3344" name="XLXI_32" orien="R0">
        </instance>
        <branch name="XLXN_21(15:0)">
            <wire x2="2736" y1="2880" y2="2880" x1="2672" />
        </branch>
        <instance x="2528" y="2848" name="XLXI_17" orien="R0">
        </instance>
        <instance x="4048" y="1648" name="MA" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <branch name="XLXN_66(15:0)">
            <wire x2="4048" y1="1392" y2="1392" x1="4016" />
        </branch>
        <instance x="3872" y="1360" name="XLXI_34" orien="R0">
        </instance>
        <branch name="ADDRESS(15:0)">
            <wire x2="4944" y1="1392" y2="1392" x1="4432" />
        </branch>
        <iomarker fontsize="28" x="4944" y="1392" name="ADDRESS(15:0)" orien="R0" />
        <branch name="XLXN_68">
            <wire x2="4048" y1="1456" y2="1456" x1="3888" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3953" y="1520" type="branch" />
            <wire x2="3953" y1="1520" y2="1520" x1="3856" />
            <wire x2="4048" y1="1520" y2="1520" x1="3953" />
        </branch>
        <instance x="3744" y="1424" name="XLXI_35" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4005" y="2064" type="branch" />
            <wire x2="4005" y1="2064" y2="2064" x1="3952" />
            <wire x2="4096" y1="2064" y2="2064" x1="4005" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3264" y="3088" type="branch" />
            <wire x2="3280" y1="3088" y2="3088" x1="3264" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3973" y="1616" type="branch" />
            <wire x2="3973" y1="1616" y2="1616" x1="3904" />
            <wire x2="4048" y1="1616" y2="1616" x1="3973" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4015" y="2128" type="branch" />
            <wire x2="4015" y1="2128" y2="2128" x1="3904" />
            <wire x2="4096" y1="2128" y2="2128" x1="4015" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="448" y="3536" type="branch" />
            <wire x2="448" y1="3536" y2="3536" x1="416" />
            <wire x2="480" y1="3536" y2="3536" x1="448" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3261" y="3184" type="branch" />
            <wire x2="3261" y1="3184" y2="3184" x1="3248" />
            <wire x2="3280" y1="3184" y2="3184" x1="3261" />
        </branch>
        <instance x="3088" y="2576" name="XLXI_22" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4563" y="3264" type="branch" />
            <wire x2="4563" y1="3264" y2="3264" x1="4400" />
            <wire x2="4688" y1="3264" y2="3264" x1="4563" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4618" y="3360" type="branch" />
            <wire x2="4618" y1="3360" y2="3360" x1="4560" />
            <wire x2="4688" y1="3360" y2="3360" x1="4618" />
        </branch>
        <branch name="RESET">
            <wire x2="1376" y1="4384" y2="4384" x1="1088" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="405" y="3216" type="branch" />
            <wire x2="405" y1="3216" y2="3216" x1="336" />
            <wire x2="480" y1="3216" y2="3216" x1="405" />
        </branch>
        <branch name="CLK">
            <wire x2="1344" y1="4624" y2="4624" x1="1072" />
        </branch>
        <branch name="I_JMP">
            <wire x2="5216" y1="1936" y2="1936" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="5216" y="1936" name="I_JMP" orien="R0" />
        <branch name="I_LDA">
            <wire x2="5312" y1="2128" y2="2128" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="5312" y="2128" name="I_LDA" orien="R0" />
        <branch name="I_STA">
            <wire x2="5536" y1="2192" y2="2192" x1="4928" />
        </branch>
        <branch name="I_STA">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1726" y="3344" type="branch" />
            <wire x2="1726" y1="3344" y2="3344" x1="1648" />
            <wire x2="1808" y1="3344" y2="3344" x1="1726" />
        </branch>
        <branch name="EXECUTE">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1586" y="3280" type="branch" />
            <wire x2="1586" y1="3280" y2="3280" x1="1536" />
            <wire x2="1808" y1="3280" y2="3280" x1="1586" />
        </branch>
        <branch name="EXECUTE">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="3536" type="branch" />
            <wire x2="1088" y1="3536" y2="3536" x1="864" />
            <wire x2="1184" y1="3536" y2="3536" x1="1088" />
        </branch>
        <branch name="T1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="3280" type="branch" />
            <wire x2="896" y1="3280" y2="3280" x1="864" />
            <wire x2="928" y1="3280" y2="3280" x1="896" />
        </branch>
        <branch name="T1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2175" y="3392" type="branch" />
            <wire x2="2175" y1="3392" y2="3392" x1="2096" />
            <wire x2="2288" y1="3392" y2="3392" x1="2175" />
        </branch>
        <branch name="T0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2214" y="3184" type="branch" />
            <wire x2="2214" y1="3184" y2="3184" x1="2144" />
            <wire x2="2288" y1="3184" y2="3184" x1="2214" />
        </branch>
        <branch name="T0">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="3216" type="branch" />
            <wire x2="992" y1="3216" y2="3216" x1="864" />
            <wire x2="992" y1="3200" y2="3216" x1="992" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="4960" y1="1872" y2="1872" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="4960" y="1872" name="XLXN_83" orien="R0" />
        <branch name="XLXN_84">
            <wire x2="4960" y1="2000" y2="2000" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="4960" y="2000" name="XLXN_84" orien="R0" />
        <branch name="XLXN_85">
            <wire x2="4960" y1="2064" y2="2064" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="4960" y="2064" name="XLXN_85" orien="R0" />
        <branch name="XLXN_86">
            <wire x2="4960" y1="2256" y2="2256" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="4960" y="2256" name="XLXN_86" orien="R0" />
        <branch name="XLXN_87">
            <wire x2="4960" y1="2320" y2="2320" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="4960" y="2320" name="XLXN_87" orien="R0" />
        <branch name="BAN">
            <wire x2="4944" y1="2384" y2="2384" x1="4928" />
            <wire x2="5536" y1="2384" y2="2384" x1="4944" />
        </branch>
        <branch name="XLXN_89">
            <wire x2="4960" y1="2448" y2="2448" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="4960" y="2448" name="XLXN_89" orien="R0" />
        <branch name="XLXN_90">
            <wire x2="4960" y1="2512" y2="2512" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="4960" y="2512" name="XLXN_90" orien="R0" />
        <branch name="XLXN_91">
            <wire x2="4960" y1="2576" y2="2576" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="4960" y="2576" name="XLXN_91" orien="R0" />
        <branch name="XLXN_92">
            <wire x2="4960" y1="2640" y2="2640" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="4960" y="2640" name="XLXN_92" orien="R0" />
        <branch name="XLXN_93">
            <wire x2="4960" y1="2704" y2="2704" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="4960" y="2704" name="XLXN_93" orien="R0" />
        <branch name="XLXN_94">
            <wire x2="4960" y1="2768" y2="2768" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="4960" y="2768" name="XLXN_94" orien="R0" />
        <branch name="DIO">
            <wire x2="4944" y1="2832" y2="2832" x1="4928" />
            <wire x2="5552" y1="2832" y2="2832" x1="4944" />
        </branch>
        <iomarker fontsize="28" x="5536" y="2384" name="BAN" orien="R0" />
        <iomarker fontsize="28" x="5552" y="2832" name="DIO" orien="R0" />
    </sheet>
    <sheet sheetnum="2" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="SETWRITE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1760" type="branch" />
            <wire x2="1152" y1="1760" y2="1760" x1="992" />
            <wire x2="1152" y1="1760" y2="1792" x1="1152" />
            <wire x2="1280" y1="1792" y2="1792" x1="1152" />
            <wire x2="1888" y1="1760" y2="1760" x1="1152" />
        </branch>
        <branch name="CLRWRITE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1856" type="branch" />
            <wire x2="1600" y1="1856" y2="1856" x1="1024" />
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
            <wire x2="1680" y1="1952" y2="1952" x1="272" />
            <wire x2="1888" y1="1952" y2="1952" x1="1680" />
            <wire x2="1680" y1="1952" y2="2384" x1="1680" />
            <wire x2="3328" y1="2384" y2="2384" x1="1680" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="2048" type="branch" />
            <wire x2="1824" y1="2048" y2="2048" x1="480" />
            <wire x2="1888" y1="2048" y2="2048" x1="1824" />
            <wire x2="1824" y1="2048" y2="2480" x1="1824" />
            <wire x2="3328" y1="2480" y2="2480" x1="1824" />
        </branch>
        <branch name="WRITE">
            <wire x2="2368" y1="1824" y2="1824" x1="2272" />
            <wire x2="2528" y1="1824" y2="1824" x1="2368" />
            <wire x2="2368" y1="1824" y2="1936" x1="2368" />
            <wire x2="2768" y1="1936" y2="1936" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1824" name="WRITE" orien="R0" />
        <branch name="ADDRESS(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1464" y="2352" type="branch" />
            <wire x2="1464" y1="2352" y2="2352" x1="1328" />
            <wire x2="1600" y1="2352" y2="2352" x1="1464" />
            <wire x2="1600" y1="2224" y2="2352" x1="1600" />
            <wire x2="2544" y1="2224" y2="2224" x1="1600" />
            <wire x2="2768" y1="2000" y2="2000" x1="2544" />
            <wire x2="2544" y1="2000" y2="2224" x1="2544" />
        </branch>
        <branch name="ADDRESS(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="2544" type="branch" />
            <wire x2="1232" y1="2544" y2="2544" x1="720" />
            <wire x2="1232" y1="2272" y2="2352" x1="1232" />
            <wire x2="1232" y1="2352" y2="2544" x1="1232" />
        </branch>
        <bustap x2="1328" y1="2352" y2="2352" x1="1232" />
        <instance x="2768" y="2064" name="XLXI_36" orien="R0" />
        <branch name="DO_WRITE">
            <wire x2="3152" y1="1968" y2="1968" x1="3024" />
            <wire x2="3440" y1="1968" y2="1968" x1="3152" />
            <wire x2="3152" y1="1968" y2="2320" x1="3152" />
            <wire x2="3328" y1="2320" y2="2320" x1="3152" />
        </branch>
        <instance x="3328" y="2512" name="XLXI_37" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <iomarker fontsize="28" x="3440" y="1968" name="DO_WRITE" orien="R0" />
        <branch name="MD_OUT(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="2256" type="branch" />
            <wire x2="3328" y1="2256" y2="2256" x1="2848" />
        </branch>
        <branch name="MMO(15:0)">
            <wire x2="4064" y1="2256" y2="2256" x1="3712" />
        </branch>
        <iomarker fontsize="28" x="4064" y="2256" name="MMO(15:0)" orien="R0" />
    </sheet>
</drawing>