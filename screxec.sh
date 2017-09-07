#!/bin/sh

echo Hello guys this is my wonderful update script

# update everything
update() {
  echo now updating everything
  sudo apt-get update
  sudo apt-get -y upgrade
  sudo apt-get -y dist-upgrade
  sudo apt-get clean
  sudo apt-get -y autoremove
}

# update this file
updatefile() {
  cd ~/screxec
  echo now updating this file
  wget https://raw.githubusercontent.com/juril33t/scr-exec/master/screxec.sh
  mv screxec.sh.1 screxec.sh
  echo update successful
}

# check if online
# if online, do an update
# else wait for internet to come back

wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ $? -eq 0 ]]; then
  update
  updatefile
  sudo reboot
else
  sleep 10m
  sh screxec.sh
fi



