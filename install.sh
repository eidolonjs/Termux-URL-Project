#!/bin/bash
#Clean Install
rm -f "/data/data/com.termux/files/home/bin/termux-url-opener"
mkdir /data/data/com.termux/files/home/bin
#Installing required packages
pkg update -y && pkg install wget -y && pkg install python -y && pkg install ffmpeg -y
yes | pip install youtube-dl && yes | pip install spotdl && yes | pip install youtube-dlc && yes | pip install you-get

#Installing the script
wget -P "/data/data/com.termux/files/home/bin/" --no-check-certificate "https://raw.githubusercontent.com/eidolonjs/Termux-URL-Project/main/termux-url-opener" 
chmod +x "/data/data/com.termux/files/home/bin/termux-url-opener"
termux-setup-storage
clear