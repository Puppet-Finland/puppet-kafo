#!/bin/sh
#
# Prepare for running "puppet apply"
#
apt-get -y install puppet git

mkdir /tmp/modules
ln -s /vagrant /tmp/modules/kafo
