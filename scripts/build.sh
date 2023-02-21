#!/bin/bash

set -e

verbose() {
	! test -z "$VERBOSE"
}

verbose && echo "Running tests..."
scripts/test.sh

verbose && echo "Formatting code..."
scripts/format.sh

verbose && echo "Measuring line lengths..."
scripts/measure.sh

# SITE_DIR is the final location where we want generated content to be
SITE_DIR="public"

# GENERATE_DIR is where the content will be generated initially
GENERATE_DIR="$(mktemp -d)"

function cleanup() {
  rm -rf "$GENERATE_DIR"
}
trap cleanup EXIT

verbose && echo "Generating HTML to $GENERATE_DIR..."
scripts/generate.sh $GENERATE_DIR

# In TESTING mode, make sure that the generated content is identical to
# what's already in SITE_DIR. If a difference is found, this script exits
# with an error.
if [[ ! -z "$TESTING" ]]; then
	echo "Comparing $GENERATE_DIR with $SITE_DIR..."
	diff -r "$GENERATE_DIR" "$SITE_DIR"
fi

verbose && echo "Copying $GENERATE_DIR to $SITE_DIR"
cp -rf "${GENERATE_DIR}/." "$SITE_DIR"
