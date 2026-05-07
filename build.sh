#!/bin/bash
cd `dirname $0`
#
apt install libglib2.0-dev
apt install libevent-dev
apt install openssl libssl-dev
#
rm -rf ./build
mkdir ./build
cd ./build
cmake -DENABLE_COVERAGE=ON -DENABLE_SSL=ON  -DDOWNLOAD_HIREDIS=ON -DDISABLE_TESTS=OFF ..
make && make install
cd ..
#

