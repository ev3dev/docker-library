#!/bin/bash
#
# Create a release notes template file.

REPORT_DIR="/brickstrap/_report/_out"
REPORT_FILE="$REPORT_DIR/$BRICKSTRAP_IMAGE_NAME-release-notes.md"

echo "Creating $REPORT_FILE template..."
cat > "$REPORT_FILE" << EOF
Release notes for $BRICKSTRAP_IMAGE_NAME
========================================

Changes from previous version
-----------------------------


Known issues
------------


Included Packages
-----------------

\`\`\`
$(dpkg -l)
\`\`\`
EOF
