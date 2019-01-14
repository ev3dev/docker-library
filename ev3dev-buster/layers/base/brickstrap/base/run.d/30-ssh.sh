#!/bin/bash

set -e

# Allow passing ALL environment variables via ssh
sed 's/\(AcceptEnv\).*/\1 \*/' -i /etc/ssh/sshd_config

# Allow challenge-response passwords (for VS Code extension)
sed 's/\(ChallengeResponseAuthentication\).*/\1 yes/' -i /etc/ssh/sshd_config
