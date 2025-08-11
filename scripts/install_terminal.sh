#! /bin/bash

sudo apt update -y
sudo apt upgrade -y

sudo apt install curl git-all zsh -y

chsh -s $(which zsh)

git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
fc-cache -fv

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"