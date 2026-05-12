echo off

prompt $g

REM "C:\WINDOWS\system32\cmd.exe" /k "make -f Makefile sim"
"C:\WINDOWS\system32\cmd.exe" /k "vsim -c -do sim.do"
