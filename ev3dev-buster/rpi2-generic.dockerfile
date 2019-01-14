# Official ev3dev image for Raspberry Pi 2/3 hardware

FROM ev3dev/ev3dev-buster-rpi2-base
COPY layers/generic/ /
RUN /brickstrap/generic/run
ARG BRICKSTRAP_IMAGE_NAME=unknown-ev3dev-buster-rpi2-generic
ENV BRICKSTRAP_IMAGE_NAME ${BRICKSTRAP_IMAGE_NAME}
RUN echo "$BRICKSTRAP_IMAGE_NAME" > /etc/ev3dev-release
