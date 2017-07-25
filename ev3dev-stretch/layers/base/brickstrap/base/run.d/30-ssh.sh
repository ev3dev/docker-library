#!/bin/bash

set -e

# Allow passing ALL environment variables via ssh
sed 's/\(AcceptEnv\).*/\1 \*/' -i /etc/ssh/sshd_config
