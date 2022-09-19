#!/bin/bash

PKG_MGR=yum

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo $PKG_MGR install -y $1 > /dev/null 2>&1
  else
    echo "Already installed: ${1}"
  fi
}

# Create repo for RPM Fusion - A community maintained repo not managed by Fedora
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# Install Visual Studio Code repo and key for easier updates
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\n\
name=Visual Studio Code\n\
baseurl=https://packages.microsoft.com/yumrepos/vscode\n\
enabled=1\ngpgcheck=1\n\
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" \
> /etc/yum.repos.d/vscode.repo'

# Basics
install chromium-browser
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
install vlc
install code


# Updates
echo -e "\n" && sudo $PKG_MGR update
unset PKG_MGR