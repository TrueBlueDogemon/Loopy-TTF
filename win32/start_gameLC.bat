@echo off

title Toontown Challenge Game Client

cd ..

set /P ttcUsername="Username: "
set /P TTC_GAMESERVER="Gameserver (DEFAULT: littletooncat.es.vc): " || ^
set TTC_GAMESERVER=littletooncat.es.vc

set ttcPassword=password
set TTC_PLAYCOOKIE=%ttcUsername%

echo ===============================
echo Starting Toontown Challenge Game Client...
echo Username: %ttcUsername%
echo Gameserver: %TTC_GAMESERVER%
echo ===============================

C:\Panda3D-1.9.0\python\ppython.exe -m toontown.toonbase.ClientStart
pause
