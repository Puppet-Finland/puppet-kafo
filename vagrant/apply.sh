#!/bin/sh
#
# Apply the Kafo Puppet module
#
puppet apply --modulepath /tmp/modules -e 'include ::kafo'
