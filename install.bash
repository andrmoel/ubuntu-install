#!/usr/bin/env bash

cd ~

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
    thunderbird \
    filezilla \
    curl \
    snapd \
    vim \
    rar \
    terminator \
    imagemagick \
    php-cli \
    php-xml \
    php-bcmath \
    php-curl \
    php-gd \
    php-imagick \
    php-mysql \
    php-mbstring \
    git \
    python3-pip \
    gparted \
    redis \
    gimp \
    stellarium \
    libreoffice \
    libcanberra-gtk-module \
    android-sdk

# Snap
sudo snap install phpstorm --classic
sudo snap install spotify --classic
sudo snap install shutter --classic
sudo snap install slack --classic
sudo snap install aws-cli --classic
sudo snap install terraform --classic
sudo snap install postman --classic
sudo snap install postman --classic
sudo snap install mysql-workbench-community
sudo snap connect mysql-workbench-community:password-manager-service :password-manager-service
sudo snap install teams-for-linux
sudo snap connect teams-for-linux:camera core:camera
sudo snap install zoom-client
sudo snap install android-studio --classic
sudo snap install jdownloader2

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn

# yarn packages
sudo yarn global add grunt-cli
sudo yarn global add expo-cli

# increase numbers of watchers: https://stackoverflow.com/questions/26708205/webpack-watch-isnt-compiling-changed-files
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

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

# Composer
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Symfony
wget https://get.symfony.com/cli/installer -O - | bash
sudo mv $HOME/.symfony/bin/symfony /usr/local/bin/symfony

# git
git config --global user.email "andrmoel@gmail.com"
git config --global user.name "Andreas Moeller"

# Clean up
sudo apt autoremove -y
sudo apt autoclean -y
