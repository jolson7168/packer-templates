#!/bin/sh -x
#Install some prerequisites for git from apt so we don't have to hunt them down manually
apt-get -y install build-essential gettext libcurl4-gnutls-dev libexpat1-dev

cd /tmp
wget https://git-core.googlecode.com/files/git-1.8.4.tar.gz
tar zxvf git-1.8.4.tar.gz
cd git-1.8.4/
./configure
#Compile it and put it into /usr/local
make prefix=/usr/local all; make prefix=/usr/local install

#remove the source code and tarball so they don't take up space in the final, packaged VM
cd /tmp
rm -rf /tmp/git-1.8.4/ /tmp/git-1.8.4.tar.gz

su - vagrant -c 'touch /home/vagrant/.gitconfig; cat /tmp/gitconfig > /home/vagrant/.gitconfig'
su - vagrant -c 'touch /home/vagrant/.gitignore_global; cat /tmp/gitignore_global > /home/vagrant/.gitignore_global'

su - vagrant -c 'touch /root/.gitconfig; cat /tmp/gitconfig > /root/.gitconfig'
su - vagrant -c 'touch/root/.gitignore_global ; cat /tmp/gitignore_global > /root/.gitignore_global'