# Official ev3dev image for Raspberry Pi hardware

FROM ev3dev-jessie-rpi-base
COPY layers/generic/ /
RUN /brickstrap/generic/run
