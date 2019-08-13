@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Tue Aug 13 20:54:22 +0200 2019
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim testbench_system_timing_behav -key {Behavioral:sim_1:Functional:testbench_system_timing} -tclbatch testbench_system_timing.tcl -log simulate.log"
call xsim  testbench_system_timing_behav -key {Behavioral:sim_1:Functional:testbench_system_timing} -tclbatch testbench_system_timing.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
