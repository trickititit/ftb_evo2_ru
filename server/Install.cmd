@echo off
chcp 65001 >nul
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Install.ps1" -Action Install %*
if errorlevel 1 echo Установка не завершена. Прочитайте сообщение выше.
pause
