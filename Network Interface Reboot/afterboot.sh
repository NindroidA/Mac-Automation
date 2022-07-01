#! /usr/bin/bash

#Enable the Wi-Fi Interface
sudo networksetup -setnetworkserviceenabled Wi-Fi on

#Bootout the plist
sudo launchctl bootout system /Library/LaunchDaemons/com.nindroid.NIR.plist

#Remove the plist
sudo rm /Library/LaunchDaemons/com.nindroid.NIR.plist

#Remove the temporary folder
sudo rm -r /Library/temp
