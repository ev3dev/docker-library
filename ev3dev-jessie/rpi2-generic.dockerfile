# Official ev3dev image for Raspberry Pi 2/3 hardware

FROM ev3dev/ev3dev-jessie-rpi2-base
COPY layers/generic/ /
RUN /brickstrap/generic/run
RUN echo "ev3dev-jessie-rpi2-generic-$(date --iso-8601)" > /etc/ev3dev-release
