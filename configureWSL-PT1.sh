#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt-get install bc

# Instalamos zsh
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Agregamos accesos directos a carpetas de windows
ln -s /mnt/c/Users/hecto winhome
ln -s /mnt/c/Users/hecto/OneDrive/Documentos documents
ln -s /mnt/c/Users/hecto/Develop develop
ln -s /mnt/c/Users/hecto/OneDrive oneDrive
cp oneDrive/QuidProQuo/quidproquo.zsh-theme .oh-my-zsh/themes

# Modificamos el archivo .zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="quidproquo"/' .zshrc

# Reiniciamos la terminal
exec zsh -l
