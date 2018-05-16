#!/bin/bash

#Install flags


#Setup color printing
red=`tput setaf 1`
green=`tput setaf 2`
cyan=`tput setaf 6`
magenta=`tput setaf 5`
reset=`tput sgr0`

# Instal absolute necessities.
echo -e "${cyan}-----------------INSTALLING BASIC SOFTWARE-------------------${reset}"

echo -e "\n${green}INSTALLING VIM ...${reset}"
sudo apt install vim -y

echo -e "\n${green}INSTALLING GIT...${reset}"
sudo apt install git -y

echo -e "\n${green}INSTALLING WEECHAT${reset}"
sudo apt install weechat-curses -y


# Instal media software
echo -e "${cyan}-----------------INSTALLING MEDIA SOFTWARE-------------------${reset}"

echo -e "\n${green}INSTALLING SPOTIFY${reset}"
sudo snap install spotify

# Install development software
echo -e "${cyan}-----------------INSTALLING DEVELOPMENT SOFTWARE-------------------${reset}"

echo -e "\n${green}INSTALLING VSCODE${reset}"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code -y
