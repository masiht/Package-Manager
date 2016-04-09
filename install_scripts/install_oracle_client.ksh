#!/bin/ksh 

set -e

cd $PROOT/src
unzip download/instantclient-basic-linux.x64-12.1.0.1.0.zip
unzip download/instantclient-sdk-linux.x64-12.1.0.1.0.zip
unzip download/instantclient-sqlplus-linux.x64-12.1.0.1.0.zip

ln -s instantclient_12_1 instantclient
cd instantclient
ln -s libclntsh.so.12.1 libclntsh.so

