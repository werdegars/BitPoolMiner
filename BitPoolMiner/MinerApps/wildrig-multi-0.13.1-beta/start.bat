@echo off

:loop
wildrig.exe --algo algo --opencl-launch 18x0 --url pool:port --user wallet --pass password
if ERRORLEVEL 1000 goto custom
timeout /t 5
goto loop

:custom
echo Custom command here
timeout /t 5
goto loop