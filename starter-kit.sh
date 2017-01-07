#!/bin/sh

# Just add fira to stretch repos, debian!
install_fira() {
    FIRA_VERSION=4.202

    wget https://github.com/mozilla/Fira/archive/${FIRA_VERSION}.tar.gz
    tar -xvzf ${FIRA_VERSION}.tar.gz
    sudo mkdir -p /usr/share/fonts/opentype/FiraSans
    sudo mkdir -p /usr/share/fonts/truetype/FiraSans
    sudo cp -rvf Fira-${FIRA_VERSION}/otf/*.otf /usr/share/fonts/opentype/FiraSans/
    sudo cp -rvf Fira-${FIRA_VERSION}/ttf/*.ttf /usr/share/fonts/truetype/FiraSans/

    rm -rvf ${FIRA_VERSION}.tar.gz Fira-${FIRA_VERSION}
}

sudo mv -vf  /etc/apt/sources.list /etc/apt/sources.list~
sudo ln -vfs ${PWD}/apt/sources.list /etc/apt/sources.list

sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install `cat paclist` --force-yes

PREV=$PWD
cd ~/
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd $PREV

install_fira
