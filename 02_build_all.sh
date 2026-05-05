#!/bin/bash

set -e

for TAG in `ls -1 Dockerfile.* | cut -d. -f2`; do
#  echo "Building ${TAG} ..."
  IMAGE="ghcr.io/fullaxx/fbpanel_builder:${TAG}"
  if [ "$1" == "pull" ]; then
    docker pull "${IMAGE}"
  else
    ./tag_build.sh "${TAG}" &
  fi
done

wait
