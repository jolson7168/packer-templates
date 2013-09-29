#install oh-my-zsh first
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
#Make a folder for plugins like...
mkdir -p ~/.oh-my-zsh/custom/plugins
cd ~/.oh-my-zsh/custom/plugins
#smarter history search
git clone git://github.com/zsh-users/zsh-history-substring-search.git
#syntax highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git