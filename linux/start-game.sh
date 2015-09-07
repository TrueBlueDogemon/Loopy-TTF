#!/bin/sh
cd ..

# Get the user input:
read -p "Username: " ttcUsername
read -p "Gameserver (DEFAULT:  167.114.28.238): " TTC_GAMESERVER
TTI_GAMESERVER=${TTI_GAMESERVER:-"167.114.28.238"}

# Export the environment variables:
export ttiUsername=$ttcUsername
export ttiPassword="password"
export TTI_PLAYCOOKIE=$ttcUsername
export TTI_GAMESERVER=$TTC_GAMESERVER

echo "==============================="
echo "Starting Toontown Challenge"
echo "Username: $ttcUsername"
echo "Gameserver: $TTC_GAMESERVER"
echo "==============================="

/usr/bin/python2 -m toontown.toonbase.ClientStart
