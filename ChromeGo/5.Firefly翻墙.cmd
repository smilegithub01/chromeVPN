%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
cls
@echo off

IF EXIST %~dp0Firefly\firefly.exe (
echo ""
) ELSE (
		echo 正在下载firefly，请稍候，部分杀毒软件可能有误报...
    start /wait "" "%~dp0Firefly\downFirefly.bat"
)

start /wait "" "%~dp0Firefly\prestart.exe"
start "" "%~dp0Firefly\firefly.exe"
echo 正在启动，请稍候...
start /wait "" "%~dp0waiting.vbs"
IF EXIST %~dp0Browser\chrome.exe (
    start %~dp0Browser\chrome.exe  --proxy-pac-url=%~dp0Firefly\firefly.pac https://www.google.com
) ELSE (
    start chrome.exe  --proxy-pac-url=%~dp0Firefly\firefly.pac https://www.google.com
)
