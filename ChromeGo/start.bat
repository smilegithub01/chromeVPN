@echo off
setlocal EnableDelayedExpansion 
cd %~dp0
echo ********************�ɹ�ѡ���VPN�����б�************************
for /f %%s in ('dir /b *.cmd') do ( 
echo %%s
)
echo ********************��������ѡ���VPN�������********************
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