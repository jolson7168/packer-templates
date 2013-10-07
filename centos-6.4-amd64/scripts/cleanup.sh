yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
yum -y clean headers packages dbcache expire-cache metadata
yum -y clean all

#rm -rf /etc/yum.repos.d/{puppetlabs,epel}.repo
rm -rf VBoxGuestAdditions_*.iso

# Remove traces of mac address from network configuration
sed -i /HWADDR/d /etc/sysconfig/network-scripts/ifcfg-eth0
rm /etc/udev/rules.d/70-persistent-net.rules

#Remove oh-my-zsh git repo histories to save space; keep the current code checkout. We want oh-my-zsh but not the whole git repo's history
echo "Removing oh-my-zsh git repos..."
rm -rf /home/vagrant/.oh-my-zsh/.git
rm -rf /root/.oh-my-zsh/.git

#Remove rbenv git repo histories to save space; keep the current code checkout. We want rbenv but not the whole git repo's history
echo "Removing rbenv git repos..."
rm -rf /home/vagrant/.rbenv/.git
rm -rf /root/.rbenv/.git

#Empty out log files, but don't delete them
find /var/log -type f | while read f; do echo -ne '' > $f; done;

# Zero out the free space to save space in the final image:
cat /dev/zero > zero.fill;sync;sleep 1;sync;rm -f zero.fill

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
