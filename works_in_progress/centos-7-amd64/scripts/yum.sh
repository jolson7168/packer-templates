#Yum and RPM package installations

#Install the EPEL 7 beta:
rpm -Uvhi http://dl.fedoraproject.org/pub/epel/beta/7/x86_64/epel-release-7-0.2.noarch.rpm

#Install the CentOS Software Collections repo. More info available here:
# https://access.redhat.com/site/documentation/en-US/Red_Hat_Software_Collections/1/html-single/1.0_Release_Notes/index.html
#We'll install this later when they have a version ready for CentOS 7:

#yum install centos-release-SCL

#Clean yum and then update it to get new package lists from EPEL:
yum clean all
yum -y check-update

yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget dkms nfs-utils pcre-devel pcre

#more packages
yum -y install man nc vim nano emacs tmux htop tree lsof curl wget screen telnet mailx unzip yum-utils rsync ncdu mosh pv rlwrap

#Packages that can't be installed:

# ccze - missing libpcre.so.0()(64bit)

#Some metrics gathering tools
yum -y install apachetop atop dstat sysstat glances iotop smartmontools

#Install ag
#rpm -Uvhi http://swiftsignal.com/packages/centos/6/x86_64/the-silver-searcher-0.14-1.el6.x86_64.rpm