#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt-get install bc

# Agregamos accesos directos a carpetas de windows
ln -s /mnt/c/Users/hecto winhome
ln -s /mnt/c/Users/hecto/OneDrive/Documentos documents
ln -s /mnt/c/Users/hecto/Develop develop
ln -s /mnt/c/Users/hecto/OneDrive oneDrive

# Instalamos zsh
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#descargamos el tema desde nuestro repositorio
curl -o ~/.oh-my-zsh/themes/quidproquo.szh-themes  https://raw.githubusercontent.com/hectorslqm/configureWSL/main/quidproquo.zsh-theme

# Modificamos el archivo .zshrc para que implemente nuestro tema
sed -i 's/ZSH_THEME="robbyrussell"/#ZSH_THEME="robbyrussell"\nZSH_THEME="quidproquo"/g' ~/.zshrc


# Reiniciamos la terminal
exec zsh -l
