#!/bin/ksh 

set -e

cd $PROOT/src
tar xvf download/bzip2-1.0.6.tar.gz
cd bzip2-1.0.6
make install PREFIX=$PROOT

