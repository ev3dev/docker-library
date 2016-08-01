#!/bin/bash

set -e

# systemd-journald uses massive amounts of memory, so we use persistent storage to prevent this
sed -i 's/^#Storage=auto$/Storage=persistent/' /etc/systemd/journald.conf
mkdir -p /var/log/journal
