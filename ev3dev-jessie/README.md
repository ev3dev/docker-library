ev3dev-jessie
=============

This directory contains everything for building ev3dev variants based on Debian
Jessie.

There are 4 hardware platforms:
* `bone`: BeagleBone White/Black/Green
* `ev3`: LEGO MINDSTORMS EV3
* `rpi`: Raspberry Pi 0/1
* `rpi2`: Rapsberry Pi 2/3

There are 2 package variants:
* `base`: minimal install
* `generic`: contains many scripting languages (used for official image release)

Each variant is composes of "layers" defined in the `layers` directory. Each
"layer" there generally produces two docker "layers".

Each layer conforms to the following rules:

* The directory is copied to the docker file using the dockerfile `COPY` command.
* The layer should contain a `brickstrap/<layer>` subdirectory where `<layer`>
    is the name of the layer (same name as the parent directory).

    The `brickstrap/<layer>` directory can contain the following components.

    * `run`: An executable file that performs the task of setting up the layer.
        This usually contains an `apt-get install` command and any other tweaks
        needed. This script should be kept to a minimum. It is preferred that
        as much configuration as possible is done by the packages themselves
        rather than manually here.
    * `tar-exclude`: A text file containing a list of files that should be
        excluded from a SD card image file created from this docker image.
    * `tar-only`: A directory containing a file structure that will be overlaid
        on the docker image root file system when creating an SD card image from
        the docker image.

* The `brickstrap/<layer>/run` script is run using the dockerfile `RUN` command.
