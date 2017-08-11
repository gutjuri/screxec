#!/bin/sh

echo Hello guys this is my wonderful update script

#update everything
update() {
  echo now updating everything
  sudo apt-get update
  sudo apt-get -y upgrade
  sudo apt-get -y dist-upgrade
  sudo apt-get clean
  sudo apt-get -y autoremove
}
 
################################
###Do what you want to do HERE##
################################

update

#update this file
cd ~/screxec
echo now updating this file
wget https://raw.githubusercontent.com/juril33t/scr-exec/master/screxec.sh
mv screxec.sh.1 screxec.sh
echo update successful
sudo reboot
