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
# Instalamos  ODBC SQL SERVER 18 ODBC
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
#exit
sudo apt-get update
sudo apt-get install -y msodbcsql18

# Reiniciamos la terminal
exec zsh -l
