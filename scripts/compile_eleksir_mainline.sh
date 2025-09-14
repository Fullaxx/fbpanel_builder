#!/bin/bash

set -e

git clone -b mainline https://github.com/eleksir/fbpanel.git code

cd code/; mkdir build; cd build

cmake \
-DCMAKE_INSTALL_PREFIX=/usr \
-DCMAKE_INSTALL_LIBDIR=lib \
..

make -j

mkdir /tmp/fbpanel
make install DESTDIR=/tmp/fbpanel
gzip -9 /tmp/fbpanel/usr/share/man/man1/fbpanel.1
( cd /tmp/fbpanel; tar cvf /tmp/fbpanel.tar * )
