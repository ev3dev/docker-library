# Minimal base image for ev3dev on BeagleBone hardware

FROM ev3dev-docker-docker.bintray.io/debian-jessie-armhf
COPY layers/debian/ /
COPY layers/base/ /
RUN /brickstrap/base/run
COPY layers/bone/ /
RUN /brickstrap/bone/run
