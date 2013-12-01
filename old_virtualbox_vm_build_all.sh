#!/bin/bash

#Go into the old_templates folder first; every other command will get run relative to this folder
cd old_templates/

#Debian 7.1
cd ./debian-7.1-amd64
packer build --only=virtualbox template.json

#CentOS 6.4
cd ../centos-6.4-amd64
packer build --only=virtualbox template.json

#Ubuntu 12.10
cd ../ubuntu-12.10-server-amd64
packer build --only=virtualbox template.json

#Ubuntu 13.04
cd ../ubuntu-13.04-server-amd64
packer build --only=virtualbox template.json