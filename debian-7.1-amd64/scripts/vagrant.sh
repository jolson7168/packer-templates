# Set up Vagrant.

date > /etc/vagrant_box_build_time

# Create the user vagrant with password vagrant
useradd -G sudo -p $(perl -e'print crypt("vagrant", "vagrant")') -m -s /bin/bash -N vagrant

# Install vagrant keys
mkdir -pm 700 /home/vagrant/.ssh
curl -Lo /home/vagrant/.ssh/authorized_keys \
  'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

# Set up password-less sudo for the 'vagrant' user
echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant

# Customize the message of the day
echo 'Welcome to your Vagrant-built virtual machine.' > /var/run/motd