# to make it so that you don't have to enter a password to sudo a process
# in visudo enter the string below
# this example is to start the cron service without having to enter a password
%sudo   ALL=NOPASSWD: /usr/sbin/service cron *

# access the startup folder in windows
WIN + R and then enter shell:startup => to get an explorer window of the startup folder

# create a batch file with the following command in it or equivilent for your service
wsl sudo service cron start

# service
sudo service cron start
sudo service cron status
sudo service cron --full-restart
sudo service --status-all

# apt commands and nodejs or npm commands
sudo apt update && sudo apt upgrade -y

## pm2 commands
pm2 restart all

# nodejs
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs

## Install latest nodejs
wget <https://nodejs.org/dist/v12.14.0/node-v12.14.0-linux-x64.tar.xz>
sudo tar -C /usr/local --strip-components 1 -xJf node-v6.9.2-linux-x64.tar.xz
#nvs node package mgr
export NVS_HOME="$HOME/.nvs"
git clone https://github.com/jasongin/nvs "$NVS_HOME"
. "$NVS_HOME/nvs.sh" install
# get the latest nodejs
nvs add latest
# then make it active
nvs use latest


sudo npm -g list -depth=0

# map a network drive
sudo mkdir /mnt/narwhal
sudo mount -t drvfs Z: /mnt/narwhal

sudo mkdir /mnt/swordfish
sudo mount -t drvfs S: /mnt/swordfish

## from whaleshark - rsync alias
rs ~/code2 /mnt/swordfish
rs ~/code2 /mnt/narwhal

## to whaleshark - rsync alias
rs /mnt/swordfish/code2 ~/
rs /mnt/narwhal/code2 ~/

# misc commands
lsb_release -a
sudo usermod -d /home/jpbutler jpbutler

## copy ssh keys manually into a server
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
sudo vi /etc/ssh/sshd_config


# sudoer commands
visudo
sudo vi /etc/sudoers
# to make it so that you don't have to enter a password to sudo a process
# in visudo enter the string below
# this example is to start the cron service without having to enter a password
%sudo   ALL=NOPASSWD: /usr/sbin/service cron *

# ngrok
ngrok authtoken 1aDrc87iPOXJLEah3xh99bRFynF_4QhmBK9QVx1NMbc7mGpXm
ngrok http 3000
 
 # shopify theme
theme get --password=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 --store=moowoof.myshopify.com --themeid=79624831076
theme watch

# prepros

# wsl2 from explorer
\\wsl$

# ubuntu mount via cifs
sudo mount.cifs //narwhal.local/backup ~/narwhal -o user=jpbutler

# boot up settings like close lid when power on
/etc/systemd/logind.sshd_conf
