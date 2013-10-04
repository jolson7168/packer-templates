#!/bin/sh -x
cd /tmp
wget http://sourceforge.net/projects/zsh/files/zsh/5.0.2/zsh-5.0.2.tar.gz
tar zxvf zsh-5.0.2.tar.gz
cd zsh-5.0.2
./configure
sudo make
sudo make install

#Change the login shell to zsh for the vagrant and root users
chsh -s `which zsh` vagrant
chsh -s `which zsh` root

#Remove the tarball and tarball extract so they don't take up space in the final, packaged VM
rm -rf /tmp/zsh-5.0.2/ /tmp/zsh-5.0.2.tar.gz