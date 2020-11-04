@echo off
cd %~dp0

if [%1] == [vivado] goto vivado

goto eof
@echo on

:vivado
mkdir vivado
cd vivado
vivado -source ../scripts/ams.tcl
goto eof

:eof
@echo off
cmd /k
