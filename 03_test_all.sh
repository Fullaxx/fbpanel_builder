#!/bin/bash

set -e

for TAG in `ls -1 Dockerfile.* | cut -d. -f2`; do
  echo "Testing ${TAG} ..."
  ./tag_test.sh "${TAG}"
done
