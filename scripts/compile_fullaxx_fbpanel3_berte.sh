#!/bin/bash

set -e

git clone https://github.com/Fullaxx/fbpanel3_berte.git code

cd code/

./configure \
--prefix=/usr \
--libdir=lib \
--mandir=/usr/share/man/man1

make -j

mkdir /tmp/fbpanel
make install DESTDIR=/tmp/fbpanel
gzip -9 /tmp/fbpanel/usr/share/man/man1/fbpanel.1
( cd /tmp/fbpanel; tar cvf /tmp/fbpanel.tar * )
