# Official ev3dev image for LEGO MINDSTORMS EV3 hardware

FROM ev3dev/ev3dev-jessie-ev3-base
COPY layers/generic/ /
RUN /brickstrap/generic/run
RUN echo "ev3dev-jessie-ev3-generic-$(date --iso-8601)" > /etc/ev3dev-release
