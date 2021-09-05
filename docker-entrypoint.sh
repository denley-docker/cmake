#!/usr/bin/env bash

set -ex

cmake --version
mkdir -p build
cd build
cmake ../test
make -j$(nproc --all)
./cmake_test
