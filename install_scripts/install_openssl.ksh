#! /bin/ksh
set -e

cd $PROOT/src
export OPENSSL=openssl-1.0.2g    #put latest release here
tar xvf download/$OPENSSL.tar.gz
cd $OPENSSL
#might want to make myconfigure again with the below
./config --prefix=$PROOT \
        --openssldir=$PROOT/etc/ssl \
        --libdir=lib \
        shared \
        zlib-dynamic \
        -L$PROOT/lib \
        -I$PROOT/include

make
make install

