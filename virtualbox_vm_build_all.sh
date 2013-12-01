#!/bin/bash

#Debian 7.2
cd ./debian-7.2-amd64
packer build --only=virtualbox template.json

#CentOS 6.5
cd ../centos-6.5-amd64
packer build --only=virtualbox template.json

#Ubuntu 12.04: this template is for an older version of Ubuntu, but 12.04 is the most recent LTS release
#so we still want to have fresh builds of it
cd ../ubuntu-12.04-server-amd64
packer build --only=virtualbox template.json

#Ubuntu 13.10
cd ../ubuntu-13.10-server-amd64
packer build --only=virtualbox template.json

#FreeBSD 9.1
#cd ../freebsd-9.1-amd64
#packer build --only=virtualbox template.json
