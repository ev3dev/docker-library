#!/bin/bash

set -e

# Add default user and give them sudo powers
adduser --disabled-password --gecos \"\" robot
echo "robot:maker" | chpasswd
usermod -a -G sudo robot
