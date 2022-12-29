#!/bin/bash

# I don't understand why this just vanishes.
export PATH=/usr/bin:$PATH

./autogen.sh
./configure $CI_SECP_FLAGS --enable-module-schnorrsig --enable-experimental
make
make check

$CI_SECP_INSTALL_CMD make install
