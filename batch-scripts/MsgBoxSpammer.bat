@echo off
setlocal enabledelayedexpansion

:msg
set /a x=%random% %% 800
set /a y=%random% %% 600

echo Set WshShell = WScript.CreateObject("WScript.Shell") > temp.vbs
echo x = %x% >> temp.vbs
echo y = %y% >> temp.vbs
echo Set objShell = CreateObject("Shell.Application") >> temp.vbs
echo objShell.Popup "Hello World!", 0, "Message", 64 >> temp.vbs
echo WshShell.Popup "Hello World!", 0, "Message", 64, x, y >> temp.vbs

cscript //nologo temp.vbs
del temp.vbs
goto :msg
