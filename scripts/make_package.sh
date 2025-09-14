#!/bin/bash

set -e

mkdir /tmp/fbpanel
make install DESTDIR=/tmp/fbpanel
gzip -9 /tmp/fbpanel/usr/share/man/man1/fbpanel.1
( cd /tmp/fbpanel; tar cvf /tmp/fbpanel.tar * )
