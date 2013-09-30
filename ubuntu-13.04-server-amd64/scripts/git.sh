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

#remove the source code and tarball so they don't take up space in the final, packaged VM
cd /tmp
rm -rf /tmp/git-1.8.4/ /tmp/git-1.8.4.tar.gz

su - vagrant -c '/tmp/gitconfig > /home/vagrant/.gitconfig'
su - vagrant -c '/tmp/gitignore_global > /home/vagrant/.gitignore_global'

su - vagrant -c '/tmp/gitconfig > /root/.gitconfig'
su - vagrant -c '/tmp/gitignore_global > /root/.gitignore_global'