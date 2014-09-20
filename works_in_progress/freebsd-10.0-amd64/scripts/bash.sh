#Install and configure the bash shell

#bash is already installed

#Change the default shell for the vagrant and root users to bash
#Source: https://www.freebsd.org/doc/handbook/shells.html

chsh -s /usr/local/bin/bash vagrant
chsh -s /usr/local/bin/bash root