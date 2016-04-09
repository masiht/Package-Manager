#!/bin/ksh 

set -e

#untar php
cd $PROOT/src
tar xvf download/php-5.5.6.tar.gz

#fix libxml2
cd $PROOT/src
tar xvf download/libxml2-2.9.1.tar.gz
cd libxml2-2.9.1
./configure --prefix=$PROOT

cat Makefile | grep -v 'PYTHON_SUBDIR = python' > Makefile.tmp
mv Makefile Makefile.bak
mv Makefile.tmp Makefile

make
make install


# install  php
cd $PROOT/src/php*
./configure --prefix=$PROOT --with-libxml-dir=$PROOT --enable-sockets\
         --with-apxs2=$PROOT/apache2/bin/apxs --with-kerberos \
         --with-oci8=instantclient,$PROOT/src/instantclient \
         --with-curl=$PROOT --with-openssl=$PROOT \
         --enable-memcache

make
make install
cp php.ini-development $PROOT/lib/php.ini

