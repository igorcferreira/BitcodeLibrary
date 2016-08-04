#!/bin/bash
set -ex

FRAMEWORK_NAME="${PROJECT_NAME}"
UNIVERSAL_LIBRARY_DIR="${BUILD_DIR}/${CONFIGURATION}-universal"
FRAMEWORK="${UNIVERSAL_LIBRARY_DIR}/${FRAMEWORK_NAME}.framework"

cp "${SRCROOT}/../Supporting Files/strip_framework.sh" "$FRAMEWORK" | echo
sed -i '' -e "s/^framework_bundle.*/framework_bundle=\"${FRAMEWORK_NAME}.framework\"/" $FRAMEWORK/strip_framework.sh

