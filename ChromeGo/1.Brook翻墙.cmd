@echo off
CD /D "%~dp0"
start "" "%~dp0Brook\BrookTools.exe"
echo �ȴ���ǽ������������Ժ�...
start /wait "" "%~dp0waiting.vbs"
IF EXIST %~dp0Browser\chrome.exe (
    start %~dp0Browser\chrome.exe  --proxy-server="socks5://127.0.0.1:2080" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1" https://www.google.com
) ELSE (
    start chrome.exe   --proxy-server="socks5://127.0.0.1:2080" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1"  https://www.google.com
)