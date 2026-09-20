@echo off
cd /d "%~dp0"
echo 呪欲の門 画像サーバー起動中 (http://localhost:8765)  このウィンドウは閉じないでください
python -m http.server 8765
