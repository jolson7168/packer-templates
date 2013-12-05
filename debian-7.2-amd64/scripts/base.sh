# Tweak sshd to prevent DNS resolution (speed up logins)
echo 'UseDNS no' >> /etc/ssh/sshd_config

# Remove 5s grub timeout to speed up booting
cat <<EOF > /etc/default/grub
# If you change this file, run 'update-grub' afterwards to update
# /boot/grub/grub.cfg.

GRUB_DEFAULT=0
GRUB_TIMEOUT=0
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet"
GRUB_CMDLINE_LINUX="debian-installer=en_US"
EOF

update-grub

#Turn off iptables bly flushing its rules and stop it from starting when the system boots
iptables -F
update-rc.d -f iptables remove

#Don't do reverse DNS lookups of SSH clients that connect; this usually speeds up SSH by quite a bit:
echo "UseDNS no" >> /etc/ssh/sshd_config