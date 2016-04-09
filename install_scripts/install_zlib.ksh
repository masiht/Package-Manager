#!/bin/ksh 
set -e

cd $PROOT/src
tar xvf download/zlib-1.2.8.tar.gz
cd zlib-1.2.8
./configure --prefix=$PROOT
make
make install

