#!/bin/bash

set -e

git clone -b mainline https://github.com/eleksir/fbpanel.git code
cd code/
mkdir build
cd build
cmake ..
make -j
