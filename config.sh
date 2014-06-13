#!/bin/bash

if [ "$(id -u)" != "0" ]; then
echo "This script must be run as root" 1>&2
exit 1
fi

cd /var/www
rm index.html
ln -s /vagrant/sites
cd /vagrant/sites

#git clone https://github.com/zendframework/ZendSkeletonApplication.git