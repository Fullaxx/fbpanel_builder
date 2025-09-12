#!/bin/bash

set -e

TAGS="noble jammy focal trixie bookworm bullseye"

for TAG in ${TAGS}; do
  echo "Testing ${TAG} ..."
  IMAGE="ghcr.io/fullaxx/fbpanel_builder:${TAG}"
  docker run -it --rm -v ./compile_code.sh:/compile_code.sh ${IMAGE} /compile_code.sh
done
