#!/bin/bash

set -e

mkdir /tmp/fbpanel
make install DESTDIR=/tmp/fbpanel
#tree /tmp/fbpanel
( cd /tmp/fbpanel; tar cvf /tmp/fbpanel.tar * )
