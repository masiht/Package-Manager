#!/bin/ksh 

set -e

#untar memcached
cd $PROOT/src
tar xvf download/memcached-1.4.25.tar.gz

cd memcached-1.4.25
./configure
make
make install
