# Custom Base Setup

![image](https://user-images.githubusercontent.com/101937929/230771726-9eb8fb60-510a-459d-9bc3-be6accb3f59e.png)

## Update Ubuntu box

```sudo apt update -y && sudo apt upgrade -y```

## Execute scripts

```./setup.sh```

```./install_terminal.sh```

> *Note:* if the scripts are not executable on your ubuntu use ```chmode +x ./[script_name].sh``` 

## Install Oh My ZSH Themes

* [pl10k](https://github.com/romkatv/powerlevel10k)
* [Agnoster](https://github.com/agnoster/agnoster-zsh-theme)

## Install Terminal Theme

* [Dracula theme](https://draculatheme.com/gnome-terminal)

> *Note:* If your using pl10k use the command ```p10k configure``` after installing dracula theme

## Install Oh My ZSH Plugins

* [Install Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
* [Install Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

## Configure Github SSH

* [Creating SSH Key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
* [Adding SSH Key to Github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?platform=linux&tool=webui)