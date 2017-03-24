# Minimal base image for ev3dev on Raspberry Pi 2/3 hardware

FROM ev3dev/debian-stretch-armhf-qemu-minbase
COPY layers/debian/ /
COPY layers/base/ /
RUN /brickstrap/base/run
COPY layers/rpi2/ /
RUN /brickstrap/rpi2/run
COPY layers/rpi-common/ /
RUN /brickstrap/rpi-common/run
