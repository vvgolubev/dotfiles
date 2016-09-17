#!/bin/sh

# Initial setup
install_packages=false
help="This is a custom deploy script for initial archlinux setup.\n"
help="$help Options:\n"
help="$help -i: install packages (disabled by default)\n"

# Parse params
OPTIND=1
while getopts ":h?i" opt; do
	case $opt in
		h)
			echo -e $help
			exit 1
			;;
		i)
			install_packages=true
			;;
		\?)
			echo "Invalid option: -$OPTARG"
			echo -e $help
			exit 1
			;;
	esac
done

# Action!
if $install_packages; then
	chmod +x ${PWD}/starter-kit.sh
	${PWD}/starter-kit.sh
fi

chsh  -s   `which zsh`
ln    -vfs ${PWD}/shell/.zshrc              ~/.zshrc
ln    -vfs ${PWD}/shell/.profile            ~/.profile

ln    -vfs ${PWD}/tmux/.tmux.conf           ~/.tmux.conf

mkdir -vp  ~/.vim/colors/
ln    -vfs ${PWD}/vim/.vimrc                ~/.vimrc
ln    -vfs ${PWD}/vim/colors/*              ~/.vim/colors/*

sudo mkdir -vp  /usr/share/vim/vim74/colors
sudo ln    -vfs ${PWD}/vim/.vimrc           /etc/vimrc
sudo ln    -vfs ${PWD}/vim/colors/*         /usr/share/vim/vim74/colors/*

mkdir -v  ~/.xmonad/
ln    -vfs ${PWD}/xmonad/xmonad.hs          ~/.xmonad/xmonad.hs
ln    -vfs ${PWD}/xmonad/.xmobarrc          ~/.xmobarrc

mkdir -v   ~/.config/

ln    -vfs ${PWD}/wmfs                      ~/.config/

ln    -vfs ${PWD}/bspwm                     ~/.config/
ln    -vfs ${PWD}/sxhkd                     ~/.config/

ln    -vfs ${PWD}/look/.icons               ~/.icons
ln    -vfs ${PWD}/look/.themes              ~/.themes
ln    -vfs ${PWD}/look/.gtkrc-2.0           ~/.gtkrc-2.0
ln    -vfs ${PWD}/look/.Xdefaults           ~/.Xdefaults

ln    -vfs ${PWD}/look/Trolltech.conf       ~/.config/Trolltech.conf

mkdir -v   ~/bin
chmod +x   ${PWD}/scripts/*
ln    -vfs ${PWD}/scripts/*				    ~/bin/

sudo mkdir -pv  /usr/share/sddm/themes
sudo ln    -vfs ${PWD}/sddm/sddm.conf       /etc/sddm.conf
sudo cp    -rfv ${PWD}/sddm/themes/*        /usr/share/sddm/themes/

mkdir -v ~/scrots
