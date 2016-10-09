#!/bin/sh

install_from_aur() {
	wget https://aur.archlinux.org/cgit/aur.git/snapshot/$1.tar.gz
	tar -xvf $1.tar.gz
	cd $1 && makepkg -sri --skippgpcheck --noconfirm
	cd .. && rm -rf $1.tar.gz $1
}

install_from_aur cower
install_from_aur pacaur

pacaur -S `cat paclist` --noconfirm

PREV=$PWD
cd ~/
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd $PREV
