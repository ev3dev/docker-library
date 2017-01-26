# lms2012-comapt ev3dev image for LEGO MINDSTORMS EV3 hardware

FROM ev3dev/ev3dev-jessie-ev3-base
COPY layers/ev3-lms2012/ /
RUN /brickstrap/ev3-lms2012/run
ARG BRICKSTRAP_IMAGE_NAME=unknown-ev3dev-jessie-ev3-lms2012
ENV BRICKSTRAP_IMAGE_NAME ${BRICKSTRAP_IMAGE_NAME}
RUN echo "$BRICKSTRAP_IMAGE_NAME" > /etc/ev3dev-release
