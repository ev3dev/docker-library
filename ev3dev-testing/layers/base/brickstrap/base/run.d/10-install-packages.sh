#!/bin/bash

set -e

export DEBIAN_FRONTEND=noninteractive
export DEBCONF_NONINTERACTIVE_SEEN=true

# Have to install gnupg before we can use apt-key
apt-get update --yes
apt-get install --yes gnupg

# work around broken dirmngr 2.1.15 package
apt-get install --yes wget
wget http://ftp.debian.org/debian/pool/main/g/gnupg2/dirmngr_2.1.16-2_$(dpkg --print-architecture).deb
dpkg -i dirmngr_2.1.16-2_$(dpkg --print-architecture).deb
rm dirmngr_2.1.16-2_$(dpkg --print-architecture).deb

# Get the ev3dev archive apt key
apt-key adv --keyserver pgp.mit.edu --recv-keys D57D95AF93178A7C

# TODO: It would be better to not have the base-files version number hard-coded
# here. However, it is needed because if debian does a point release, we will
# actually be downgrading the base-files package.

apt-get install --yes --force-yes --no-install-recommends \
    alsa-utils \
    avahi-daemon \
    base-files=8+deb8u5ev3dev1 \
    beep \
    bluez \
    brickman \
    bsdmainutils \
    ca-certificates \
    connman \
    console-setup \
    conspy \
    dosfstools \
    espeak \
    ethtool \
    ev3dev-adduser-config \
    ev3dev-bluez-config \
    ev3dev-connman-config \
    ev3dev-rules \
    ev3dev-tools \
    evtest \
    fake-hwclock \
    fbcat \
    fbset \
    firmware-atheros \
    firmware-linux-free \
    firmware-ralink \
    firmware-realtek \
    flash-kernel \
    i2c-tools \
    ifupdown \
    iproute \
    iptables \
    iputils-ping \
    isc-dhcp-client \
    kmod \
    less \
    libgrx-3.0-plugin-linuxfb \
    libnss-mdns \
    libnss-myhostname \
    libpam-systemd \
    nano \
    net-tools \
    netbase \
    netcat-openbsd \
    netpbm \
    ntp \
    parted \
    procps \
    psmisc \
    screen \
    ssh \
    sudo \
    tree \
    usbutils \
    vim \
    wget \
    wpasupplicant

# work around https://github.com/ev3dev/brickstrap/issues/63
chmod u+s /bin/ping
