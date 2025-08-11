#! /bin/bash

wget -O 'MesloLGS NF Regular.ttf' 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf'
wget -O 'MesloLGS NF Bold.ttf' 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf'
wget -O 'MesloLGS NF Italic.ttf' 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf'
wget -O 'MesloLGS NF Bold Italic.ttf' 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf'

sudo cp 'MesloLGS NF Bold.ttf' ~/.local/share/fonts
sudo cp 'MesloLGS NF Italic.ttf' ~/.local/share/fonts
sudo cp 'MesloLGS NF Regular.ttf' ~/.local/share/fonts
sudo cp 'MesloLGS NF Bold Italic.ttf' ~/.local/share/fonts

fc-cache -f -r -v