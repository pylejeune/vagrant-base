#!/bin/bash

if [ "$(id -u)" != "0" ]; then
echo "This script must be run as root" 1>&2
exit 1
fi

vagrant up --provision
echo "192.168.121.100    base.local" >>  /etc/hosts
echo "base.local mapper avec 192.168.121.100"
vagrant ssh