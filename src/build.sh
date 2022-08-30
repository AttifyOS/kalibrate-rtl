#!/bin/sh

set -e
apk update
apk add alpine-sdk fftw-dev libtool automake autoconf librtlsdr-dev bash
git clone https://github.com/steve-m/kalibrate-rtl
cd kalibrate-rtl
./bootstrap
./configure --prefix=/root/build/  LDFLAGS=-static
make && make install