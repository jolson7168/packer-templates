apt-get -y autoremove

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

echo "cleaning up dhcp leases"
rm /var/lib/dhcp/*

echo "cleaning up udev rules"
rm /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules

#apt cleanup
apt-get -y remove linux-headers-$(uname -r)
apt-get -y clean
apt-get -y autoclean
apt-get -y autoremove

echo "pre-up sleep 2" >> /etc/network/interfaces
exit
