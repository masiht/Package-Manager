#!/bin/ksh 

set -e

#untar nginx
cd $PROOT/src
tar xvf download/nginx-0.1.0.tar.gz
cd nginx-0.1.0

./configure --with-http_ssl_module \
            --with-http_stub_status_module \
            --without-mail_pop3_module \
            --without-mail_imap_module \
            --without-mail_smtp_module  

make install BATCH=yes
