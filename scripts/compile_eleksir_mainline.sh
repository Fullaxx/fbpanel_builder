#!/bin/bash

set -e

git clone -b mainline https://github.com/eleksir/fbpanel.git code

cd code/; mkdir build; cd build

cmake \
-DCMAKE_INSTALL_PREFIX=/usr \
-DCMAKE_INSTALL_LIBDIR=lib \
..

make -j

/scripts/make_package.sh
