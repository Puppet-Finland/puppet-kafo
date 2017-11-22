#!/bin/sh
#
# Prepare for running "puppet apply"
#
apt-get -y install puppet git

mkdir -p /tmp/modules
rm -f /tmp/modules/kafo
ln -s /vagrant /tmp/modules/kafo
