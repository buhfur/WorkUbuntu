#!/bin/sh
#Ryan McVicker
# things to do : setup vimrc, do git config , store git credentials permanantly 
# clone Journal repo  
#sudo all files in ./files directory 
sudo chmod +x ./files
#create stuff directory just to hold all files and data that I might want to backup everytime I work 
if [ ! -d "stuff"]; then
	mkdir ~/stuff
fi
cat files/vimrc > ~/.vimrc
git config --global user.email "ryanmcvicker12@gmail.com"
git config --global user.name "tvhead"
git config --global credential.helper store

if [ ! -d ~/stuff/Journal ]; then
	git clone https://github.com/ryanmcvicker12/Journal ~/stuff
fi
#update bashrc to one in ./files
cat ./files/bashrc > ~/.bashrc
#dont even really need to cat the file , could just source it since the machine doesn't save any stuff after shutdown 
#install pwngdb 
if [ ! -d ~/stuff/pwndbg ]; then
	git clone https://github.com/pwndbg/pwndbg 
	cd pwndbg
	./setup.sh
fi


