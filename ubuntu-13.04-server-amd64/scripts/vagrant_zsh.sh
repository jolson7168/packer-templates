#!/bin/sh -x
#Add this variable so keyboard stuff isn't wonky
su - vagrant -c 'echo "DEBIAN_PREVENT_KEYBOARD_CHANGES=yes" > /home/vagrant/.zshenv'

#install oh-my-zsh first
su - vagrant -c 'curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh'
#Make a folder for plugins like...
su - vagrant -c 'mkdir -p ~/.oh-my-zsh/custom/plugins'
su - vagrant -c 'cd ~/.oh-my-zsh/custom/plugins'
#smarter history search
su - vagrant -c 'git clone git://github.com/zsh-users/zsh-history-substring-search.git'
#syntax highlighting
su - vagrant -c 'git clone git://github.com/zsh-users/zsh-syntax-highlighting.git'

#cat the uploaded vagrant .zshrc into the /home/vagrant/.zshrc file
su - vagrant -c 'cat /tmp/vagrant-zshrc > /home/vagrant/.zshrc'

#cat in the uploaded ZSH theme
su - vagrant -c 'cat /tmp/vagrant-zsh-theme.zsh-theme > /home/vagrant/.oh-my-zsh/themes/vagrant-zsh-theme.zsh-theme'