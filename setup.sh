#!/bin/sh
#Ryan McVicker
# things to do : setup vimrc, do git config , store git credentials permanantly 
# clone Journal repo  
#sudo all files in ./files directory 
sudo chmod +x ./files
#create data directory just to hold all files and data that I might want to backup everytime I work 
if [ -d "data"]; then
	mkdir ~/data
fi
cat files/vimrc > ~/.vimrc
git config --global user.email "ryanmcvicker12@gmail.com"
git config --global user.name "tvhead"
git config --global credential.helper store

if [ ! -f ~/data/Journal ]; then
	git clone https://github.com/ryanmcvicker12/Journal ~/data
fi
#update bashrc to one in ./files
cat ./files/bashrc > ~/.bashrc
#dont even really need to cat the file , could just source it since the machine doesn't save any data after shutdown 
#install pwngdb 
if [ ! -f ~/data/pwndbg ]; then
	git clone https://github.com/pwndbg/pwndbg ~/data
fi

cd ~/data/pwndbg
./setup.sh

