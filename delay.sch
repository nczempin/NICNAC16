<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="I" />
        <signal name="O" />
        <signal name="CLK" />
        <signal name="T" />
        <signal name="_T" />
        <signal name="ENABLE_NEXT" />
        <port polarity="Input" name="I" />
        <port polarity="Output" name="O" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="T" />
        <port polarity="Output" name="_T" />
        <port polarity="Input" name="ENABLE_NEXT" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <block symbolname="fd" name="XLXI_41">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="I" name="D" />
            <blockpin signalname="T" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_42">
            <blockpin signalname="T" name="I" />
            <blockpin signalname="_T" name="O" />
        </block>
        <block symbolname="and2" name="HURZINATOR">
            <blockpin signalname="T" name="I0" />
            <blockpin signalname="ENABLE_NEXT" name="I1" />
            <blockpin signalname="O" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="1504" name="XLXI_41" orien="R0" />
        <branch name="I">
            <wire x2="1056" y1="1248" y2="1248" x1="1024" />
        </branch>
        <instance x="1568" y="1440" name="XLXI_42" orien="R0" />
        <branch name="O">
            <wire x2="2080" y1="1200" y2="1200" x1="1872" />
            <wire x2="2080" y1="1200" y2="1232" x1="2080" />
            <wire x2="2096" y1="1232" y2="1232" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1408" name="_T" orien="R0" />
        <branch name="CLK">
            <wire x2="1056" y1="1376" y2="1376" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="1376" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1024" y="1248" name="I" orien="R180" />
        <branch name="T">
            <wire x2="1456" y1="1248" y2="1248" x1="1440" />
            <wire x2="1456" y1="1248" y2="1344" x1="1456" />
            <wire x2="1456" y1="1344" y2="1408" x1="1456" />
            <wire x2="1568" y1="1408" y2="1408" x1="1456" />
            <wire x2="1888" y1="1344" y2="1344" x1="1456" />
            <wire x2="1616" y1="1232" y2="1232" x1="1456" />
            <wire x2="1456" y1="1232" y2="1248" x1="1456" />
        </branch>
        <branch name="_T">
            <wire x2="1904" y1="1408" y2="1408" x1="1792" />
        </branch>
        <branch name="ENABLE_NEXT">
            <wire x2="1600" y1="1040" y2="1040" x1="1072" />
            <wire x2="1600" y1="1040" y2="1168" x1="1600" />
            <wire x2="1616" y1="1168" y2="1168" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="1888" y="1344" name="T" orien="R0" />
        <iomarker fontsize="28" x="2096" y="1232" name="O" orien="R0" />
        <instance x="1616" y="1296" name="HURZINATOR" orien="R0" />
        <iomarker fontsize="28" x="1072" y="1040" name="ENABLE_NEXT" orien="R180" />
    </sheet>
</drawing>