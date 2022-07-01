#! /usr/bin/bash

#Make a temporary directory
sudo mkdir /Library/temp

#Download after-restart bash script and put it in temporary directory
sudo curl -o /Library/temp/AfterBoot.sh https://raw.githubusercontent.com/NindroidA/Mac-Automation/main/Network%20Interface%20Reboot/afterboot.sh

#Download custom plist and put it in LaunchDaemons directory
sudo curl -o /Library/LaunchDaemons/com.nindroid.NIR.plist https://raw.githubusercontent.com/NindroidA/Mac-Automation/main/Network%20Interface%20Reboot/reboot.plist

#Give plist and bash files correct permissions
sudo chown root:wheel /Library/LaunchDaemons/com.nindroid.NIR.plist
sudo chown root:wheel /Library/temp/AfterBoot.sh

#Get the plist to launch after reboot
sudo launchctl bootstrap system /Library/LaunchDaemons/com.nindroid.NIR.plist

#Disable the Network Interface
sudo networksetup -setnetworkserviceenabled Wi-Fi off

#Reboot
sudo reboot
