#!/bin/sh -x
#Add this variable so keyboard stuff isn't wonky
echo "DEBIAN_PREVENT_KEYBOARD_CHANGES=yes" > /home/vagrant/.zshenv

#install oh-my-zsh first
cd /home/vagrant
su - vagrant -c 'curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh'

#Make a folder for plugins like...
mkdir -p /home/vagrant/.oh-my-zsh/custom/plugins
cd /home/vagrant/.oh-my-zsh/custom/plugins
#smarter history search
git clone git://github.com/zsh-users/zsh-history-substring-search.git
#syntax highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

#cat the uploaded vagrant .zshrc into the /home/vagrant/.zshrc file
cat /tmp/vagrant-zshrc > /home/vagrant/.zshrc

#cat in the uploaded ZSH theme
cat /tmp/vagrant-zsh-theme.zsh-theme > /home/vagrant/.oh-my-zsh/themes/vagrant-zsh-theme.zsh-theme