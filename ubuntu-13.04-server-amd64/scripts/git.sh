#Install some prerequisites for git from apt so we don't have to hunt them down manually
sudo apt-get update
sudo apt-get -y install build-essential gettext libcurl4-gnutls-dev libexpat1-dev

cd /tmp
wget https://git-core.googlecode.com/files/git-1.8.4.tar.gz
tar zxvf git-1.8.4.tar.gz
cd git-1.8.4/
./configure
#Compile it and put it into /usr/local
sudo make prefix=/usr/local all; sudo make prefix=/usr/local install