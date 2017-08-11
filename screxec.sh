cd ~/screxec


#update this file
echo now updating this file
wget https://raw.githubusercontent.com/juril33t/scr-exec/master/screxec.sh
wget https://raw.githubusercontent.com/juril33t/scr-exec/master/rename.sh
mv rename.sh.1 rename.sh
sh rename.sh
