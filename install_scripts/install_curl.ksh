#!/bin/ksh 
set -e

cd $PROOT/src
export PKG_CONFIG_PATH=$PROOT/lib/pkgconfig
tar xvf download/curl-7.33.0.tar.gz
cd curl-7.33.0
./configure --prefix=$PROOT --with-ssl
make
make install

