#!/usr/bin/env bash
# Install common tool
apt-get install -y gnome-tweak-tool bleachbit ettercap-graphical ibus-unikey
ibus restart

# Install theme
mkdir ~/.icons ~/.themes
unzip ./.icons.zip -d ~/
unzip ./.themes.zip -d ~/

# Install docker
apt-get remove docker docker-engine docker.io
apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update -y
apt-get install -y docker-ce docker-compose
usermod -aG docker $USER

# Install zsh
apt-get install -y zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install VSCode
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt-get install -y code

# Install Golang
add-apt-repository "ppa:longsleep/golang-backports" -y
apt-get install -y golang-go

# Install Google Chrome
curl -fsSL https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"
apt-get install -y google-chrome-stable

# Install Nodejs
curl -o /usr/local/bin/n https://raw.githubusercontent.com/tj/n/master/bin/n
chmod 0755 /usr/local/bin/n
n stable

# Install react
npm i -g react-native-cli
# apt install openjdk-8-jre openjdk-8-jdk
# snap install android-studio