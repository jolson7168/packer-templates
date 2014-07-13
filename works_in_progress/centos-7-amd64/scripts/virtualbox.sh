# Installing the virtualbox guest additions
VBOX_VERSION=$(cat /home/veewee/.vbox_version)
cd /tmp
echo "veewee homedir"
ls -la /home/veewee
mount -o loop /home/veewee/VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf /home/veewee/VBoxGuestAdditions_*.iso

