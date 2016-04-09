#!/bin/ksh 

set -e

#untar libmemcached
cd $PROOT/src
tar xvf download/libmemcached-1.0.18.tar.gz
cd libmemcached-1.0.18
./configure --prefix=$PROOT
make
make install
