#!/bin/sh

chsh  -v   `which zsh`
ln    -vfs ${PWD}/shell/.zshrc                ~/.zshrc
ln    -vfs ${PWD}/shell/.profile              ~/.profile

ln    -vfs ${PWD}/tmux/.tmux.conf           ~/.tmux.conf

mkdir -vp  ~/.vim/colors/
ln    -vfs ${PWD}/vim/.vimrc                ~/.vimrc
ln    -vfs ${PWD}/vim/wombat256mod.vim      ~/.vim/colors/wombat256mod.vim

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

mkdir -v   ~/.config/sublime-text-3

ln    -vfs ${PWD}/subl3/Installed\ Packages ~/.config/sublime-text-3/

mkdir -v   ~/bin
chmod +x   ${PWD}/scripts/*
ln    -vfs ${PWD}/scripts/*				   ~/bin/

sudo mkdir -pv  /usr/share/sddm/themes
sudo ln    -vfs ${PWD}/sddm/sddm.conf       /etc/sddm.conf
sudo cp    -rfv ${PWD}/sddm/themes/*        /usr/share/sddm/themes/
