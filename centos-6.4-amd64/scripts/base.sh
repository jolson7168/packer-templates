# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

cat > /etc/yum.repos.d/epel.repo << EOM
[epel]
name=epel
baseurl=http://download.fedoraproject.org/pub/epel/6/\$basearch
enabled=1
gpgcheck=0
EOM

yum -y check-update

yum -y update

yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget dkms nfs-utils

#disable iptables
chkconfig iptables off
service iptables stop

#more packages
yum -y install man nc vim nano emacs tmux htop tree lsof curl wget screen telnet mailx unzip yum-utils rsync

