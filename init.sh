#!/bin/bash

#if [ "$(id -u)" != "0" ]; then
#echo "This script must be run as root" 1>&2
#exit 1
#fi

vagrant up
echo "192.168.121.100    convert-nl.local" >>  /etc/hosts
echo "convert-nl mapper avec 192.168.121.100"
vagrant ssh
cd /vagrant