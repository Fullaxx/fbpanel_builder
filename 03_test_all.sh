#!/bin/bash

set -e

for TAG in `ls -1 Dockerfile.* | cut -d. -f2`; do
  echo "Testing ${TAG} ..."
  IMAGE="ghcr.io/fullaxx/fbpanel_builder:${TAG}"
#  docker run -it --rm -v ./scripts:/scripts ${IMAGE} /scripts/compile_eleksir_mainline.sh
#  docker run -it --rm -v ./scripts:/scripts ${IMAGE} /scripts/compile_fullaxx_fbpanel_eleksir.sh
#  docker run -it --rm -v ./scripts:/scripts ${IMAGE} /scripts/compile_fullaxx_fbpanel3_berte.sh
  docker run -it --rm -v ./scripts:/scripts ${IMAGE} /scripts/compile_fullaxx_fbpanel.sh
done
