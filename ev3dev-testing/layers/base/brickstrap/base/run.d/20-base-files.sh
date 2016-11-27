#!/bin/bash

# Since the ev3dev base-files package is installed over the top of the official
# debian base-files package, some files don't get copied.

set -e

cp /usr/share/base-files/staff-group-for-usr-local  /etc/staff-group-for-usr-local
cp /usr/share/base-files/dot.profile                /root/.profile
cp /usr/share/base-files/dot.bashrc                 /root/.bashrc
cp /usr/share/base-files/profile                    /etc/profile
cp /usr/share/base-files/motd                       /etc/motd
