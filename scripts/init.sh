#! /bin/bash  

sudo apt update && sudo apt upgrade -y
sudo apt install curl yadm gpg
# grab the latest .files
yadm clone https://github.com/cosmicfilament/wsl2.git
# install node and nvs
wget https://nodejs.org/dist/v12.14.0/node-v12.14.0-linux-x64.tar.xz
sudo tar -C /usr/local --strip-components 1 -xJf node-v12.14.0-linux-x64.tar.xz
 
export NVS_HOME="$HOME/.nvs"
git clone https://github.com/jasongin/nvs "$NVS_HOME"
. "$NVS_HOME/nvs.sh" install
nvs add latest
nvs use latest

sudo apt install neofetch
source .bashrc
node -v
npm -v
# make sure all .config stuff belongs to me eg: node
sudo chown -R $USER:$(id -gn $USER) /home/jpbutler/.config
 