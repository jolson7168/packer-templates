#!/bin/sh -x
#Install some prerequisites for git from yum so we don't have to hunt them down manually
yum install -y gcc make gcc-c++ zlib-devel perl-ExtUtils-Embed gettext curl-devel zlib-devel openssl-devel cpio expat-devel gettext-devel

cd /tmp
wget https://git-core.googlecode.com/files/git-1.8.4.tar.gz
tar zxvf git-1.8.4.tar.gz
cd git-1.8.4/
./configure
#Compile it and put it into /usr/local
sudo make prefix=/usr/local all; sudo make prefix=/usr/local install

#remove the source code and tarball so they don't take up space in the final, packaged VM
cd /tmp
rm -rf /tmp/git-1.8.4/ /tmp/git-1.8.4.tar.gz

cp /tmp/gitconfig /home/vagrant/.gitconfig
cp /tmp/gitignore_global /home/vagrant/.gitignore_global

cp /tmp/gitconfig /root/.gitconfig
cp /tmp/gitignore_global /root/.gitignore_global