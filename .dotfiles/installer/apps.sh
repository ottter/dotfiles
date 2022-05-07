#!/bin/bash

PKG_MGR=yum

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    sudo $PKG_MGR install -y $1 > /dev/null 2>&1
    echo "Installing: ${1}..."
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install curl
install file
install git
install htop
install nmap
install openvpn
install tmux
install tree
install vim

# Useful
install ansible
install hugo


# Updates
echo -e "\n" && sudo $PKG_MGR update
unset PKG_MGR