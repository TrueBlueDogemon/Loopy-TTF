#!/bin/sh
cd ..

# Get the user input:
read -p "Username: " ttcUsername

# Export the environment variables:
export ttcUsername=$ttcUsername
export ttcPassword="password"
export TTC_PLAYCOOKIE=$ttcUsername
export TTC_GAMESERVER="127.0.0.1"

echo "==============================="
echo "Starting Toontown Challenge"
echo "Username: $ttcUsername"
echo "Gameserver: $TTC_GAMESERVER"
echo "==============================="

/usr/bin/python2 -m toontown.toonbase.ClientStart
