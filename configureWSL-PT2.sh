#!/bin/bash

sudo su

# Instalamos git
apt-get install git -y
git config --global user.name hectorslqm
git config --global user.email hectorslqm@gmail.com

# Instalamos Python
apt-get install python -y
apt-get install python3 -y
apt-get install python3-pip -y

# Instalamos Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.nvm/nvm.sh
command -v nvm
nvm install --lts
nvm install node
node --version
nvm ls-remote

# Reiniciamos la terminal
exec zsh -l
