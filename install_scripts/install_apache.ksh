#!/bin/ksh 

set -e

cd $PROOT/src
tar xvf download/httpd-2.4.7.tar.bz2
rm -f apache2
ln -s httpd-2.4.7 apache2

#apr (apr and apr-util)
cd ./apache2/srclib
tar xvf ../../download/apr-util-1.5.3.tar.gz
rm -rf apr-util
mv apr-util-1.5.3 apr-util
  
tar xvf ../../download/apr-1.5.0.tar.gz
rm -rf apr
mv apr-1.5.0 apr

#pcre
cd ../..
tar xvf download/pcre-8.34.tar.gz

cd $PROOT/src/pcre-8.34
CFLAGS=-I$PROOT/include
LDFLAGS=-L$PROOT/lib
export CFLAGS LDFLAGS
# you may create a file called myconfigure with the following
# to make it easy to rebuild later (make sure you chmod +x the file)
./configure --prefix=$PROOT \
         --enable-unicode-properties       \
         --enable-pcre16                   \
         --enable-pcre32                   \
         --enable-pcregrep-libz            \
         --enable-pcregrep-libbz2          \
         --disable-static     


#skip the following two options due to excessive issues
#  --enable-pcretest-libreadline     (this was removed)
#  --docdir=$PROOT/doc/pcre-8.34  (this was removed)

make
make install

cd $PROOT/src/apache2

./configure   --with-included-apr \
    --with-pcre=$PROOT/bin/pcre-config \
    --prefix=$PROOT/apache2 \
    --enable-so \
    --enable-rewrite \
    --enable-setenvif \
    --with-z=$PROOT \
    --enable-mime \
    --enable-deflate \
    --enable-ssl \
    --with-ssl=$PROOT \
    --enable-headers      

make
make install
cd $PROOT/bin

rm -f apachectl
ln -s ../apache2/bin/apachectl apachectl

#cp $PROOT/apache2/conf/httpd.conf $PROOT/apache2/conf/httpd.conf.orig
#cp $PROOT/src/overwrites/httpd.conf $PROOT/apache2/conf/httpd.conf

