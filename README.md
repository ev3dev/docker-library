Ev3dev Docker Library
=====================

This repository is used to create the official ev3dev [docker] images.
The images themselves are hosted at http://bintray.com/ev3dev/docker.

[docker]: https://www.docker.com


Image Variants
--------------

There are many images. Here's how to sort them out.

* The image names follow the pattern `ev3dev-<dist>-<hardware>-<variant>`.
    * `<dist>` is the Debian distribution it is based on, e.g. `jessie`, `squeeze`...
    * `<hardware>` is the hardware platform, e.g. `ev3` for LEGO MINDSTORMS EV3,
      `bone` for BeagleBone, `rpi` for Raspberry Pi 0/1 and `rpi2` for Raspberry
      Pi 2/3.
    * `<variant>` describes which extra packages are installed. `base` is a minimal
    system. `generic` is what is used for the official image releases.


Using the Images
----------------

* First, you will need to [install Docker Engine] on your system.
* Then grab an ev3dev image:

        docker pull ev3dev/ev3dev-jessie-ev3-base

* Make a shorter name for the image:

        docker tag ev3dev/ev3dev-jessie-ev3-base ev3dev-jessie-ev3-base

* And start a shell as the `robot` user in the image:

        docker run -it ev3dev-jessie-ev3-base su -l robot

* Share what you learn. We are new to docker, so we are interested to hear how
  you use it.

[install Docker Engine]: https://docs.docker.com/engine/installation/

Tips
----

* You can use a specific version of an image by adding a "tag" to the name:

        ev3dev/ev3dev-jessie-ev3-base:2016-08-11
