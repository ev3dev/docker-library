#!/bin/bash

set -e

# make ssh and sftp discoverable
cp /usr/share/doc/avahi-daemon/examples/ssh.service /etc/avahi/services/
cp /usr/share/doc/avahi-daemon/examples/sftp-ssh.service /etc/avahi/services/
