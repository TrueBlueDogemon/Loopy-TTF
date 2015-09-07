#!/bin/bash
cd ..

# Get the user input:
read -p "Username: " ttcUsername
read -s -p "Password: " ttcPassword
echo
read -p "Gameserver (DEFAULT: 167.114.28.238): " TTC_GAMESERVER
TTI_GAMESERVER=${TTC_GAMESERVER:-"167.114.28.238"}

# Export the environment variables:
export ttiUsername=$ttcUsername
export ttiPassword=$ttcPassword
export TTI_PLAYCOOKIE=$ttcUsername
export TTI_GAMESERVER=$TTC_GAMESERVER

echo "==============================="
echo "Starting Toontown Challenge"
echo "Username: $ttcUsername"
echo "Gameserver: $TTC_GAMESERVER"
echo "==============================="

/usr/bin/python2 -m toontown.toonbase.ClientStartRemoteDB
