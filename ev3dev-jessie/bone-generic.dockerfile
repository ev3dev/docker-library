# Official ev3dev image for BeagleBone hardware

FROM ev3dev/ev3dev-jessie-bone-base
COPY layers/generic/ /
RUN /brickstrap/generic/run
