#!/bin/sh -x
apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y install linux-headers-$(uname -r) build-essential
apt-get -y install zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev
apt-get -y install dkms
apt-get -y install nfs-common
apt-get -y install tmux emacs nano curl vim tree htop smartmontools mosh inotify-tools zerofree software-properties-common