#!/bin/sh

# Initial setup
install_packages=false
help="This is a custom deploy script for initial debian setup.\n"
help="$help Options:\n"
help="$help -i: install packages (disabled by default)\n"
help="$help -s: change shell to \$arg (disabled by default)\n"

# Parse params
OPTIND=1
while getopts ":h?is:" opt; do
	case $opt in
		h)
			echo -e $help
			exit 1
			;;
		i)
			install_packages=true
			;;
		s)	
			shell=$OPTARG
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

if ! [ -z ${shell+x} ]; then
	which_shell=`which $shell`
	[ -z $which_shell ] && echo "No such shell: $shell" || chsh -s $which_shell
fi

ln    -vfs ${PWD}/shell/.zshrc              ~/.zshrc
ln    -vfs ${PWD}/shell/.profile            ~/.profile

mkdir -vp  ~/.vim/colors/
ln    -vfs ${PWD}/vim/.vimrc                ~/.vimrc
ln    -vfs ${PWD}/vim/colors/*              ~/.vim/colors/

sudo mkdir -vp  /root/.vim/colors
sudo ln    -vfs ${PWD}/vim/.vimrc           /root/.vimrc
sudo ln    -vfs ${PWD}/vim/colors/*         /root/.vim/colors/

chmod +x   ${PWD}/scripts/*
for script in ${PWD}/scripts/*; do
    sudo ln -vfs "$script" /bin/${script##*/}
    sudo chown -v `whoami` /bin/${script##*/}
done

sudo ln    -vfs ${PWD}/apt/apt.conf.d/*     /etc/apt/apt.conf.d/

sudo ln -vfs ${PWD}/polkit/* /etc/polkit-1/localauthority/50-local.d/
sudo systemctl restart polkitd

sudo systemctl enable NetworkManager
