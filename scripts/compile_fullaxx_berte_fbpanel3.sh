#!/bin/bash

set -e

git clone -b python3 https://github.com/Fullaxx/berte-fbpanel3.git code
cd code/
./configure
make -j
