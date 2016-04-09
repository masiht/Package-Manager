#!/bin/ksh 
set -e

export UROOT=/opt/app/workload/ucomm
export PROOT=$UROOT/local
export http_proxy=http://one.proxy.att.com:8080/
export https_proxy=http://one.proxy.att.com:8080/

mkdir -p $UROOT
mkdir -p $PROOT
mkdir -p $PROOT/src
mkdir -p $PROOT/repos
#mkdir -p $PROOT/src/download

if [ ! -e "$PROOT/src/download" ]; then
  ln -s ~/server-setup/download $PROOT/src/download
fi

if [ ! -e "$PROOT/src/install_scripts" ]; then
  ln -s ~/server-setup/install_scripts $PROOT/src/install_scripts
fi

if [ ! -e "$PROOT/src/overwrites" ]; then
  ln -s ~/server-setup/overwrites $PROOT/src/overwrites
fi

cp $PROOT/src/overwrites/kshrc ~/.kshrc

print "success $0"
