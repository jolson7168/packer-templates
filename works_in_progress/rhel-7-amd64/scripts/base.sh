# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

cat > /etc/yum.repos.d/epel.repo << EOM
[epel]
name=epel
baseurl=http://download.fedoraproject.org/pub/epel/6/\$basearch
enabled=1
gpgcheck=0
EOM

#Install the CentOS Software Collections repo. More info available here:
# https://access.redhat.com/site/documentation/en-US/Red_Hat_Software_Collections/1/html-single/1.0_Release_Notes/index.html

yum install centos-release-SCL

yum -y check-update

yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget dkms nfs-utils

#disable iptables
chkconfig iptables off
service iptables stop

#more packages
yum -y install man nc vim nano emacs tmux htop tree lsof curl wget screen telnet mailx unzip yum-utils rsync ncdu mosh ccze pv

#Some metrics gathering tools
yum -y install apachetop atop dstat sysstat glances iotop smartmontools

#Install ag
rpm -Uvhi http://swiftsignal.com/packages/centos/6/x86_64/the-silver-searcher-0.14-1.el6.x86_64.rpm

#Don't do reverse DNS lookups of SSH clients that connect; this usually speeds up SSH by quite a bit:
echo "UseDNS no" >> /etc/ssh/sshd_config