@echo off

title Toontown Challenge Client

cd ..

set /P ttcUsername="Username: "
set ttcPassword=password
set TTC_PLAYCOOKIE=%ttcUsername%
set TTC_GAMESERVER=127.0.0.1

echo Hello %ttcUsername%! We'll get the client started for you. 
PING -n 5 127.0.0.1>nul
echo Starting Toontown Challenge...

C:\Panda3D-1.9.0\python\ppython.exe -m toontown.toonbase.ClientStart

pause