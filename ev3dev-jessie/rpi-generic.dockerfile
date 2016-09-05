# Official ev3dev image for Raspberry Pi hardware

FROM ev3dev/ev3dev-jessie-rpi-base
COPY layers/generic/ /
RUN /brickstrap/generic/run
RUN echo "ev3dev-jessie-rpi-generic-$(date --iso-8601)" > /etc/ev3dev-release
