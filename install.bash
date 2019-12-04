#!/usr/bin/env bash

sudo apt update
sudo apt upgrade -y

# Drivers
sudo ubuntu-drivers autoinstall

# Tools
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    gnupg-agent \
    software-properties-common \
    exfat-fuse \
    exfat-utils \
    gnome-tweak-tool \
    gnome-shell-extension-multi-monitors \
    numix-icon-theme \
    numix-gtk-theme \
    numix-blue-gtk-theme \
    keepassx \
    curl \
    snapd \
    vim \
    terminator \
    imagemagick \
    php-cli \
    php-xml \
    php-bcmath \
    php-curl \
    php-gd \
    php-imagick \
    php-mysql \
    composer \
    git \
    python3-pip \
    shutter \
    gparted

# Snap
sudo snap install phpstorm --classic
sudo snap install spotify --classic
sudo snap install slack --classic
sudo snap install aws-cli --classic
sudo snap install postman --classic

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn

# yarn packages
sudo yarn global add grunt-cli

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" > /etc/apt/sources.list.d/docker.list'
sudo apt update
sudo apt install -y docker-ce docker-compose
sudo groupadd docker
sudo usermod -aG docker $USER

# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install -y google-chrome-stable

# git
git config --global user.email "andrmoel@gmail.com"
git config --global user.name "Andreas Moeller"

# Clean up
sudo apt autoremove -y
sudo apt autoclean -y
