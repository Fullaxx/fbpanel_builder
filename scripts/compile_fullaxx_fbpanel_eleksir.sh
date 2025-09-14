#!/bin/bash

set -e

git clone https://github.com/Fullaxx/fbpanel_eleksir.git code
cd code/; mkdir build; cd build

cmake \
-DCMAKE_INSTALL_PREFIX=/usr \
-DCMAKE_INSTALL_LIBDIR=lib \
..

make -j

/scripts/make_package.sh
