# Minimal base image for ev3dev on LEGO MINDSTORMS EV3 hardware

FROM ev3dev/debian-testing-armel-qemu-minbase
COPY layers/debian/ /
COPY layers/base/ /
RUN /brickstrap/base/run
COPY layers/ev3/ /
RUN /brickstrap/ev3/run
