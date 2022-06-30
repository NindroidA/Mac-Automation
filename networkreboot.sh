#! /usr/bin/bash

#Enable Wi-Fi Interface
sudo networksetup -setnetworkserviceenabled Wi-Fi on

#Remove Custom plist
sudo rm /Library/LaunchAgents/com.andrew.networkreboot.plist

#Remove After Reboot Script
sudo rm ./afterboot.sh
