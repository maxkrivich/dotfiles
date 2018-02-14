#!/bin/bash

echo "[ System setup ]"
echo "Note: PGP key creation will install rng-tools to create entropy."
echo ""
echo "Create SSH keys? (y/n): "
read create_ssh
echo "Create PGP keys? (y/n): "
read create_pgp

echo "Installing system packages ..."
# perform initial repo update
sudo apt-get -y update

# basic packages
sudo apt-get -qq install -y build-essential git-all zsh curl wget vim openssl gdb coreutils pkg-config make

# some dev libraries
sudo apt-get -qq install -y libxml2-dev libxslt1-dev dpkg-dev autoconf libreadline-dev libdnet-dev libffi-dev libpcap-dev libtool libmagic-dev libfreetype6-dev

# databases
sudo apt-get -qq install -y sqlite3 postgresl

# useful tools
sudo apt-get -qq install -y zip unzip upx unrar-free jq dnsutils tcpdump httpie nmap nc

# cli session management
sudo apt-get -qq install -y tmux byobu htop tig tree mc

# security and privacy
sudo apt-get -qq install -y tor torsocks tor-arm socat dnscrypt-proxy secure-delete dnssec-tools logcheck logcheck-database

# Vagrant install
sudo apt-get install -y virtualbox vagrant

if [[ $create_ssh == "y" || $create_ssh == "Y" || $create_ssh == "yes" ]]; then
    echo "**SSH Key Generation**"
    ssh-keygen -t rsa -b 4096
fi

if [[ $create_pgp == "y" || $create_pgp == "Y" || $create_pgp == "yes" ]]; then
    echo "**PGP Key Generation**"
    sudo apt-get -qq install -y rng-tools
    sudo rngd -r /dev/urandom
    gpg --gen-key
fi