#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt-get install bc

# SHORTCUTS
ln -s /mnt/c/Users/hecto winhome
ln -s /mnt/c/Users/hecto/OneDrive/Documentos documents
ln -s /mnt/c/Users/hecto/Develop develop
ln -s /mnt/c/Users/hecto/OneDrive oneDrive

# ZSH INSTALL
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Download my zsh themes
curl -o ~/.oh-my-zsh/themes/quidproquo.szh-theme  https://raw.githubusercontent.com/hectorslqm/configureWSL/master/quidproquo.zsh-theme
curl -o ~/.oh-my-zsh/themes/HSLQM.szh-theme  https://raw.githubusercontent.com/hectorslqm/configureWSL/master/HSLQM.zsh-theme

# Modify .zshrc to use HSLQM theme
sed -i 's/ZSH_THEME="robbyrussell"/#ZSH_THEME="robbyrussell"\nZSH_THEME="HSLQM"/g' ~/.zshrc


# Restart terminal
exec zsh -l
