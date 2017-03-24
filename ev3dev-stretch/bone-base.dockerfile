# Minimal base image for ev3dev on BeagleBone hardware

FROM ev3dev/debian-stretch-armhf-qemu-minbase
COPY layers/debian/ /
COPY layers/base/ /
RUN /brickstrap/base/run
COPY layers/bone/ /
RUN /brickstrap/bone/run
