@echo off

title Toontown Challenge UberDOG server

cd ../..

set MAX_CHANNELS=999999
set STATESERVER=4002
set ASTRON_IP=127.0.0.1:7100
set EVENTLOGGER_IP=127.0.0.1:7198
set BASE_CHANNEL=1000000

echo ===============================
echo Starting Toontown Challenge UberDOG server...

:main
C:\Panda3D-1.9.0\python\ppython.exe -m toontown.uberdog.ServiceStart --base-channel %BASE_CHANNEL% ^
               --max-channels %MAX_CHANNELS% --stateserver %STATESERVER% ^
               --astron-ip %ASTRON_IP% --eventlogger-ip %EVENTLOGGER_IP%
goto main
