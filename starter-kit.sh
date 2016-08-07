#!/bin/sh

sudo pacman -S \
	wget \
	tar \
	zsh \
	vim \
	rxvt-unicode \
	alsa-utils \
	feh \
	openssh sshfs \
	sddm \
	sxhkd \
	clementine \
	bspwm \
	xmobar \
	tmux \
	xorg-server xorg-server-utils xorg-xinit \
	chromium \
	gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gst-libav gvfs \
	network-manager-applet \
	trayer \
	deluge \
	screenfetch \
	lxappearance 

wget https://aur.archlinux.org/cgit/aur.git/snapshot/pacaur.tar.gz
tar -xvf pacaur.tar.gz
cd pacaur && makepkg -sri
cd .. && rm -rf pacaur.tar.gz pacaur

pacaur -S \
	sublime-text-dev \
	telegram-desktop \
	dmenu2 \
	wmutils-git
