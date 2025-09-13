#!/bin/bash

set -e

git clone https://github.com/Fullaxx/fbpanel_eleksir.git code
cd code/
mkdir build
cd build
cmake ..
make -j
