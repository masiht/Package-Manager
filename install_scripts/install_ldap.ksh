#!/bin/ksh 

set -e

#untar 
cd $PROOT/src
tar xvf download/db-5.3.28.tar.gz 
cd db-5.3.28
./dist/configure --prefix=$PROOT
make
make install

# OPENLDAP
cd $PROOT/src
tar xvf download/openldap-2.4.44.tar
cd openldap-2.4.44
export LDFLAGS="-L$PROOT/lib"
export CPPFLAGS="-I$PROOT/include"
export LD_LIBRARY_PATH="$PROOT/lib"
./configure --prefix=$PROOT
make
make depend
make install

# install  php
cd $PROOT/src/php*
./configure --prefix=$PROOT --with-libxml-dir=$PROOT --enable-sockets --enable-mbstring \
         --with-zlib-dir=$PROOT --enable-zip \
         --with-apxs2=$PROOT/apache2/bin/apxs --with-kerberos \
         --with-oci8=instantclient,$PROOT/src/instantclient \
         --with-curl=$PROOT --with-openssl=$PROOT \
         --with-ldap=/opt/app/workload/ucomm/local

make
make install
cp php.ini-development $PROOT/lib/php.ini

