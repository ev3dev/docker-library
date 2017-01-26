#!/bin/bash
#
# Create directory for use with Etcher

image_dir="/brickstrap/_report/_out/$BRICKSTRAP_IMAGE_NAME"
meta_dir="$image_dir/.meta"

mkdir -p "$meta_dir"
cp -a /brickstrap/_etcher_metadata/. "$meta_dir"

cat > "$meta_dir/manifest.json" << EOF
{
    "name": "ev3dev-jessie",
    "version": "$BRICKSTRAP_IMAGE_NAME",
    "url": "http://www.ev3dev.org",
    "supportUrl": "http://www.ev3dev.org/support"
}
EOF
