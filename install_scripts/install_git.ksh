#!/bin/ksh 

set -e

cd $PROOT/src
tar xvf download/git-2.4.9.tar.gz
cd git-2.4.9

make clean
./configure --prefix=$PROOT  --with-curl=$PROOT
cat config.status | grep -v NO_CURL=YesPlease > config.status.bak2
mv config.status config.status.bak
mv config.status.bak2 config.status

make LDFLAGS="-L/opt/app/workload/ucomm/local/lib" CFLAGS="-I/opt/app/workload/ucomm/local/include -I/opt/app/workload/ucomm/local/include/openssl" prefix=$PROOT PERL_PATH=$PROOT/localperl/bin/perl NO_GETTEXT=1 CURLDIR=$PROOT install
