#!/bin/ksh 

set -e

#untar memcached-2.2.0
cd $PROOT/src
tar xvf download/memcached-2.2.0.tgz
phpize
./configure --with-php-config=/opt/app/workload/ucomm/local/bin/php-config \
            --prefix=$PROOT \
            --with-zlib-dir=$PROOT \
            --with-libmemcached-dir=$PROOT \
            --disable-memcached-sasl

make
make install
