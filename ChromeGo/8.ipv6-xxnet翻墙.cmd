%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
cls
@echo off
SET PYTHONPATH=
SET PYTHONHOME=
"%~dp0ipv6-Agent1\start-ipv6.vbs" console

echo �������������Ժ�...
echo �����һ������������һ��ȴ�ɨ��ip...
start /wait "" "%~dp0waiting.vbs"
IF EXIST %~dp0Browser\chrome.exe (
    start %~dp0Browser\chrome.exe - --proxy-server=127.0.0.1:8086 https://www.google.com
) ELSE (
    start chrome.exe  --proxy-server=127.0.0.1:8086 https://www.google.com
)