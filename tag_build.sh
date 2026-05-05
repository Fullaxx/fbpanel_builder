#!/bin/bash

set -e

if [ -z "$1" ]; then
  >&2 echo "$0: <TAG>"
  exit 1
fi

TAG="$1"
DFILE="Dockerfile.${TAG}"

if [ ! -f "${DFILE}" ]; then
  >&2 echo "${DFILE} does not exist!"
  exit 2
fi

IMAGE="ghcr.io/fullaxx/fbpanel_builder:${TAG}"
docker build -f "${DFILE}" -t "${IMAGE}" .
