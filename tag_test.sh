#!/bin/bash

set -e

if [ -z "$1" ]; then
  >&2 echo "$0: <TAG>"
  exit 1
fi

TAG="$1"
IMAGE="ghcr.io/fullaxx/fbpanel_builder:${TAG}"
docker run -it --rm -v ./scripts:/scripts ${IMAGE} /scripts/compile_fullaxx_fbpanel.sh
