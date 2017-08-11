echo Hello guys this is my wonderful update script

###########################
###Do what you want to do##
###########################

#update everything
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get clean
sudo apt-get -y autoremove

#update this file
cd ~/screxec
echo now updating this file
wget https://raw.githubusercontent.com/juril33t/scr-exec/master/screxec.sh
wget https://raw.githubusercontent.com/juril33t/scr-exec/master/rename.sh

mv screxec.sh.1 screxec.sh
mv rename.sh.1 rename.sh
#sh rename.sh
