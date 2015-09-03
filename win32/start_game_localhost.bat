@echo off

title Toontown Challenge Client

cd ..

set /P ttiUsername="Username: "
set ttiPassword=password
set TTI_PLAYCOOKIE=%ttiUsername%
set TTI_GAMESERVER=127.0.0.1

echo Starting Toontown Challenge...

C:\Panda3D-1.9.0\python\ppython.exe -m toontown.toonbase.ClientStart

pause