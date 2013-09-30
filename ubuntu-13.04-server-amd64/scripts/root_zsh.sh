#Add this variable so keyboard stuff isn't wonky
su - root -c 'echo "DEBIAN_PREVENT_KEYBOARD_CHANGES=yes" > /root/.zshenv'

#install oh-my-zsh first
su - root -c 'cd /root/; curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh'
#Make a folder for plugins like...
su - root -c 'mkdir -p /root/.oh-my-zsh/custom/plugins'
su - root -c 'cd /root/.oh-my-zsh/custom/plugins'
#smarter history search
su - root -c 'cd /root/.oh-my-zsh/custom/plugins; git clone git://github.com/zsh-users/zsh-history-substring-search.git'
#syntax highlighting
su - root -c 'cd /root/.oh-my-zsh/custom/plugins; git clone git://github.com/zsh-users/zsh-syntax-highlighting.git'

#cat the uploaded vagrant .zshrc into the /home/vagrant/.zshrc file
su - root -c 'cat /tmp/root-zshrc > /root/.zshrc'

#cat in the uploaded ZSH theme
su - root -c 'cat /tmp/root-zsh-theme.zsh-theme > /root/.oh-my-zsh/themes/root-zsh-theme.zsh-theme'

#Install Vim Janus

#Install rbenv and some plugins
su - root -c 'cd /root/.rbenv/plugins; git clone git://github.com/sstephenson/rbenv.git .rbenv'
su - root -c 'cd /root/.rbenv/plugins; mkdir -p /root/.rbenv/plugins'
su - root -c 'cd /root/.rbenv/plugins; git clone git://github.com/sstephenson/ruby-build.git'