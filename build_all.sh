#!/bin/bash

TAGS="noble jammy focal trixie bookworm bullseye"

for TAG in ${TAGS}; do
  docker build -f Dockerfile.${TAG} -t "fullaxx/fbpanel_builder:${TAG}" .
done
