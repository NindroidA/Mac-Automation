#! /usr/bin/bash

#Enable the Wi-Fi Interface
networksetup -setnetworkserviceenabled Wi-Fi on

#Bootout the plist
launchctl bootout system /Library/LaunchDaemons/com.nindroid.NIR.plist

#Remove the plist
rm /Library/LaunchDaemons/com.nindroid.NIR.plist

#Remove the temporary folder
rm -r /Library/temp
