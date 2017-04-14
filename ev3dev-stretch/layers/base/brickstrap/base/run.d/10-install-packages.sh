#!/bin/bash

set -e

export DEBIAN_FRONTEND=noninteractive
export DEBCONF_NONINTERACTIVE_SEEN=true

debconf-set-selections << EOF
locales         locales/locales_to_be_generated         multiselect     en_US.UTF-8 UTF-8
locales         locales/default_environment_locale      select          en_US.UTF-8
EOF


# TODO: It would be better to not have the base-files version number hard-coded
# here. However, it is needed because if debian does a point release, we will
# actually be downgrading the base-files package.

apt-get update --yes
apt-get install --yes --allow-downgrades --no-install-recommends \
    alsa-utils \
    avahi-daemon \
    base-files=9.7ev3dev1 \
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
    locales \
    nano \
    net-tools \
    netbase \
    netcat-openbsd \
    netpbm \
    ntp \
    parted \
    procps \
    psmisc \
    ros-robot \
    screen \
    ssh \
    sudo \
    systemd-sysv \
    tree \
    usb-modeswitch \
    usbutils \
    vim \
    wget \
    wpasupplicant \
    xfonts-100dpi \
    xfonts-75dpi \
    xfonts-base \
    xfonts-efont-unicode \
    xfonts-efont-unicode-ib \
    xfonts-unifont

# work around https://github.com/ev3dev/brickstrap/issues/63
chmod u+s /bin/ping

# work around https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=858799
ln -s /usr/sbin/connmanctl /usr/bin/connmanctl
