#!/bin/bash

# TAGS="noble jammy focal trixie bookworm bullseye fedora43"

for TAG in `ls -1 Dockerfile.* | cut -d. -f2`; do
#  echo "Building ${TAG} ..."
  IMAGE="ghcr.io/fullaxx/fbpanel_builder:${TAG}"
  docker build -f Dockerfile.${TAG} -t "${IMAGE}" . &
done

wait
