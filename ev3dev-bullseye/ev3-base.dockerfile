# Minimal base image for ev3dev on LEGO MINDSTORMS EV3 hardware

FROM arm32v5/debian:bullseye
COPY layers/debian/ /
COPY layers/base/ /
RUN /brickstrap/base/run
COPY layers/ev3/ /
RUN /brickstrap/ev3/run
