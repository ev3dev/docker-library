# Official ev3dev image for BeagleBone hardware

FROM ev3dev/ev3dev-jessie-bone-base
COPY layers/generic/ /
RUN /brickstrap/generic/run
RUN echo "ev3dev-jessie-bone-generic-$(date --iso-8601)" > /etc/ev3dev-release
