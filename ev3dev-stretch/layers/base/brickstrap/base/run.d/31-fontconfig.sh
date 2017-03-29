#!/bin/bash

set -e

# Build the fontconfig cache. This takes a long time, so do it now rather
# than the first time an application uses fontconfig. Otherwise, there is a
# long delay starting brickman on the first boot.
fc-cache
