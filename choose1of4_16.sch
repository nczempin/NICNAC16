<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(15:0)" />
        <signal name="XLXN_2(15:0)" />
        <signal name="XLXN_3(15:0)" />
        <signal name="XLXN_4(15:0)" />
        <signal name="XLXN_6(15:0)" />
        <signal name="XLXN_7(1:0)" />
        <port polarity="Input" name="XLXN_1(15:0)" />
        <port polarity="Input" name="XLXN_2(15:0)" />
        <port polarity="Input" name="XLXN_3(15:0)" />
        <port polarity="Input" name="XLXN_4(15:0)" />
        <port polarity="Output" name="XLXN_6(15:0)" />
        <blockdef name="mux16_4">
            <timestamp>2014-9-23T20:58:2</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <block symbolname="mux16_4" name="PC_MUX">
            <blockpin signalname="XLXN_1(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_2(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_3(15:0)" name="C(15:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_6(15:0)" name="OUT(15:0)" />
            <blockpin signalname="XLXN_7(1:0)" name="SEL(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1392" y="1392" name="PC_MUX" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="XLXN_1(15:0)">
            <wire x2="1392" y1="1104" y2="1104" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1104" name="XLXN_1(15:0)" orien="R180" />
        <branch name="XLXN_2(15:0)">
            <wire x2="1392" y1="1168" y2="1168" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1168" name="XLXN_2(15:0)" orien="R180" />
        <branch name="XLXN_3(15:0)">
            <wire x2="1392" y1="1232" y2="1232" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1232" name="XLXN_3(15:0)" orien="R180" />
        <branch name="XLXN_4(15:0)">
            <wire x2="1392" y1="1296" y2="1296" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1296" name="XLXN_4(15:0)" orien="R180" />
        <branch name="XLXN_6(15:0)">
            <wire x2="1808" y1="1104" y2="1104" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1808" y="1104" name="XLXN_6(15:0)" orien="R0" />
        <branch name="XLXN_7(1:0)">
            <wire x2="1392" y1="1424" y2="1424" x1="1056" />
            <wire x2="1056" y1="1424" y2="1600" x1="1056" />
        </branch>
    </sheet>
</drawing>