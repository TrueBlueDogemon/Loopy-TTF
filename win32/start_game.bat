@echo off

title Toontown Challenge Game Client

cd ..

set /P ttcUsername="Username: "
set /P TTC_GAMESERVER="Gameserver (DEFAULT: 167.114.28.238): " || ^
set TTC_GAMESERVER=167.114.28.238

set ttcPassword=password
set TTC_PLAYCOOKIE=%ttcUsername%

echo ===============================
echo Starting Toontown Challenge Game Client...
echo Username: %ttcUsername%
echo Gameserver: %TTC_GAMESERVER%
echo ===============================

C:\Panda3D-1.9.0\python\ppython.exe -m toontown.toonbase.ClientStart
pause
