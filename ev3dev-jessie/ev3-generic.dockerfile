# Official ev3dev image for LEGO MINDSTORMS EV3 hardware

FROM ev3dev-jessie-ev3-base
COPY layers/generic/ /
RUN /brickstrap/generic/run
