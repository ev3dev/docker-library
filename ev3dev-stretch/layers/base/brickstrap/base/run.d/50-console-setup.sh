#!/bin/bash

set -e

# set the default font
echo -e -n "\nFONT='Lat15-TomThumb4x6.psf.gz'" >> /etc/default/console-setup
setupcon --save-only
