# Minimal base image for ev3dev on Raspberry Pi hardware

FROM ev3dev/raspbian-stretch-armhf-qemu-minbase
COPY layers/raspbian/ /
RUN /brickstrap/raspbian/run
COPY layers/base/ /
RUN /brickstrap/base/run
COPY layers/rpi/ /
RUN /brickstrap/rpi/run
COPY layers/rpi-common/ /
RUN /brickstrap/rpi-common/run
