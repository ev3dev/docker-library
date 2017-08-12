#!/bin/bash

set -e

systemctl disable apt-daily.timer
systemctl disable apt-daily-upgrade.timer
