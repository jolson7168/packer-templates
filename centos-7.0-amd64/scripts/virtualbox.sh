# Installing the virtualbox guest additions
VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
cd /tmp
echo "vagrant homedir's contents:"
ls -la /home/vagrant
mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
#Remove the guest additions ISO so it doesn't take up space in the finished base box:
rm -rf /home/vagrant/VBoxGuestAdditions.iso

#Link the net-name-slot.rules file to /dev/null so we get eth0, eth1, etc. for ethernet device names:
ln -s /dev/null /etc/udev/rules.d/80-net-name-slot.rules