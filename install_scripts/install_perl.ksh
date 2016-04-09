#!/bin/ksh 

set -e

cd $PROOT/src
tar xvf download/perl-5.22.0.tar.gz
cd perl-5.22.0
./Configure -des -Dprefix=$PROOT/localperl
make
make install

