#!/bin/sh

sudo mv -vf /etc/apt/sources.list /etc/apt/sources.list~
sudo cp -vf apt/sources.list /etc/apt/sources.list

sudo apt-get install `cat paclist` --assume-yes

PREV=$PWD
cd ~/
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd $PREV
