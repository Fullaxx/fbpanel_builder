#!/bin/bash

set -e

git clone https://github.com/Fullaxx/fbpanel3_berte.git code

cd code/

./configure \
--prefix=/usr \
--libdir=lib \
--mandir=/usr/share/man/man1

make -j

/scripts/make_package.sh
