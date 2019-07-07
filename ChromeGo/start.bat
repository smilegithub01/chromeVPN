@echo off
setlocal EnableDelayedExpansion 
cd %~dp0
echo ********************可供选择的VPN程序列表************************
for /f %%s in ('dir /b *.cmd') do ( 
echo %%s
)
echo ********************请输入您选择的VPN程序序号********************
set n=0
set /p ID=
for /f %%s in ('dir /b *.cmd') do ( 
if "%id%"=="!n!" (
TASKKILL /F /IM chrome.exe
call "%%s"
)
set /a n=!n!+1
)
pause        
exit 