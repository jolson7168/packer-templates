#!/bin/sh -x
apt-get -y install --no-install-recommends linux-headers-$(uname -r) build-essential
apt-get -y install --no-install-recommends zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev
apt-get -y install --no-install-recommends dkms
apt-get -y install --no-install-recommends nfs-common
apt-get -y install --no-install-recommends rake
apt-get -y install --no-install-recommends tmux emacs nano curl vim tree htop smartmontools mosh inotify-tools zerofree software-properties-common ncdu unzip pv

#Some metrics gathering tools
apt-get -y install --no-install-recommends apachetop atop nmon dstat sysstat glances goaccess iotop

#Install ag
cd /tmp
wget http://swiftsignal.com/packages/ubuntu/precise/the-silver-searcher_0.14-1_amd64.deb
dpkg -i the-silver-searcher_0.14-1_amd64.deb