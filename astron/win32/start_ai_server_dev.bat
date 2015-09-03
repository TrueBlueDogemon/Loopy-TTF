@echo off

title Toontown Challenge District Server

cd ../..

set MAX_CHANNELS=999999
set STATESERVER=4002
set ASTRON_IP=127.0.0.1:7100
set EVENTLOGGER_IP=127.0.0.1:7198
set DISTRICT_NAME=Challenge
set BASE_CHANNEL=401000000

echo District - %DISTRICT_NAME%

echo ===============================
echo Starting Toontown Dimensions District server...

:main
C:\Panda3D-1.9.0\python\ppython.exe -m toontown.ai.ServiceStart --base-channel %BASE_CHANNEL% ^
               --max-channels %MAX_CHANNELS% --stateserver %STATESERVER% ^
               --astron-ip %ASTRON_IP% --eventlogger-ip %EVENTLOGGER_IP% ^
               --district-name "%DISTRICT_NAME%"
goto main
