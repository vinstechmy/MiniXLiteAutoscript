#!/bin/bash
#MiniXLiteAutoscript By Vinstechmy
red='\e[1;31m'
green='\e[0;32m'
purple='\e[0;35m'
orange='\e[0;33m'
NC='\e[0m'

# Github Profile Repo
Git_Profile="https://raw.githubusercontent.com/vinstechmy/MiniXLiteAutoscript/main"

echo -e "[ ${green}INFO${NC} ] Update Starting Now . . ."
echo ""
sleep 1
cd /usr/bin
rm menu
rm get-backres
rm backupmenu
rm nf

wget -O menu "${Git_Profile}/MENU/menu.sh" && chmod +x /usr/bin/menu
wget -O get-backres "${Git_Profile}/OTHERS/get-backres.sh" && chmod +x /usr/bin/get-backres
wget -O backupmenu "${Git_Profile}/MENU/backupmenu.sh" && chmod +x /usr/bin/backupmenu
wget -O nf "https://raw.githubusercontent.com/vinstechmy/MediaUnlockerTest/main/media.sh" && chmod +x /usr/bin/nf
cd

sleep 1
clear
echo -e "[${green}INFO${NC}] Successfully Install New Update File !"
sleep 1
echo -e "[${green}INFO${NC}] Please Restart All Services !"
sleep 2
clear
rm update.sh
# // script version check
serverV=$( curl -sS https://raw.githubusercontent.com/vinstechmy/MiniXLiteAutoscript/main/UPDATE/mini_xlite)
echo "$serverV" > /home/ver
echo ""
echo -e "[ ${green}INFO${NC} ] Successfully Up To Date!"
echo ""
read -n1 -r -p "Press any key to continue..." ; menu ;
