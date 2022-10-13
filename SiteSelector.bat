@echo off
set /p "url=Enter Url: "
ECHO 1. Chrome
ECHO 2. Firefox
set /p "choice=Enter browser option: "

if %choice%==1 start chrome %url%
if %choice%==2 start firefox.exe %url%