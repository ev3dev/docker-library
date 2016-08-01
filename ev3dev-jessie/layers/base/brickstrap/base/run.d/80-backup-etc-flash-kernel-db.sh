#!/bin/bash

# This will be written over by other docker layers for bootstrapping purposes.
# However, we want this file included in the final image file rather than the
# file that replaced it.

source_dir=/etc/flash-kernel
dest_dir=/brickstrap/_tar-only/$source_dir

mkdir -p $dest_dir
cp $source_dir/db $dest_dir
