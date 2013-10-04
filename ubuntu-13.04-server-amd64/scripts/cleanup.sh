#!/bin/sh -x
echo "cleaning up dhcp leases"
rm /var/lib/dhcp/*

echo "cleaning up udev rules"
rm /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules

#Remove oh-my-zsh git repo histories to save space; keep the current code checkout. We want oh-my-zsh but not the whole git repo's history

rm -rf /home/vagrant/.oh-my-zsh/.git
rm -rf /root/.oh-my-zsh/.git

#Remove rbenv git repo histories to save space; keep the current code checkout. We want rbenv but not the whole git repo's history

rm -rf /home/vagrant/.rbenv/.git
rm -rf /root/.rbenv/.git

#apt cleanup
echo "ECHO apt-get remove kernel headers"
apt-get -y remove linux-headers-$(uname -r)
echo "ECHO apt-get clean"
apt-get -y clean
echo "ECHO apt-get autoclean"
apt-get -y autoclean
echo "ECHO apt-get auto-remove"
apt-get -y autoremove

echo "pre-up sleep 2" >> /etc/network/interfaces
exit

#zero out disk space. Replacing free space with 0s makes the drive more easily compressed
cat /dev/zero > zero.fill;sync;sleep 1;sync;rm -f zero.fill

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY


