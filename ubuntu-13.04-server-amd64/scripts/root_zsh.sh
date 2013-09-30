#Add this variable so keyboard stuff isn't wonky
su - root -c 'echo "DEBIAN_PREVENT_KEYBOARD_CHANGES=yes" > /root/.zshenv'

#install oh-my-zsh first
su - root -c 'curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh'
#Make a folder for plugins like...
su - root -c 'mkdir -p ~/.oh-my-zsh/custom/plugins'
su - root -c 'cd ~/.oh-my-zsh/custom/plugins'
#smarter history search
su - root -c 'git clone git://github.com/zsh-users/zsh-history-substring-search.git'
#syntax highlighting
su - root -c 'git clone git://github.com/zsh-users/zsh-syntax-highlighting.git'