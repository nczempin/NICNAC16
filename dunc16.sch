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
        <signal name="XLXN_20" />
        <signal name="XLXN_23(3:0)" />
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="XLXN_30(15:0)" />
        <signal name="EN_MD" />
        <signal name="RUN" />
        <signal name="MD_OUT(15:12)" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="WRITE" />
        <signal name="EXECUTE" />
        <signal name="T0" />
        <signal name="T1" />
        <signal name="XLXN_62" />
        <signal name="ADDRESS(9)" />
        <signal name="ADDRESS(15:0)" />
        <signal name="DO_WRITE" />
        <signal name="MMO(15:0)" />
        <signal name="I_JMP" />
        <signal name="I_LDA" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="I_ADD" />
        <signal name="XLXN_87" />
        <signal name="BAN" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="DIO" />
        <signal name="MEMORY_READ(15:0)" />
        <signal name="INSTR_JUMP" />
        <signal name="T2" />
        <signal name="T3" />
        <signal name="MA_IN(15:0)" />
        <signal name="PC_OUT(15:0)" />
        <signal name="XLXN_116(15:0)" />
        <signal name="ADDR_FROM_PC" />
        <signal name="FETCH" />
        <signal name="EN_MA" />
        <signal name="XLXN_145" />
        <signal name="XLXN_146" />
        <signal name="XLXN_147(15:0)" />
        <signal name="XLXN_148(15:0)" />
        <signal name="INCR_PC" />
        <signal name="XLXN_150" />
        <signal name="XLXN_151(15:0)" />
        <signal name="XLXN_152" />
        <signal name="XLXN_153(15:0)" />
        <signal name="XLXN_155" />
        <signal name="EN_IR" />
        <signal name="XLXN_159" />
        <signal name="ADDR_FROM_MD" />
        <signal name="XLXN_165" />
        <signal name="XLXN_166" />
        <signal name="FETCH_T2" />
        <signal name="XLXN_169" />
        <signal name="XLXN_170" />
        <signal name="XLXN_171" />
        <signal name="XLXN_172" />
        <signal name="XLXN_173" />
        <signal name="XLXN_174(15:0)" />
        <signal name="XLXN_175(15:0)" />
        <signal name="XLXN_176(15:0)" />
        <signal name="XLXN_177(15:0)" />
        <signal name="XLXN_178(15:0)" />
        <signal name="XLXN_179(15:0)" />
        <signal name="XLXN_180" />
        <signal name="XLXN_181" />
        <signal name="XLXN_182" />
        <signal name="XLXN_183" />
        <signal name="XLXN_184" />
        <signal name="XLXN_185" />
        <signal name="XLXN_186" />
        <signal name="XLXN_120(15:0)" />
        <signal name="XLXN_188(15:0)" />
        <signal name="XLXN_189" />
        <signal name="XLXN_192" />
        <signal name="XLXN_194" />
        <signal name="XLXN_195" />
        <signal name="XLXN_196" />
        <signal name="XLXN_197" />
        <signal name="XLXN_198" />
        <signal name="XLXN_199" />
        <signal name="MD2AC" />
        <signal name="XLXN_202(15:0)" />
        <signal name="XLXN_204(15:0)" />
        <signal name="XLXN_205(15:0)" />
        <signal name="XLXN_206(15:0)" />
        <signal name="LOW(7:0)" />
        <signal name="LOW(0)" />
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
        <port polarity="Output" name="I_ADD" />
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
        <blockdef name="adsu16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <rect width="64" x="0" y="-204" height="24" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="48" y1="-64" y2="-64" x1="128" />
            <line x2="128" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="address_splitter">
            <timestamp>2014-9-19T15:9:38</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="fd16ce" name="MD">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="EN_MD" name="CE" />
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
            <blockpin signalname="MEMORY_READ(15:0)" name="A(15:0)" />
            <blockpin signalname="SETWRITE" name="SEL" />
            <blockpin signalname="XLXN_11(15:0)" name="OUT(15:0)" />
        </block>
        <block symbolname="Decoder4_16" name="INSTRUCTION_DECODER">
            <blockpin signalname="XLXN_83" name="D0" />
            <blockpin signalname="I_JMP" name="D1" />
            <blockpin signalname="XLXN_84" name="D2" />
            <blockpin signalname="XLXN_85" name="D3" />
            <blockpin signalname="I_LDA" name="D4" />
            <blockpin signalname="I_STA" name="D5" />
            <blockpin signalname="I_ADD" name="D6" />
            <blockpin signalname="XLXN_87" name="D7" />
            <blockpin signalname="BAN" name="D8" />
            <blockpin signalname="XLXN_89" name="D9" />
            <blockpin signalname="XLXN_90" name="D10" />
            <blockpin signalname="XLXN_91" name="D11" />
            <blockpin signalname="XLXN_92" name="D12" />
            <blockpin signalname="XLXN_93" name="D13" />
            <blockpin signalname="XLXN_94" name="D14" />
            <blockpin signalname="DIO" name="D15" />
            <blockpin signalname="RUN" name="E" />
            <blockpin signalname="XLXN_23(3:0)" name="A(3:0)" />
        </block>
        <block symbolname="fd16ce" name="AC">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="MD2AC" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_202(15:0)" name="D(15:0)" />
            <blockpin signalname="AC_OUT(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="mux16_2" name="XLXI_14">
            <blockpin signalname="XLXN_30(15:0)" name="B(15:0)" />
            <blockpin signalname="MD_OUT(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_20" name="SEL" />
            <blockpin signalname="XLXN_202(15:0)" name="OUT(15:0)" />
        </block>
        <block symbolname="constant" name="XLXI_16">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="REG4CE" name="IR">
            <blockpin signalname="EN_IR" name="CE" />
            <blockpin signalname="XLXN_23(3:0)" name="Q(3:0)" />
            <blockpin signalname="MD_OUT(15:12)" name="D(3:0)" />
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
            <blockpin signalname="T2" name="T2" />
            <blockpin signalname="T3" name="T3" />
            <blockpin signalname="FETCH" name="FETCH" />
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
        <block symbolname="fd16ce" name="MA">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="EN_MA" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="MA_IN(15:0)" name="D(15:0)" />
            <blockpin signalname="ADDRESS(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="and2" name="XLXI_36">
            <blockpin signalname="ADDRESS(9)" name="I0" />
            <blockpin signalname="WRITE" name="I1" />
            <blockpin signalname="DO_WRITE" name="O" />
        </block>
        <block symbolname="fd16ce" name="MMO_REG">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="DO_WRITE" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="MD_OUT(15:0)" name="D(15:0)" />
            <blockpin signalname="MMO(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="constant" name="XLXI_39">
            <attr value="5212" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_204(15:0)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_40">
            <blockpin signalname="BAN" name="I0" />
            <blockpin signalname="I_JMP" name="I1" />
            <blockpin signalname="INSTR_JUMP" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_41">
            <blockpin signalname="INSTR_JUMP" name="I0" />
            <blockpin signalname="EXECUTE" name="I1" />
            <blockpin signalname="T0" name="I2" />
            <blockpin name="O" />
        </block>
        <block symbolname="fd16ce" name="PC">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="INCR_PC" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_116(15:0)" name="D(15:0)" />
            <blockpin signalname="PC_OUT(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="mux16_2" name="MA_MUX">
            <blockpin signalname="MD_OUT(15:0)" name="B(15:0)" />
            <blockpin signalname="PC_OUT(15:0)" name="A(15:0)" />
            <blockpin signalname="ADDR_FROM_MD" name="SEL" />
            <blockpin signalname="MA_IN(15:0)" name="OUT(15:0)" />
        </block>
        <block symbolname="mux16_2" name="PC_MUX">
            <blockpin signalname="XLXN_153(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_120(15:0)" name="A(15:0)" />
            <blockpin signalname="INCR_PC" name="SEL" />
            <blockpin signalname="XLXN_116(15:0)" name="OUT(15:0)" />
        </block>
        <block symbolname="and2" name="XLXI_51">
            <blockpin signalname="T0" name="I0" />
            <blockpin signalname="FETCH" name="I1" />
            <blockpin signalname="ADDR_FROM_PC" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_54">
            <blockpin signalname="FETCH" name="I0" />
            <blockpin signalname="T2" name="I1" />
            <blockpin signalname="FETCH_T2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_55">
            <blockpin signalname="ADDR_FROM_PC" name="I0" />
            <blockpin signalname="ADDR_FROM_MD" name="I1" />
            <blockpin signalname="EN_MA" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_56">
            <blockpin signalname="RESET" name="I" />
            <blockpin signalname="RUN" name="O" />
        </block>
        <block symbolname="adsu16" name="ALU">
            <blockpin signalname="XLXN_147(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_155" name="ADD" />
            <blockpin signalname="XLXN_148(15:0)" name="B(15:0)" />
            <blockpin signalname="INCR_PC" name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="XLXN_153(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="mux16_2" name="XLXI_58">
            <blockpin signalname="PC_OUT(15:0)" name="B(15:0)" />
            <blockpin name="A(15:0)" />
            <blockpin signalname="INCR_PC" name="SEL" />
            <blockpin signalname="XLXN_147(15:0)" name="OUT(15:0)" />
        </block>
        <block symbolname="mux16_2" name="XLXI_59">
            <blockpin signalname="XLXN_151(15:0)" name="B(15:0)" />
            <blockpin name="A(15:0)" />
            <blockpin signalname="INCR_PC" name="SEL" />
            <blockpin signalname="XLXN_148(15:0)" name="OUT(15:0)" />
        </block>
        <block symbolname="buf" name="XLXI_60">
            <blockpin signalname="ADDR_FROM_PC" name="I" />
            <blockpin signalname="INCR_PC" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_61">
            <attr value="0000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_151(15:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_62">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_155" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_64">
            <blockpin signalname="FETCH_T2" name="I" />
            <blockpin signalname="EN_IR" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_65">
            <blockpin signalname="FETCH_T2" name="I" />
            <blockpin signalname="ADDR_FROM_MD" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_46">
            <attr value="200" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_120(15:0)" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_69">
            <blockpin signalname="T0" name="I0" />
            <blockpin signalname="EXECUTE" name="I1" />
            <blockpin signalname="I_LDA" name="I2" />
            <blockpin signalname="XLXN_196" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_70">
            <blockpin signalname="ADDR_FROM_PC" name="I0" />
            <blockpin signalname="SETWRITE" name="I1" />
            <blockpin signalname="XLXN_196" name="I2" />
            <blockpin signalname="EN_MD" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_72">
            <blockpin signalname="EXECUTE" name="I0" />
            <blockpin signalname="I_LDA" name="I1" />
            <blockpin signalname="T1" name="I2" />
            <blockpin signalname="MD2AC" name="O" />
        </block>
        <block symbolname="mux16_2" name="RAMMUX_TMP">
            <blockpin signalname="XLXN_205(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_204(15:0)" name="A(15:0)" />
            <blockpin signalname="LOW(0)" name="SEL" />
            <blockpin signalname="MEMORY_READ(15:0)" name="OUT(15:0)" />
        </block>
        <block symbolname="constant" name="XLXI_74">
            <attr value="4212" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_205(15:0)" name="O" />
        </block>
        <block symbolname="address_splitter" name="XLXI_75">
            <blockpin signalname="ADDRESS(15:0)" name="IN(15:0)" />
            <blockpin signalname="LOW(7:0)" name="LOW(7:0)" />
            <blockpin name="HIGH(7:0)" />
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
            <wire x2="2592" y1="3216" y2="3312" x1="2592" />
            <wire x2="2864" y1="3312" y2="3312" x1="2592" />
            <wire x2="2992" y1="2608" y2="2608" x1="2592" />
            <wire x2="2592" y1="2608" y2="3200" x1="2592" />
            <wire x2="2592" y1="3200" y2="3216" x1="2592" />
            <wire x2="2768" y1="3200" y2="3200" x1="2592" />
        </branch>
        <branch name="XLXN_11(15:0)">
            <wire x2="3200" y1="3040" y2="3040" x1="3152" />
            <wire x2="3200" y1="2960" y2="3040" x1="3200" />
            <wire x2="3280" y1="2960" y2="2960" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="2880" y="3360" name="CLRWRITE" orien="R0" />
        <branch name="CLRWRITE">
            <wire x2="2880" y1="3360" y2="3360" x1="2544" />
        </branch>
        <instance x="4544" y="2864" name="INSTRUCTION_DECODER" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <iomarker fontsize="28" x="5536" y="2192" name="I_STA" orien="R0" />
        <branch name="AC_OUT(15:0)">
            <wire x2="2768" y1="3104" y2="3104" x1="2688" />
            <wire x2="2688" y1="3104" y2="3456" x1="2688" />
            <wire x2="5152" y1="3456" y2="3456" x1="2688" />
            <wire x2="5152" y1="3136" y2="3136" x1="5072" />
            <wire x2="5152" y1="3136" y2="3456" x1="5152" />
            <wire x2="6336" y1="2928" y2="2928" x1="5152" />
            <wire x2="5152" y1="2928" y2="3136" x1="5152" />
        </branch>
        <instance x="4096" y="2144" name="IR" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-12" type="instance" />
        </instance>
        <branch name="XLXN_23(3:0)">
            <wire x2="4544" y1="1872" y2="1872" x1="4480" />
        </branch>
        <iomarker fontsize="28" x="1088" y="4384" name="RESET" orien="R180" />
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
        <branch name="EN_MD">
            <wire x2="3264" y1="2608" y2="2608" x1="3248" />
            <wire x2="3264" y1="2608" y2="3024" x1="3264" />
            <wire x2="3280" y1="3024" y2="3024" x1="3264" />
        </branch>
        <instance x="4688" y="3392" name="AC" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <branch name="RUN">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4496" y="2720" type="branch" />
            <wire x2="4496" y1="2544" y2="2544" x1="4192" />
            <wire x2="4496" y1="2544" y2="2720" x1="4496" />
            <wire x2="4528" y1="2720" y2="2720" x1="4496" />
            <wire x2="4528" y1="2720" y2="2832" x1="4528" />
            <wire x2="4544" y1="2832" y2="2832" x1="4528" />
        </branch>
        <instance x="480" y="3568" name="XLXI_31" orien="R0">
        </instance>
        <branch name="XLXN_62">
            <wire x2="480" y1="3376" y2="3376" x1="272" />
        </branch>
        <instance x="128" y="3344" name="XLXI_32" orien="R0">
        </instance>
        <instance x="4048" y="1648" name="MA" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <branch name="ADDRESS(15:0)">
            <wire x2="4944" y1="1392" y2="1392" x1="4432" />
        </branch>
        <iomarker fontsize="28" x="4944" y="1392" name="ADDRESS(15:0)" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3953" y="1520" type="branch" />
            <wire x2="4048" y1="1520" y2="1520" x1="3856" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4005" y="2064" type="branch" />
            <wire x2="4096" y1="2064" y2="2064" x1="3952" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3264" y="3088" type="branch" />
            <wire x2="3280" y1="3088" y2="3088" x1="3264" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3888" y="1616" type="branch" />
            <wire x2="3888" y1="1616" y2="1616" x1="3824" />
            <wire x2="4048" y1="1616" y2="1616" x1="3888" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4015" y="2128" type="branch" />
            <wire x2="3984" y1="2128" y2="2128" x1="3904" />
            <wire x2="3984" y1="2128" y2="2448" x1="3984" />
            <wire x2="4096" y1="2128" y2="2128" x1="3984" />
            <wire x2="3904" y1="2448" y2="2544" x1="3904" />
            <wire x2="3968" y1="2544" y2="2544" x1="3904" />
            <wire x2="3984" y1="2448" y2="2448" x1="3904" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="448" y="3536" type="branch" />
            <wire x2="448" y1="3536" y2="3536" x1="416" />
            <wire x2="480" y1="3536" y2="3536" x1="448" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3184" y="3184" type="branch" />
            <wire x2="3184" y1="3184" y2="3184" x1="3152" />
            <wire x2="3280" y1="3184" y2="3184" x1="3184" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4563" y="3264" type="branch" />
            <wire x2="4688" y1="3264" y2="3264" x1="4400" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4544" y="3360" type="branch" />
            <wire x2="4544" y1="3360" y2="3360" x1="4400" />
            <wire x2="4688" y1="3360" y2="3360" x1="4544" />
        </branch>
        <branch name="RESET">
            <wire x2="1376" y1="4384" y2="4384" x1="1088" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="405" y="3216" type="branch" />
            <wire x2="480" y1="3216" y2="3216" x1="336" />
        </branch>
        <branch name="CLK">
            <wire x2="1344" y1="4624" y2="4624" x1="1072" />
        </branch>
        <branch name="I_JMP">
            <wire x2="5152" y1="1936" y2="1936" x1="4928" />
            <wire x2="5216" y1="1936" y2="1936" x1="5152" />
            <wire x2="5152" y1="1824" y2="1936" x1="5152" />
            <wire x2="5504" y1="1824" y2="1824" x1="5152" />
            <wire x2="5504" y1="1824" y2="2128" x1="5504" />
            <wire x2="5968" y1="2128" y2="2128" x1="5504" />
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
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1726" y="3344" type="branch" />
            <wire x2="1808" y1="3344" y2="3344" x1="1648" />
        </branch>
        <branch name="EXECUTE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1586" y="3280" type="branch" />
            <wire x2="1792" y1="3280" y2="3280" x1="1536" />
            <wire x2="1808" y1="3280" y2="3280" x1="1792" />
            <wire x2="1792" y1="2848" y2="3280" x1="1792" />
            <wire x2="2144" y1="2848" y2="2848" x1="1792" />
            <wire x2="2144" y1="2416" y2="2848" x1="2144" />
            <wire x2="2224" y1="2416" y2="2416" x1="2144" />
            <wire x2="2352" y1="2416" y2="2416" x1="2224" />
            <wire x2="2416" y1="2256" y2="2256" x1="2224" />
            <wire x2="2224" y1="2256" y2="2416" x1="2224" />
        </branch>
        <branch name="T1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="3280" type="branch" />
            <wire x2="896" y1="3280" y2="3280" x1="864" />
            <wire x2="928" y1="3280" y2="3280" x1="896" />
        </branch>
        <branch name="T1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2175" y="3392" type="branch" />
            <wire x2="2288" y1="3392" y2="3392" x1="2096" />
        </branch>
        <branch name="T0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2214" y="3184" type="branch" />
            <wire x2="2144" y1="2864" y2="3184" x1="2144" />
            <wire x2="2288" y1="3184" y2="3184" x1="2144" />
            <wire x2="2272" y1="2864" y2="2864" x1="2144" />
            <wire x2="2272" y1="2480" y2="2864" x1="2272" />
            <wire x2="2352" y1="2480" y2="2480" x1="2272" />
        </branch>
        <branch name="T0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="3216" type="branch" />
            <wire x2="992" y1="3216" y2="3216" x1="864" />
            <wire x2="1024" y1="3216" y2="3216" x1="992" />
            <wire x2="1488" y1="3216" y2="3216" x1="1024" />
            <wire x2="1488" y1="3216" y2="3808" x1="1488" />
            <wire x2="1728" y1="3808" y2="3808" x1="1488" />
            <wire x2="1616" y1="2704" y2="2704" x1="1024" />
            <wire x2="1024" y1="2704" y2="3216" x1="1024" />
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
        <branch name="I_ADD">
            <wire x2="5136" y1="2256" y2="2256" x1="4928" />
        </branch>
        <branch name="XLXN_87">
            <wire x2="4960" y1="2320" y2="2320" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="4960" y="2320" name="XLXN_87" orien="R0" />
        <branch name="BAN">
            <wire x2="5392" y1="2384" y2="2384" x1="4928" />
            <wire x2="5536" y1="2384" y2="2384" x1="5392" />
            <wire x2="5392" y1="2384" y2="2480" x1="5392" />
            <wire x2="5744" y1="2480" y2="2480" x1="5392" />
            <wire x2="5744" y1="2192" y2="2480" x1="5744" />
            <wire x2="5968" y1="2192" y2="2192" x1="5744" />
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
            <wire x2="5552" y1="2832" y2="2832" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="5536" y="2384" name="BAN" orien="R0" />
        <iomarker fontsize="28" x="5552" y="2832" name="DIO" orien="R0" />
        <branch name="MD_OUT(15:12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3992" y="1776" type="branch" />
            <wire x2="4080" y1="1776" y2="1776" x1="3904" />
            <wire x2="4080" y1="1776" y2="1872" x1="4080" />
            <wire x2="4096" y1="1872" y2="1872" x1="4080" />
        </branch>
        <branch name="MD_OUT(15:0)">
            <wire x2="3184" y1="1456" y2="1456" x1="3088" />
            <wire x2="3088" y1="1456" y2="1888" x1="3088" />
            <wire x2="3808" y1="1888" y2="1888" x1="3088" />
            <wire x2="3808" y1="1888" y2="2784" x1="3808" />
            <wire x2="3888" y1="2784" y2="2784" x1="3808" />
            <wire x2="3888" y1="2784" y2="3056" x1="3888" />
            <wire x2="3968" y1="3056" y2="3056" x1="3888" />
            <wire x2="3888" y1="3056" y2="3488" x1="3888" />
            <wire x2="5968" y1="3488" y2="3488" x1="3888" />
            <wire x2="3824" y1="2960" y2="2960" x1="3664" />
            <wire x2="3824" y1="2960" y2="3056" x1="3824" />
            <wire x2="3888" y1="3056" y2="3056" x1="3824" />
            <wire x2="3808" y1="1776" y2="1888" x1="3808" />
        </branch>
        <bustap x2="3904" y1="1776" y2="1776" x1="3808" />
        <branch name="MEMORY_READ(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="2880" type="branch" />
            <wire x2="2336" y1="2880" y2="2880" x1="2240" />
            <wire x2="2336" y1="2880" y2="2960" x1="2336" />
            <wire x2="2768" y1="2960" y2="2960" x1="2336" />
        </branch>
        <instance x="5968" y="2256" name="XLXI_40" orien="R0" />
        <branch name="INSTR_JUMP">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="6299" y="2160" type="branch" />
            <wire x2="6448" y1="2160" y2="2160" x1="6224" />
        </branch>
        <instance x="1616" y="2896" name="XLXI_41" orien="R0" />
        <branch name="EXECUTE">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="3536" type="branch" />
            <wire x2="1088" y1="3536" y2="3536" x1="864" />
            <wire x2="1168" y1="3536" y2="3536" x1="1088" />
            <wire x2="1184" y1="3536" y2="3536" x1="1168" />
            <wire x2="1168" y1="2768" y2="3536" x1="1168" />
            <wire x2="1616" y1="2768" y2="2768" x1="1168" />
        </branch>
        <branch name="INSTR_JUMP">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1543" y="2832" type="branch" />
            <wire x2="1616" y1="2832" y2="2832" x1="1472" />
        </branch>
        <branch name="T2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1025" y="3344" type="branch" />
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="1776" type="branch" />
            <wire x2="1600" y1="3344" y2="3344" x1="864" />
            <wire x2="1600" y1="1776" y2="3344" x1="1600" />
            <wire x2="2272" y1="1776" y2="1776" x1="1600" />
            <wire x2="2304" y1="1776" y2="1776" x1="2272" />
        </branch>
        <branch name="T3">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1030" y="3408" type="branch" />
            <wire x2="1072" y1="3408" y2="3408" x1="864" />
        </branch>
        <branch name="MA_IN(15:0)">
            <wire x2="4048" y1="1392" y2="1392" x1="3568" />
        </branch>
        <instance x="3184" y="1568" name="MA_MUX" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-16" type="instance" />
        </instance>
        <branch name="PC_OUT(15:0)">
            <wire x2="3040" y1="1104" y2="1104" x1="1552" />
            <wire x2="3040" y1="1104" y2="1312" x1="3040" />
            <wire x2="3184" y1="1312" y2="1312" x1="3040" />
            <wire x2="1552" y1="1104" y2="4016" x1="1552" />
            <wire x2="4544" y1="4016" y2="4016" x1="1552" />
            <wire x2="3040" y1="1312" y2="1312" x1="2944" />
        </branch>
        <instance x="2560" y="1568" name="PC" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <branch name="XLXN_116(15:0)">
            <wire x2="2560" y1="1312" y2="1312" x1="2224" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1536" type="branch" />
            <wire x2="2560" y1="1536" y2="1536" x1="2464" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1440" type="branch" />
            <wire x2="2560" y1="1440" y2="1440" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="5136" y="2256" name="I_ADD" orien="R0" />
        <instance x="1728" y="3872" name="XLXI_51" orien="R0" />
        <branch name="FETCH">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1840" type="branch" />
            <wire x2="1424" y1="3472" y2="3472" x1="864" />
            <wire x2="1632" y1="3472" y2="3472" x1="1424" />
            <wire x2="1632" y1="3472" y2="3744" x1="1632" />
            <wire x2="1728" y1="3744" y2="3744" x1="1632" />
            <wire x2="1424" y1="1840" y2="3472" x1="1424" />
            <wire x2="2288" y1="1840" y2="1840" x1="1424" />
            <wire x2="2304" y1="1840" y2="1840" x1="2288" />
        </branch>
        <branch name="EN_MA">
            <wire x2="3728" y1="1792" y2="1792" x1="3424" />
            <wire x2="3728" y1="1456" y2="1792" x1="3728" />
            <wire x2="4048" y1="1456" y2="1456" x1="3728" />
        </branch>
        <instance x="3968" y="2576" name="XLXI_56" orien="R0" />
        <iomarker fontsize="28" x="6336" y="2928" name="AC_OUT(15:0)" orien="R0" />
        <iomarker fontsize="28" x="5968" y="3488" name="MD_OUT(15:0)" orien="R0" />
        <instance x="4544" y="4128" name="XLXI_58" orien="R0">
        </instance>
        <instance x="4544" y="4592" name="XLXI_59" orien="R0">
        </instance>
        <instance x="5456" y="4432" name="ALU" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-64" type="instance" />
        </instance>
        <branch name="XLXN_147(15:0)">
            <wire x2="5184" y1="3952" y2="3952" x1="4928" />
            <wire x2="5184" y1="3952" y2="4112" x1="5184" />
            <wire x2="5456" y1="4112" y2="4112" x1="5184" />
        </branch>
        <branch name="XLXN_148(15:0)">
            <wire x2="5184" y1="4416" y2="4416" x1="4928" />
            <wire x2="5184" y1="4240" y2="4416" x1="5184" />
            <wire x2="5456" y1="4240" y2="4240" x1="5184" />
        </branch>
        <instance x="2256" y="3808" name="XLXI_60" orien="R0" />
        <branch name="INCR_PC">
            <wire x2="3440" y1="3776" y2="3776" x1="2480" />
            <wire x2="5456" y1="3776" y2="3776" x1="3440" />
            <wire x2="5456" y1="3776" y2="3984" x1="5456" />
            <wire x2="3440" y1="3776" y2="4112" x1="3440" />
            <wire x2="3440" y1="4112" y2="4576" x1="3440" />
            <wire x2="4544" y1="4576" y2="4576" x1="3440" />
            <wire x2="4544" y1="4112" y2="4112" x1="3440" />
        </branch>
        <branch name="XLXN_151(15:0)">
            <wire x2="4544" y1="4480" y2="4480" x1="4512" />
        </branch>
        <instance x="4368" y="4448" name="XLXI_61" orien="R0">
        </instance>
        <branch name="XLXN_153(15:0)">
            <wire x2="1840" y1="1376" y2="1376" x1="1776" />
            <wire x2="1776" y1="1376" y2="1680" x1="1776" />
            <wire x2="5920" y1="1680" y2="1680" x1="1776" />
            <wire x2="5920" y1="1680" y2="4176" x1="5920" />
            <wire x2="5920" y1="4176" y2="4176" x1="5904" />
        </branch>
        <branch name="INCR_PC">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1472" type="branch" />
            <wire x2="1680" y1="1472" y2="1472" x1="1648" />
            <wire x2="1680" y1="1472" y2="1536" x1="1680" />
            <wire x2="2304" y1="1536" y2="1536" x1="1680" />
            <wire x2="1840" y1="1472" y2="1472" x1="1680" />
            <wire x2="2304" y1="1376" y2="1536" x1="2304" />
            <wire x2="2560" y1="1376" y2="1376" x1="2304" />
        </branch>
        <branch name="XLXN_155">
            <wire x2="5456" y1="4368" y2="4368" x1="5424" />
        </branch>
        <instance x="5280" y="4336" name="XLXI_62" orien="R0">
        </instance>
        <branch name="EN_IR">
            <wire x2="4096" y1="1936" y2="1936" x1="2944" />
        </branch>
        <branch name="ADDR_FROM_MD">
            <wire x2="3104" y1="1760" y2="1760" x1="2944" />
            <wire x2="3168" y1="1760" y2="1760" x1="3104" />
            <wire x2="3184" y1="1552" y2="1552" x1="3104" />
            <wire x2="3104" y1="1552" y2="1760" x1="3104" />
        </branch>
        <branch name="FETCH_T2">
            <wire x2="2672" y1="1808" y2="1808" x1="2560" />
            <wire x2="2672" y1="1808" y2="1936" x1="2672" />
            <wire x2="2720" y1="1936" y2="1936" x1="2672" />
            <wire x2="2720" y1="1760" y2="1760" x1="2672" />
            <wire x2="2672" y1="1760" y2="1808" x1="2672" />
        </branch>
        <instance x="3168" y="1888" name="XLXI_55" orien="R0" />
        <instance x="2304" y="1904" name="XLXI_54" orien="R0" />
        <instance x="2768" y="3216" name="XLXI_10" orien="R0">
        </instance>
        <branch name="ADDR_FROM_PC">
            <wire x2="2080" y1="3776" y2="3776" x1="1984" />
            <wire x2="2256" y1="3776" y2="3776" x1="2080" />
            <wire x2="2080" y1="2736" y2="3776" x1="2080" />
            <wire x2="2624" y1="2736" y2="2736" x1="2080" />
            <wire x2="2960" y1="2736" y2="2736" x1="2624" />
            <wire x2="2992" y1="2672" y2="2672" x1="2624" />
            <wire x2="2624" y1="2672" y2="2736" x1="2624" />
            <wire x2="3168" y1="1824" y2="1824" x1="2960" />
            <wire x2="2960" y1="1824" y2="2736" x1="2960" />
        </branch>
        <instance x="2720" y="1968" name="XLXI_64" orien="R0" />
        <instance x="2720" y="1792" name="XLXI_65" orien="R0" />
        <branch name="XLXN_120(15:0)">
            <wire x2="1840" y1="1232" y2="1232" x1="1728" />
        </branch>
        <instance x="1584" y="1200" name="XLXI_46" orien="R0">
        </instance>
        <instance x="1840" y="1488" name="PC_MUX" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-16" type="instance" />
        </instance>
        <iomarker fontsize="28" x="2864" y="3312" name="SETWRITE" orien="R0" />
        <instance x="2352" y="2544" name="XLXI_69" orien="R0" />
        <branch name="I_LDA">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="2352" type="branch" />
            <wire x2="2080" y1="2352" y2="2352" x1="1936" />
            <wire x2="2352" y1="2352" y2="2352" x1="2080" />
            <wire x2="2080" y1="2192" y2="2352" x1="2080" />
            <wire x2="2416" y1="2192" y2="2192" x1="2080" />
        </branch>
        <instance x="2992" y="2736" name="XLXI_70" orien="R0" />
        <branch name="XLXN_196">
            <wire x2="2992" y1="2416" y2="2416" x1="2608" />
            <wire x2="2992" y1="2416" y2="2544" x1="2992" />
        </branch>
        <instance x="2416" y="2320" name="XLXI_72" orien="R0" />
        <branch name="T1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2128" type="branch" />
            <wire x2="2416" y1="2128" y2="2128" x1="2176" />
        </branch>
        <branch name="MD2AC">
            <wire x2="3072" y1="2192" y2="2192" x1="2672" />
            <wire x2="4432" y1="2192" y2="2192" x1="3072" />
            <wire x2="4432" y1="2192" y2="3200" x1="4432" />
            <wire x2="4688" y1="3200" y2="3200" x1="4432" />
        </branch>
        <branch name="XLXN_202(15:0)">
            <wire x2="4688" y1="3136" y2="3136" x1="4352" />
        </branch>
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
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1464" y="2352" type="branch" />
            <wire x2="1600" y1="2352" y2="2352" x1="1328" />
            <wire x2="1600" y1="2224" y2="2352" x1="1600" />
            <wire x2="2544" y1="2224" y2="2224" x1="1600" />
            <wire x2="2768" y1="2000" y2="2000" x1="2544" />
            <wire x2="2544" y1="2000" y2="2224" x1="2544" />
        </branch>
        <branch name="ADDRESS(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="2544" type="branch" />
            <wire x2="1232" y1="2544" y2="2544" x1="720" />
            <wire x2="1232" y1="2544" y2="2576" x1="1232" />
            <wire x2="1392" y1="2576" y2="2576" x1="1232" />
            <wire x2="1232" y1="2336" y2="2352" x1="1232" />
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
        <instance x="3328" y="2512" name="MMO_REG" orien="R0">
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
        <instance x="992" y="3248" name="RAMMUX_TMP" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-16" type="instance" />
        </instance>
        <branch name="MEMORY_READ(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1841" y="3072" type="branch" />
            <wire x2="1841" y1="3072" y2="3072" x1="1376" />
            <wire x2="2032" y1="3072" y2="3072" x1="1841" />
        </branch>
        <branch name="XLXN_204(15:0)">
            <wire x2="992" y1="2992" y2="2992" x1="960" />
        </branch>
        <instance x="816" y="2960" name="XLXI_39" orien="R0">
        </instance>
        <branch name="XLXN_205(15:0)">
            <wire x2="992" y1="3136" y2="3136" x1="960" />
        </branch>
        <instance x="816" y="3104" name="XLXI_74" orien="R0">
        </instance>
        <instance x="1392" y="2672" name="XLXI_75" orien="R0">
        </instance>
        <branch name="LOW(7:0)">
            <wire x2="1856" y1="2848" y2="2848" x1="320" />
            <wire x2="320" y1="2848" y2="3152" x1="320" />
            <wire x2="320" y1="3152" y2="3168" x1="320" />
            <wire x2="1856" y1="2576" y2="2576" x1="1776" />
            <wire x2="1856" y1="2576" y2="2848" x1="1856" />
        </branch>
        <branch name="LOW(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="440" y="3152" type="branch" />
            <wire x2="440" y1="3152" y2="3152" x1="416" />
            <wire x2="464" y1="3152" y2="3152" x1="440" />
            <wire x2="464" y1="3152" y2="3232" x1="464" />
            <wire x2="992" y1="3232" y2="3232" x1="464" />
        </branch>
        <bustap x2="416" y1="3152" y2="3152" x1="320" />
    </sheet>
</drawing>