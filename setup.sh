#!/bin/sh
#Ryan McVicker
# things to do : setup vimrc, do git config , store git credentials permanantly 
# clone Journal repo  
#sudo all files in ./files directory 
sudo chmod +x ./files
#create data directory just to hold all files and data that I might want to backup everytime I work 
mkdir ~/data

cat files/vimrc > ~/.vimrc
git config --global user.email "ryanmcvicker12@gmail.com"
git config --global user.name "tvhead"
git config --global credential.helper store

git clone https://github.com/ryanmcvicker12/Journal ~/data

#install expressvpn and use activation code (dont remember if they expire )

sudo dpkg -i files/expressvpn_3.18.1.0-1_amd64.deb 

expressvpn activate < ENP8WFC3JJ44TZYJMTMMIYQ  #dont know if this will work 
#update bashrc to one in ./files
cat ./files/bashrc > ~/.bashrc
#dont even really need to cat the file , could just source it since the machine doesn't save any data after shutdown 
#install pwngdb 
git clone https://github.com/pwndbg/pwndbg ~/data
cd ~/data/pwndbg
./setup.sh

