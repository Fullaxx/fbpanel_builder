#!/bin/bash

for FILE in Dockerfile.*; do
  grep '^FROM ' ${FILE} | awk '{print $2}' | xargs docker pull
done
