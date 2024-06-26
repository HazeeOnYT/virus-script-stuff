@echo off
:msg
echo Set WshShell = WScript.CreateObject("WScript.Shell") > temp.vbs
echo WshShell.Popup "Hello World!", 0, "Message", 64 >> temp.vbs
cscript //nologo temp.vbs
del temp.vbs
goto :msg
