@echo off
chcp 65001 > nul
echo EdgeMaster を起動しています...

cd /d "%~dp0."

start /B python -m http.server 8765

timeout /t 2 /nobreak > nul

rundll32 url.dll,FileProtocolHandler http://localhost:8765/EdgeMaster.html

echo 起動完了。このウィンドウは閉じても大丈夫です。
timeout /t 5 /nobreak > nul
