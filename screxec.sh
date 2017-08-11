echo -e "\e[31mHello guys this is my wonderful update script\e[0m"

#Do what you want to do
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
mv rename.sh.1 rename.sh
sh rename.sh
