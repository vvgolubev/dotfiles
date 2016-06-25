#!/bin/sh

chsh  -v  `which zsh`
ln    -vs ${PWD}/zsh/.zshrc                ~/.zshrc

ln    -vs ${PWD}/tmux/.tmux.conf           ~/.tmux.conf

mkdir -vp ~/.vim/colors/
ln    -vs ${PWD}/vim/.vimrc                ~/.vimrc
ln    -vs ${PWD}/vim/wombat256mod.vim      ~/.vim/colors/wombat256mod.vim

mkdir -v  ~/.xmonad/
ln    -vs ${PWD}/xmonad/xmonad.hs          ~/.xmonad/xmonad.hs
ln    -vs ${PWD}/xmonad/.xmobarrc          ~/.xmobarrc

mkdir -v  ~/.config/

ln    -vs ${PWD}/wmfs                      ~/.config/

ln    -vs ${PWD}/bspwm                     ~/.config/
ln    -vs ${PWD}/sxhkd                     ~/.config/

ln    -vs ${PWD}/look/.icons               ~/.icons
ln    -vs ${PWD}/look/.themes              ~/.themes
ln    -vs ${PWD}/look/.gtkrc-2.0           ~/.gtkrc-2.0
ln    -vs ${PWD}/look/.Xdefaults           ~/.Xdefaults

ln    -vs ${PWD}/look/Trolltech.conf       ~/.config/Trolltech.conf

mkdir -v  ~/.config/sublime-text-3

ln    -vs ${PWD}/subl3/Installed\ Packages ~/.config/sublime-text-3/

mkdir -v  ~/bin
chmod +x  ${PWD}/scripts/*
ln    -vs ${PWD}/scripts/*				   ~/bin/

sudo mkdir -pv /usr/share/sddm/themes
sudo ln    -vs ${PWD}/sddm/sddm.conf       /etc/sddm.conf
sudo cp    -rv ${PWD}/sddm/themes/*        /usr/share/sddm/themes/
