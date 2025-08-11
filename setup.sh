#!/bin/bash

echo "---- Docker ----"

sudo apt-get update -y
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

echo "---- VSCode ----"

sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -D -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/microsoft.gpg
rm -f microsoft.gpg

echo "Types: deb" | sudo tee /etc/apt/sources.list.d/vscode.sources
echo "URIs: https://packages.microsoft.com/repos/code" | sudo tee -a /etc/apt/sources.list.d/vscode.sources
echo "Suites: stable" | sudo tee -a /etc/apt/sources.list.d/vscode.sources
echo "Components: main" | sudo tee -a /etc/apt/sources.list.d/vscode.sources
echo "Architectures: amd64,arm64,armhf" | sudo tee -a /etc/apt/sources.list.d/vscode.sources
echo "Signed-By: /usr/share/keyrings/microsoft.gpg" | sudo tee -a /etc/apt/sources.list.d/vscode.sources

sudo apt install apt-transport-https -y
sudo apt update -y
sudo apt install code -y # or code-insiders

echo "---- Node ----"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

\. "$HOME/.nvm/nvm.sh"

nvm install 22

node -v # Should print "v22.18.0".
nvm current # Should print "v22.18.0".
npm -v # Should print "10.9.3".

echo "---- Python ----"

sudo apt install python3 -y

echo "--- Chrome ----"

sudo apt update -y && sudo apt upgrade -y
sudo apt install curl apt-transport-https gdebi -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome* 
