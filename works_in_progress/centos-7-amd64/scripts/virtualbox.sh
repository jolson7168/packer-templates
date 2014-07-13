# Installing the virtualbox guest additions
VBOX_VERSION=$(cat /home/veewee/.vbox_version)
cd /tmp
echo "veewee homedir's contents:"
ls -la /home/veewee
mount -o loop /home/veewee/VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
#Remove the guest additions ISO so it doesn't take up space in the finished base box:
rm -rf /home/veewee/VBoxGuestAdditions.iso
