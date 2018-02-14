#!/bin/bash

# Require sudo
sudo -v
# sudo keepalive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Ubuntu Bootstrap (https://github.com/maxkrivich/dotfiles)"
echo "***"
echo " "

sudo apt-get -qq install -y git
git clone https://www.github.com/maxkrivich/dotfiles
cd dotfiles

clear

work=$HOME/dotfiles-tmp
repo=`pwd`

# install system packages and settings
source $repo/core/system.sh

# install oh-my-zsh and dotfile
source $repo/core/omz.sh

# install python and additional libraries
source $repo/core/python.sh

# setup Github account
source $repo/core/gitsetup.sh

# setup Docker
source $repo/core/docker.sh

# setup JetBrains ToolBox
source $repo/core/jetbrains.sh

# setup Golang
source $repo/core/golang.sh