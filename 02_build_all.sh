#!/bin/bash

for TAG in `ls -1 Dockerfile.* | cut -d. -f2`; do
#  echo "Building ${TAG} ..."
  IMAGE="ghcr.io/fullaxx/fbpanel_builder:${TAG}"
  if [ "$1" == "pull" ]; then
    docker pull "${IMAGE}"
  else
    docker build -f Dockerfile.${TAG} -t "${IMAGE}" . &
  fi
done

wait
