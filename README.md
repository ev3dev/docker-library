Ev3dev Docker Library
=====================

This repository is used to create the official ev3dev [docker] images.

[docker]: https://www.docker.com


Image Variants
--------------

There are many images. Here's how to sort them out.

* The image names follow the pattern `ev3dev-<dist>-<hardware>-<variant>`.
    * `<dist>` is the Debian distribution it is based on, e.g. `jessie`, `stretch`...
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

        docker tag ev3dev/ev3dev-jessie-ev3-base ev3

* You can start a shell as the `robot` user in the image:

        docker run --rm -it ev3 su -l robot

* But, the main purpose of these Docker images is to create bootable SD card
  images using the [brickstrap] tool.

        brickstrap create-tar ev3dev/ev3dev-jessie-ev3-generic ev3dev.tar
        brickstrap create-image ev3dev.tar ev3dev.img

[install Docker Engine]: https://docs.docker.com/engine/installation/
[brickstrap]: https://github.com/ev3dev/brickstrap


Tips
----

* You can use a specific version of an image by adding a "tag" to the name:

        ev3dev/ev3dev-jessie-ev3-base:2016-08-11
