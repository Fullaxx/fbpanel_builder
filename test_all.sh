#!/bin/bash

set -e

TAGS="noble jammy focal trixie bookworm bullseye"

for TAG in ${TAGS}; do
  echo "Testing ${TAG} ..."
  IMAGE="ghcr.io/fullaxx/fbpanel_builder:${TAG}"
  docker run -it --rm -v ./scripts:/scripts ${IMAGE} /scripts/compile_fullaxx_berte_fbpanel3.sh
  docker run -it --rm -v ./scripts:/scripts ${IMAGE} /scripts/compile_eleksir_mainline.sh
done
