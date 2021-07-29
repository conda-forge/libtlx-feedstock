#!/bin/bash

mkdir build && cd build

cmake \
  -DCMAKE_PREFIX_PATH="$PREFIX" \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DCMAKE_INSTALL_LIBDIR=lib \
  ${CMAKE_ARGS} ..
make -j$CPU_COUNT
make install
