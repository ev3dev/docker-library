# Official ev3dev image for Raspberry Pi 2/3 hardware

FROM ev3dev-jessie-rpi2-base
COPY layers/generic/ /
RUN /brickstrap/generic/run
