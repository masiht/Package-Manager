#!/bin/ksh 
set -e

cd $UROOT/data
mkdir -p php_sessions
cp $PROOT/src/php-5.5.6/ext/session/mod_files.sh . 
chmod +x mod_files.sh
./mod_files.sh php_sessions 2 5
rm mod_files.sh


#cp $PROOT/lib/php.ini $PROOT/lib/php.ini.orig
#cp $PROOT/src/overwrites/php.ini $PROOT/lib/php.ini 

